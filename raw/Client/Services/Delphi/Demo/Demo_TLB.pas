unit Demo_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 31.01.2018 10:27:45 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Projects\SVN-Bin\trunk\Program Files\Ascon\Loodsman\SDK\Client\Services\Delphi\Demo\Demo.tlb (1)
// LIBID: {36DEEBBB-BDDA-4F0D-BAE8-5F80D0562C60}
// LCID: 0
// Helpfile: 
// HelpString: Demo Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 DataProvider, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\DataProvider.dll)
//   (3) v1.0 Loodsman, (C:\Program Files (x86)\ASCON\Loodsman\Client\Loodsman.exe)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, DataProvider_TLB, Graphics, Loodsman_TLB, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  DemoMajorVersion = 1;
  DemoMinorVersion = 0;

  LIBID_Demo: TGUID = '{36DEEBBB-BDDA-4F0D-BAE8-5F80D0562C60}';

  IID_IDemoService: TGUID = '{8E4B35DD-73A6-4440-9EE5-9EF1CC514672}';
  CLASS_DemoService: TGUID = '{5588910F-88C0-40CC-BBDF-00BE40A432CD}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IDemoService = interface;
  IDemoServiceDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  DemoService = IDemoService;


// *********************************************************************//
// Interface: IDemoService
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8E4B35DD-73A6-4440-9EE5-9EF1CC514672}
// *********************************************************************//
  IDemoService = interface(IDispatch)
    ['{8E4B35DD-73A6-4440-9EE5-9EF1CC514672}']
    procedure ShowNotificationsLogger; safecall;
    function GetDataFromCashe: IDataSet; safecall;
    procedure StartIntercept; safecall;
  end;

// *********************************************************************//
// DispIntf:  IDemoServiceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8E4B35DD-73A6-4440-9EE5-9EF1CC514672}
// *********************************************************************//
  IDemoServiceDisp = dispinterface
    ['{8E4B35DD-73A6-4440-9EE5-9EF1CC514672}']
    procedure ShowNotificationsLogger; dispid 201;
    function GetDataFromCashe: IDataSet; dispid 202;
    procedure StartIntercept; dispid 203;
  end;

// *********************************************************************//
// The Class CoDemoService provides a Create and CreateRemote method to          
// create instances of the default interface IDemoService exposed by              
// the CoClass DemoService. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDemoService = class
    class function Create: IDemoService;
    class function CreateRemote(const MachineName: string): IDemoService;
  end;

implementation

uses ComObj;

class function CoDemoService.Create: IDemoService;
begin
  Result := CreateComObject(CLASS_DemoService) as IDemoService;
end;

class function CoDemoService.CreateRemote(const MachineName: string): IDemoService;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DemoService) as IDemoService;
end;

end.
