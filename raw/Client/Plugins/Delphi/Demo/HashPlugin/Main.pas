unit Main;

interface
  //Для подключения библиотеки к сервису хеширования необходимо:
  // 1. Переместить dll в каталог общих данных по пути
        // %LOODSMAN_COMMON_DATA%\PluginStore\Модули расчета хэша
  // 2. Настроить cписок поддерживаемых функций для библиотек
       //%LOODSMAN_COMMON_DATA%\Settings\Common\HashAlgorithms.ini
        //пример структуры HashAlgorithms.ini
        //[ALG]
        //SHA256 = SHA2_HashPlugin.dll
        //SHA384 = SHA2_HashPlugin.dll
        //SHA512 = SHA2_HashPlugin.dll
        //SHA512_224 = SHA2_HashPlugin.dll
        //SHA512_256 = SHA2_HashPlugin.dll



  /// <summary>
  /// Функция для возвртата поддерживаемых алгоритмов хеширования в Dll
  /// </summary>
  /// <returns>Список алгоритмов через , </returns>
  function GetAlgIDs: PWideChar; stdcall;
  /// <summary>
  /// Проверка алгоритма на вхождение в dll
  /// </summary>
  /// <param name="AlgID">Название алгоритма</param>
  function Supports(AlgID : String):integer; stdcall;
  /// <summary>
  /// Вычислить хеш-сумму файла
  /// </summary>
  /// <param name="AlgID">Название алгоритма</param>
  /// <param name="FileName">Путь к файлу</param>
  /// <returns></returns>
  function GetHash(AlgID, FileName : String): PWideChar; stdcall;
  /// <summary>
  /// Расшифрованное название алгоритма
  /// </summary>
  /// <param name="AlgID">Название алгоритма</param>
  function GetAlgName(AlgID:String): PWideChar; stdcall;

  function GetPluginInfo: PWideChar; stdcall;
implementation
 uses System.SysUtils,System.Hash;

const
  coSHA256     = 'SHA256';
  coSHA384     = 'SHA384';
  coSHA512     = 'SHA512';
  coSHA512_224 = 'SHA512_224';
  coSHA512_256 = 'SHA512_256';




  function GetAlgIDs: PWideChar; stdcall;
  begin
    result :=  coSHA256     + ', ' +
               coSHA384     + ', ' +
               coSHA512     + ', ' +
               coSHA512_224 + ', ' +
               coSHA512_256 + ', ';
  end;

  function Supports(AlgID: string): integer; stdcall; export;
  begin
    if SameText(AlgID, coSHA256) or
       SameText(AlgID, coSHA384) or
       SameText(AlgID, coSHA512) or
       SameText(AlgID, coSHA512_224) or
       SameText(AlgID, coSHA512_256)
    then
      Result := 1
    else
      Result := 0;
  end;

  function GetHash(AlgID, FileName: string): PWideChar; stdcall; export;
  begin
    if SameText(AlgID, coSHA256)
    then
      Result := PWideChar(THashSHA2.GetHashStringFromFile(FileName,SHA224))
    else if SameText(AlgID, coSHA384)
    then
      Result := PWideChar(THashSHA2.GetHashStringFromFile(FileName,SHA384))
    else if SameText(AlgID, coSHA512)
    then
      Result := PWideChar(THashSHA2.GetHashStringFromFile(FileName,SHA512))
    else if SameText(AlgID, coSHA512_224)
    then
      Result := PWideChar(THashSHA2.GetHashStringFromFile(FileName,SHA512_224))
    else if SameText(AlgID, coSHA512_256)
    then
      Result := PWideChar(THashSHA2.GetHashStringFromFile(FileName,SHA512_256))
    else
      Result := '';
  end;

  function GetAlgName(AlgID:String): PWideChar; stdcall;
  begin
    Result := '';
    if Supports(AlgID) = 1 then
      Result := PWideChar(StringReplace(AlgID,
                                        'SHA',
                                        'Secure Hash Algorithm ',
                                        [rfReplaceAll, rfIgnoreCase]
                                        )
                          );
  end;

  function GetPluginInfo: PWideChar; stdcall;
  begin
    result := 'Library that implements the SHA-2 algorithms'
  end;
end.
