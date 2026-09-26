unit Base64Encoder;

//------------------------------------------------------------------------------
// Лукошков 15.11.2016.
// переработал модуль для полноценной работы с WideString
// все используемые функции сохранили полную совместимость
// добавлены функции Ansi->Ansi Ansi->Wide Wide->Ansi Wide->Wide
//---

{$IFDEF CONDITIONALEXPRESSIONS}
{$IF CompilerVersion >= 18}
{$DEFINE HAS_INLINE}
{$IFEND}
{$ENDIF}

interface

//Работа со строками

// кодирование - ранее существовавшие
function MimeEncodeString(const S: AnsiString): AnsiString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
function MimeEncodeStringW(const S: WideString): AnsiString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
function MimeEncodeStringNoCRLF(const S: AnsiString): AnsiString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
function MimeEncodeStringNoCRLFW(const S: WideString): AnsiString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
// все варианты кодирования
function MimeEncodeStringAtoA(const S: AnsiString; BreakLines: Boolean = True): AnsiString;
function MimeEncodeStringAtoW(const S: AnsiString; BreakLines: Boolean = True): WideString;
function MimeEncodeStringWtoA(const S: WideString; BreakLines: Boolean = True): AnsiString;
function MimeEncodeStringWtoW(const S: WideString; BreakLines: Boolean = True): WideString;

// декодирование - ранее существовавшие
function MimeDecodeString(const S: AnsiString): AnsiString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
function MimeDecodeStringW(const S: AnsiString): WideString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
// все варианты декодирования
function MimeDecodeStringAtoA(const S: AnsiString): AnsiString;
function MimeDecodeStringAtoW(const S: AnsiString): WideString;
function MimeDecodeStringWtoA(const S: WideString): AnsiString;
function MimeDecodeStringWtoW(const S: WideString): WideString;

//Функции размера
function MimeEncodedSize(const InputSize: Cardinal): Cardinal;
function MimeEncodedSizeNoCRLF(const InputSize: Cardinal): Cardinal;
function MimeDecodedSize(const InputSize: Cardinal): Cardinal;

//Кодирвание
procedure MimeEncode(const InputBuffer; const InputByteCount: Cardinal; out OutputBuffer); {$IFDEF HAS_INLINE}inline; {$ENDIF}
procedure MimeEncodeNoCRLF(const InputBuffer; const InputByteCount: Cardinal; out OutputBuffer); {$IFDEF HAS_INLINE}inline; {$ENDIF}
procedure MimeEncodeUniversal(const InputBuffer; const InputByteCount: Cardinal;
  out OutputBuffer; const OutputElementSize: Cardinal; BreakLines: Boolean = True);

//Раскодирование
function MimeDecode(const InputBuffer; const InputBytesCount: Cardinal; out OutputBuffer): Cardinal; {$IFDEF HAS_INLINE}inline; {$ENDIF}
function MimeDecodeUniversal(const InputBuffer; const InputCount, InputElementSize: Cardinal;
  out OutputBuffer): Cardinal;

const
  { В соответствии с RFC 2045, размер по умолчанию равен 76.
    Если нужно изменить, но значение должно быть кратно 4. }
  MIME_ENCODED_LINE_BREAK = 76;

  {  }
  MIME_DECODED_LINE_BREAK = MIME_ENCODED_LINE_BREAK div 4 * 3;

implementation

