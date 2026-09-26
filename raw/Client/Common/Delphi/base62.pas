unit base62;

interface

const
  BASE_62 = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  wbase   = 62;
{**
* Преобразование десятичного целого числа в строку числа по основанию base.
**}
function Num2Base(const num: Longint): string;

{**
* Преобразование строкового представление числа по основанию base в целое десятичное число.
**}
function Base2Num(const numStr: string): Longint;

implementation

function Num2Base(const num: Longint): string;
var n, rest: Longint;
begin
  n      := num;
  Result := '';
  repeat
    rest   := n mod wbase;
    n      := n div wbase;
    Result := BASE_62[rest + 1] + Result;
  until n = 0;
end;

function Base2Num(const numStr: string): Longint;
var i, ext: Longint;
  k       : Byte;
begin
  Result := 0;
  ext    := 1;
  for i  := Length(numStr) downto 1 do
  begin
    k      := Pos(numStr[i], BASE_62) - 1;
    Result := Result + k * ext;
    ext    := ext * wbase;
  end;
end;

end.
