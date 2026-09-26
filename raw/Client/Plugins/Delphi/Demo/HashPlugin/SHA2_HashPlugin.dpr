library SHA2_HashPlugin;

{ Демо библиотека реализующая алгоритм SHA2 хеширования файла
  для подключения к сервису Хеширования(ILodsmanHashedData) }

uses
  System.SysUtils,
  System.Classes,
  Main in 'Main.pas';

exports
  GetAlgIDs,
  Supports,
  GetHash,
  GetAlgName,
  GetPluginInfo;

  {$R *.res}

begin

end.