const
  { Таблица кодирования }
  MIME_ENCODE_TABLE: array [0 .. 63] of Byte = (
    065, 066, 067, 068, 069, 070, 071, 072, //  00 - 07
    073, 074, 075, 076, 077, 078, 079, 080, //  08 - 15
    081, 082, 083, 084, 085, 086, 087, 088, //  16 - 23
    089, 090, 097, 098, 099, 100, 101, 102, //  24 - 31
    103, 104, 105, 106, 107, 108, 109, 110, //  32 - 39
    111, 112, 113, 114, 115, 116, 117, 118, //  40 - 47
    119, 120, 121, 122, 048, 049, 050, 051, //  48 - 55
    052, 053, 054, 055, 056, 057, 043, 047); // 56 - 63

  MIME_PAD_CHAR = Byte('=');

  MIME_DECODE_TABLE: array [Byte] of Cardinal = (
    255, 255, 255, 255, 255, 255, 255, 255, //   0 -   7
    255, 255, 255, 255, 255, 255, 255, 255, //   8 -  15
    255, 255, 255, 255, 255, 255, 255, 255, //  16 -  23
    255, 255, 255, 255, 255, 255, 255, 255, //  24 -  31
    255, 255, 255, 255, 255, 255, 255, 255, //  32 -  39
    255, 255, 255, 062, 255, 255, 255, 063, //  40 -  47
    052, 053, 054, 055, 056, 057, 058, 059, //  48 -  55
    060, 061, 255, 255, 255, 255, 255, 255, //  56 -  63
    255, 000, 001, 002, 003, 004, 005, 006, //  64 -  71
    007, 008, 009, 010, 011, 012, 013, 014, //  72 -  79
    015, 016, 017, 018, 019, 020, 021, 022, //  80 -  87
    023, 024, 025, 255, 255, 255, 255, 255, //  88 -  95
    255, 026, 027, 028, 029, 030, 031, 032, //  96 - 103
    033, 034, 035, 036, 037, 038, 039, 040, // 104 - 111
    041, 042, 043, 044, 045, 046, 047, 048, // 112 - 119
    049, 050, 051, 255, 255, 255, 255, 255, // 120 - 127
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255,
    255, 255, 255, 255, 255, 255, 255, 255);

type
  TByte4 = packed record
    b1: Byte;
    b2: Byte;
    b3: Byte;
    b4: Byte;
  end;

  PByte3 = ^TByte3;

  TByte3 = packed record
    b1: Byte;
    b2: Byte;
    b3: Byte;
  end;

{ ---------------------------------------------------------------------------- }
{ Строки Кодирование/Раскодирование
{ ---------------------------------------------------------------------------- }
{$IFDEF UNICODE}
  {$WARN IMPLICIT_STRING_CAST OFF}
  {$WARN IMPLICIT_STRING_CAST_LOSS OFF}
{$ENDIF}
function MimeEncodeString(const S: AnsiString): AnsiString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
begin
  Result := MimeEncodeStringAtoA(S, True);
end;
{$IFDEF UNICODE}
  {$WARN IMPLICIT_STRING_CAST ON}
  {$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$ENDIF}

//------------------------------------------------------------------------------
//Добавил Ivanov 18.10.2011.
//Тоже что и MimeEncodeString только для WideString.
//На выходе AnsiString т.к. на выходе получаем символы находящиеся в первой
//половине таблицы
//---
function MimeEncodeStringW(const S: WideString): AnsiString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
begin
  Result := MimeEncodeStringWtoA(S, True);
end;

function MimeEncodeStringNoCRLFW(const S: WideString): AnsiString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
begin
  Result := MimeEncodeStringWtoA(S, False);
end;

{ ---------- }

function MimeEncodeStringNoCRLF(const S: AnsiString): AnsiString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
begin
  Result := MimeEncodeStringAtoA(S, False);
end;

function MimeEncodeStringAtoA(const S: AnsiString; BreakLines: Boolean = True): AnsiString;
var
  L, Size: Cardinal;
begin
  if Pointer(S) <> nil then
  begin
    L := Length(S);
    if BreakLines then
      Size := MimeEncodedSize(L)
    else
      Size := MimeEncodedSizeNoCRLF(L);
    SetLength(Result, Size);
    MimeEncodeUniversal(Pointer(S)^, L, Pointer(Result)^, 1, BreakLines);
  end
  else
    Result := '';
end;

function MimeEncodeStringAtoW(const S: AnsiString; BreakLines: Boolean = True): WideString;
var
  L, Size: Cardinal;
begin
  if Pointer(S) <> nil then
  begin
    L := Length(S);
    if BreakLines then
      Size := MimeEncodedSize(L)
    else
      Size := MimeEncodedSizeNoCRLF(L);
    SetLength(Result, Size);
    MimeEncodeUniversal(Pointer(S)^, L, Pointer(Result)^, SizeOf(WideChar), BreakLines);
  end
  else
    Result := '';
end;

function MimeEncodeStringWtoA(const S: WideString; BreakLines: Boolean = True): AnsiString;
var
  L, Size: Cardinal;
begin
  if Pointer(S) <> nil then
  begin
    L := Length(S) * SizeOf(WideChar);
    if BreakLines then
      Size := MimeEncodedSize(L)
    else
      Size := MimeEncodedSizeNoCRLF(L);
    SetLength(Result, Size);
    MimeEncodeUniversal(Pointer(S)^, L, Pointer(Result)^, 1, BreakLines);
  end
  else
    Result := '';
end;

function MimeEncodeStringWtoW(const S: WideString; BreakLines: Boolean = True): WideString;
var
  L, Size: Cardinal;
begin
  if Pointer(S) <> nil then
  begin
    L := Length(S) * SizeOf(WideChar);
    if BreakLines then
      Size := MimeEncodedSize(L)
    else
      Size := MimeEncodedSizeNoCRLF(L);
    SetLength(Result, Size);
    MimeEncodeUniversal(Pointer(S)^, L, Pointer(Result)^, SizeOf(WideChar), BreakLines);
  end
  else
    Result := '';
end;

{ ---------- }

function MimeDecodeString(const S: AnsiString): AnsiString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
begin
  Result := MimeDecodeStringAtoA(S);
end;

//------------------------------------------------------------------------------
//Добавил Ivanov 18.10.2011.
//Тоже что и MimeDecodeString только для WideString.
//На входе AnsiString т.к. на входе подаем символы находящиеся в первой
//половине таблицы
//---
{$IFDEF UNICODE}
  {$WARN IMPLICIT_STRING_CAST OFF}
  {$WARN IMPLICIT_STRING_CAST_LOSS OFF}
{$ENDIF}
function MimeDecodeStringW(const S: AnsiString): WideString; {$IFDEF HAS_INLINE}inline; {$ENDIF}
begin
  Result := MimeDecodeStringAtoW(S);
end;
{$IFDEF UNICODE}
  {$WARN IMPLICIT_STRING_CAST ON}
  {$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$ENDIF}

function MimeDecodeStringAtoA(const S: AnsiString): AnsiString;
var
  L: Cardinal;
begin
  if Pointer(S) <> nil then
  begin
    L := Length(S);
    SetLength(Result, MimeDecodedSize(L));
    L := MimeDecodeUniversal(Pointer(S)^, L, 1, Pointer(Result)^);
    SetLength(Result, L);
  end
  else
    Result := '';
end;

function MimeDecodeStringAtoW(const S: AnsiString): WideString;
var
  L: Cardinal;
begin
  if Pointer(S) <> nil then
  begin
    L := Length(S);
    SetLength(Result, MimeDecodedSize(L) div SizeOf(WideChar) + 1);
    L := MimeDecodeUniversal(Pointer(S)^, L, 1, Pointer(Result)^);
    SetLength(Result, (L + 1) div SizeOf(WideChar));
  end
  else
    Result := '';
end;

function MimeDecodeStringWtoA(const S: WideString): AnsiString;
var
  L: Cardinal;
begin
  if Pointer(S) <> nil then
  begin
    L := Length(S);
    SetLength(Result, MimeDecodedSize(L));
    L := MimeDecodeUniversal(Pointer(S)^, L, 2, Pointer(Result)^);
    SetLength(Result, L);
  end
  else
    Result := '';
end;

function MimeDecodeStringWtoW(const S: WideString): WideString;
var
  L: Cardinal;
begin
  if Pointer(S) <> nil then
  begin
    L := Length(S);
    SetLength(Result, MimeDecodedSize(L) div SizeOf(WideChar) + 1);
    L := MimeDecodeUniversal(Pointer(S)^, L, 2, Pointer(Result)^);
    SetLength(Result, (L + 1) div SizeOf(WideChar));
  end
  else
    Result := '';
end;

{ ---------------------------------------------------------------------------- }
{ Функуции определения размера
{ ---------------------------------------------------------------------------- }

function MimeEncodedSize(const InputSize: Cardinal): Cardinal;
begin
  if InputSize > 0 then
    Result := (InputSize + 2) div 3 * 4 + (InputSize - 1) div MIME_DECODED_LINE_BREAK * 2
  else
    Result := InputSize;
end;

{ ---------- }

function MimeEncodedSizeNoCRLF(const InputSize: Cardinal): Cardinal;
begin
  Result := (InputSize + 2) div 3 * 4;
end;

{ ---------- }

function MimeDecodedSize(const InputSize: Cardinal): Cardinal;
begin
  Result := (InputSize + 3) div 4 * 3;
end;

{ ---------------------------------------------------------------------------- }
{ Кодирование
{ ---------------------------------------------------------------------------- }

procedure MimeEncode(const InputBuffer; const InputByteCount: Cardinal; out OutputBuffer); {$IFDEF HAS_INLINE}inline; {$ENDIF}
begin
  MimeEncodeUniversal(InputBuffer, InputByteCount, OutputBuffer, 1, True);
end;

{ ---------- }

procedure MimeEncodeNoCRLF(const InputBuffer; const InputByteCount: Cardinal; out OutputBuffer); {$IFDEF HAS_INLINE}inline; {$ENDIF}
begin
  MimeEncodeUniversal(InputBuffer, InputByteCount, OutputBuffer, 1, False);
end;

procedure MimeEncodeUniversal(const InputBuffer; const InputByteCount: Cardinal;
  out OutputBuffer; const OutputElementSize: Cardinal; BreakLines: Boolean = True);
var
  B, InnerLimit, OuterLimit, OutputLineLength: Cardinal;
  InPtr: PByte3;
  OutPtr  : ^Byte;
  OutBytes: TByte4;
  procedure SaveOutputBuffer(B: Byte);
  var
    i: Integer;
  begin
    if BreakLines and (OutputLineLength >= MIME_ENCODED_LINE_BREAK) then
    begin
      OutputLineLength := 0;
      SaveOutputBuffer($0D);
      SaveOutputBuffer($0A);
      OutputLineLength := 0;
    end;
    OutPtr^ := B;
    Inc(OutPtr);
    for i := 2 to OutputElementSize do
    begin
      OutPtr^ := 0;
      Inc(OutPtr);
    end;
    Inc(OutputLineLength);
  end;

begin
  if InputByteCount = 0 then
    Exit;

  InPtr  := @InputBuffer;
  OutPtr := @OutputBuffer;

  OutputLineLength := 0;
  OuterLimit       := InputByteCount div 3 * 3;

  InnerLimit := Cardinal(InPtr);
  Inc(InnerLimit, OuterLimit);

  { Цикл для линии. }
  while Cardinal(InPtr) < InnerLimit do
  begin
    { Читаем 3 байта из InputBuffer. }
    B := InPtr^.b1;
    B := B shl 8;
    B := B or InPtr^.b2;
    B := B shl 8;
    B := B or InPtr^.b3;
    Inc(InPtr);
    { Пишем 4 байта во временный буфер (в обратной последовательности). }
    OutBytes.b4 := MIME_ENCODE_TABLE[B and $3F];
    B           := B shr 6;
    OutBytes.b3 := MIME_ENCODE_TABLE[B and $3F];
    B           := B shr 6;
    OutBytes.b2 := MIME_ENCODE_TABLE[B and $3F];
    B           := B shr 6;
    OutBytes.b1 := MIME_ENCODE_TABLE[B];
    // пишем временный буфер в OutputBuffer
    SaveOutputBuffer(OutBytes.b1);
    SaveOutputBuffer(OutBytes.b2);
    SaveOutputBuffer(OutBytes.b3);
    SaveOutputBuffer(OutBytes.b4);
  end;

  { Пишем данные и окончание. }
  case InputByteCount - OuterLimit of
    1:
      begin
        B           := InPtr^.b1;
        B           := B shl 4;
        OutBytes.b2 := MIME_ENCODE_TABLE[B and $3F];
        B           := B shr 6;
        OutBytes.b1 := MIME_ENCODE_TABLE[B];
        // пишем временный буфер в OutputBuffer
        SaveOutputBuffer(OutBytes.b1);
        SaveOutputBuffer(OutBytes.b2);
        SaveOutputBuffer(MIME_PAD_CHAR); { 2 байта в окончании. }
        SaveOutputBuffer(MIME_PAD_CHAR);
      end;
    2:
      begin
        B           := InPtr^.b1;
        B           := B shl 8;
        B           := B or InPtr^.b2;
        B           := B shl 2;
        OutBytes.b3 := MIME_ENCODE_TABLE[B and $3F];
        B           := B shr 6;
        OutBytes.b2 := MIME_ENCODE_TABLE[B and $3F];
        B           := B shr 6;
        OutBytes.b1 := MIME_ENCODE_TABLE[B];
        // пишем временный буфер в OutputBuffer
        SaveOutputBuffer(OutBytes.b1);
        SaveOutputBuffer(OutBytes.b2);
        SaveOutputBuffer(OutBytes.b3);
        SaveOutputBuffer(MIME_PAD_CHAR); { 1 байт в окончании. }
      end;
  end;
end;

{ ---------------------------------------------------------------------------- }
{ Раскодирование
{ ---------------------------------------------------------------------------- }

function MimeDecode(const InputBuffer; const InputBytesCount: Cardinal; out OutputBuffer): Cardinal; {$IFDEF HAS_INLINE}inline; {$ENDIF}
begin
  Result := MimeDecodeUniversal(InputBuffer, InputBytesCount, 1, OutputBuffer);
end;

function MimeDecodeUniversal(const InputBuffer; const InputCount, InputElementSize: Cardinal; out OutputBuffer): Cardinal;
var
  lByteBuffer, lByteBufferSpace, RestInput, C, i: Cardinal;
  InPtr, OuterLimit: ^Byte;
  OutPtr: PByte3;
begin
  if InputCount > 0 then
  begin
    InPtr                 := @InputBuffer;
    PAnsiChar(OuterLimit) := PAnsiChar(InPtr) + InputCount * InputElementSize;
    OutPtr                := @OutputBuffer;
    lByteBuffer           := 0;
    lByteBufferSpace      := 4;
    while InPtr <> OuterLimit do
    begin
      { Читаем из InputBuffer. }
      C := MIME_DECODE_TABLE[InPtr^];
      Inc(InPtr);
      // Читаем из InputBuffer оставшиеся байты. они должны быть 0, иначе игнорируем весь элемент
      RestInput := 0;
      for i := 2 to InputElementSize do
      begin
        RestInput := RestInput + InPtr^;
        Inc(InPtr);
      end;
      if RestInput > 0 then
        Continue;
      if C = $FF then
        Continue;
      lByteBuffer := lByteBuffer shl 6;
      lByteBuffer := lByteBuffer or C;
      Dec(lByteBufferSpace);
      { Прочитали 4 байта из  InputBuffer? }
      if lByteBufferSpace <> 0 then
        Continue;

      { Пишем 3 байта в OutputBuffer (в обратной последовательности). }
      OutPtr^.b3  := Byte(lByteBuffer);
      lByteBuffer := lByteBuffer shr 8;
      OutPtr^.b2  := Byte(lByteBuffer);
      lByteBuffer := lByteBuffer shr 8;
      OutPtr^.b1  := Byte(lByteBuffer);
      lByteBuffer := 0;
      Inc(OutPtr);
      lByteBufferSpace := 4;
    end;
    Result := Cardinal(OutPtr) - Cardinal(@OutputBuffer);
    case lByteBufferSpace of
      1:
        begin
          lByteBuffer := lByteBuffer shr 2;
          OutPtr^.b2  := Byte(lByteBuffer);
          lByteBuffer := lByteBuffer shr 8;
          OutPtr^.b1  := Byte(lByteBuffer);
          Result      := Result + 2;
        end;
      2:
        begin
          lByteBuffer := lByteBuffer shr 4;
          OutPtr^.b1  := Byte(lByteBuffer);
          Result      := Result + 1;
        end;
    end;
  end
  else
    Result := 0;
end;

end.
