unit LoodsmanObjects_TLB;

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
// File generated on 30.01.2026 9:38:40 from Type Library described below.

// ************************************************************************  //
// Type Lib: ..\LoodsmanObjects.tlb (1)
// LIBID: {993330A6-6D54-40D6-9B30-67EE2A0FE3BB}
// LCID: 0
// Helpfile: 
// HelpString: LoodsmanObjects Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 DataProvider, (C:\Program Files (x86)\Common Files\ASCON Shared\Loodsman\DataProvider.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, DataProvider_TLB, Graphics, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  LoodsmanObjectsMajorVersion = 1;
  LoodsmanObjectsMinorVersion = 0;

  LIBID_LoodsmanObjects: TGUID = '{993330A6-6D54-40D6-9B30-67EE2A0FE3BB}';

  IID_IAccessItem: TGUID = '{7DE9AEAE-C27E-4B55-90F4-7531192DCEE1}';
  IID_IBasePDMCollection: TGUID = '{D16DC613-F7C0-47EA-92D0-1C276678596F}';
  IID_ICheckOut: TGUID = '{65EAFCA1-4ADD-42B7-B72C-B8E1BBBA2C23}';
  IID_IPDMItem: TGUID = '{FE4DB87D-4B4F-4EC9-9DCB-F939F8AABC4B}';
  IID_ICheckOutList: TGUID = '{2F73ACBD-5532-41D7-805F-DA46AE1AC2E6}';
  IID_ICollisionResolver: TGUID = '{CF4D1F22-4D93-48C5-ACD4-4FF8AFF2E72B}';
  IID_IEditablePDMItem: TGUID = '{06D84200-6EBF-4DDB-B297-029F75F63256}';
  IID_ILinkBetweenTypes: TGUID = '{ADFC32C5-4CE4-465A-BAA5-964CD4E18651}';
  IID_ILockInfo: TGUID = '{EAE72478-7EBC-4023-B541-2957ECC4B0C3}';
  IID_ILoodsmanMetaData: TGUID = '{03AC068C-19B2-496F-B42C-21A4BCD3C36F}';
  IID_ILoodsmanObjectsUtils: TGUID = '{2E47B5D5-0461-4D44-BF92-8F77C5D44C44}';
  IID_ILooEventSubscriber: TGUID = '{165A170F-4CE3-425F-BBF8-E0192BD0FA60}';
  IID_IObjectAccessInfo: TGUID = '{8CDEA303-6DDB-4C1D-A7A2-B9BDA7F45404}';
  IID_IPDMAttribute2: TGUID = '{6E4E3322-DE80-4432-BB57-618FF12D6098}';
  IID_ICheckoutablePDMEntity: TGUID = '{B77A7E1D-154C-4E11-9104-4E3ECD16FF62}';
  IID_IPDMAttrValueCollection: TGUID = '{42201F0C-464A-4148-8B0D-0FD8C4E9FD1F}';
  IID_IPDMAttrValueProvider: TGUID = '{43CE66E3-8062-4CF1-A61F-5F6E3603006D}';
  IID_IPDMEntityManager: TGUID = '{EB63DB05-F5B0-4F31-A1E2-D51F9C38E95A}';
  IID_IPDMFile2: TGUID = '{1EEE30B3-F72B-45D7-B4CD-A62675637AD0}';
  IID_IPDMFilesCollection: TGUID = '{657F5237-FD07-49AC-B47A-EB6B0F34A2B9}';
  IID_IPDMAttributeValue: TGUID = '{AB6C565B-A5C4-4E22-B447-316E8816E601}';
  IID_IAttributedPDMEntity: TGUID = '{9AAA405F-4AB5-41D7-9255-F20F70A23B2C}';
  IID_IPDMLinkCollection: TGUID = '{F8E3401D-E1B8-40A6-886C-CAE64C58425C}';
  IID_IPDMLinkProvider: TGUID = '{D12BC5B1-EF6D-4FB9-B078-1966D71E6DF2}';
  IID_IPDMLinkType: TGUID = '{F5884E23-78D8-4F49-8DD4-3002CCF9A15B}';
  IID_IPDMObject2: TGUID = '{5E3BCC12-71E9-4771-AE8B-94116EA6A7CB}';
  IID_IPDMObjectCollection: TGUID = '{BF85C681-9CAD-43DF-A720-26A9F2462FDA}';
  IID_IPDMObjectLinks: TGUID = '{EB4BAAB7-AEF7-426E-B820-967E265B6382}';
  IID_IPDMObjectProvider: TGUID = '{816E35A7-527D-4E75-93D0-B4E2A398AFCA}';
  IID_IPDMObjectState: TGUID = '{B7B5545F-3424-46BE-BB9A-2D0F751265C5}';
  IID_IPDMSignRole: TGUID = '{C1B1515F-9429-23AC-BB9A-2D0F751899C9}';
  IID_IPDMObjectType: TGUID = '{1EABCFFA-84FA-4B8C-A756-58014DA93B61}';
  IID_IStateTransition: TGUID = '{2F90C8C7-91FF-4553-8871-5A08D2A16C8F}';
  CLASS_PDMEntityManager: TGUID = '{1049A643-B3C9-4553-BCBC-9F1A4DCE294E}';
  IID_ILinkBetweenTypesCollection: TGUID = '{D65155CC-FAB9-4E45-A92C-FED0B1D277D2}';
  IID_IBOServerDescription: TGUID = '{ADE276C2-C5A4-454E-9E79-54C0D52C3C0E}';
  IID_IPDMTypesCollection: TGUID = '{29D66C97-F54C-4427-B67D-6828FE0AC1EE}';
  IID_IAttrTemplate: TGUID = '{F4874014-2D37-4FCC-8110-60DEB04F6163}';
  IID_IAttrTemplateCollection: TGUID = '{21B43C99-8CC9-4842-9C4F-EE3073984928}';
  IID_IMeasure: TGUID = '{0A259BAB-CE10-40CD-A623-B8C59CEA3AF3}';
  IID_IMeasureUnit: TGUID = '{EBEB2FBC-1111-44EC-85E6-CC727085498B}';
  IID_IMeasureCollection: TGUID = '{DBF5D636-2912-4152-AE00-A32ED227411C}';
  IID_IMeasureUnitsCollection: TGUID = '{1B87DFB8-2A7E-4DC9-8734-5638947BF3E2}';
  IID_IPDMModelNotificationHandler: TGUID = '{54ED310B-AFFE-461E-8099-0658EED9C2DC}';
  IID_IPDMModelNotifySender: TGUID = '{F3AC3ECB-F7C8-41B5-9C52-D5AE66A2883C}';
  IID_IDocumentCode: TGUID = '{19A288D6-0F0D-4952-A45B-628E23B00C3E}';
  IID_IPDMLinkTypesCollection: TGUID = '{BAF0FA6E-B88E-4AD2-A95B-7AFE649BBC4E}';
  IID_IPropertableItem: TGUID = '{0994D47B-B38C-4326-A612-9CF0A26AEB3D}';
  IID_IBOTypeInfo: TGUID = '{DBEA53D2-D460-48C5-8908-0A0D781F7630}';
  IID_IBOClass: TGUID = '{A664FF1D-5555-4810-B1A3-53B9F7B83915}';
  IID_IBOClassCollection: TGUID = '{E3FADD5C-2559-4ECB-B101-15C19484B653}';
  IID_ITypeStatesInfo: TGUID = '{A9EA28B1-304C-4D72-A51C-ADC955879158}';
  IID_ITreeLinkDescription: TGUID = '{B5DCBA5F-8006-4F52-B4D1-9938C2F40122}';
  IID_IPDMModelDebugger: TGUID = '{036D1F9B-C909-4243-863F-29C07A8C1BC6}';
  IID_IEffectivityType: TGUID = '{BA8D1B50-DFF3-4F26-B140-6522C592446B}';
  IID_ISlavePDMEntity: TGUID = '{1BD8714B-79DC-4491-8D3B-E067D3943F22}';
  IID_IChangeLoggersList: TGUID = '{B141ED8C-3C13-4B81-88A3-36EA851434AE}';
  IID_IChangeLogger: TGUID = '{366FF993-53FA-44FB-8209-C8B925AFDE91}';
  IID_IChangedItem: TGUID = '{F16159DD-7FB9-444A-B68E-925ED81A1336}';
  IID_ISimpleChangedItem: TGUID = '{5FA8C139-3BD7-49B0-9327-F7FFED4F1E2E}';
  IID_IContainerChangedItem: TGUID = '{34C399CC-9BD2-4304-BB82-B359C133E5EF}';
  IID_IMeasurablePDMItem: TGUID = '{D23D15BD-66AF-45F4-B911-5A1E1A5CDA00}';
  IID_IQuantitativePDMItem: TGUID = '{ED2785E4-9DD5-49F9-88A1-2ECEEA16D8BF}';
  IID_IPDMVersionSet: TGUID = '{0F1619A3-0C6A-4457-B956-973986306430}';
  IID_IPDMObjectEnumerator: TGUID = '{D4A36BBB-8AAB-45AB-81B4-FDB94B2BEA5B}';
  IID_ILinkTypedPDMItem: TGUID = '{355EC452-26C2-4670-8E12-4559794AF9D2}';
  IID_IAttributesMeasure: TGUID = '{3F83ECDB-1736-4167-865F-D6466ECAC2E9}';
  IID_IAttributesTypesMeasure: TGUID = '{2FB3EC2B-1726-B267-B65F-D6466EC2C2EB}';
  IID_IAttributesLinksMeasure: TGUID = '{1F834C2B-113F-4167-865F-16F66ECAC2E1}';
  IID_IAttributesMeasuresCollection: TGUID = '{3F899CD1-9700-42F7-C67F-36466EC7C9E3}';
  IID_IPDMLinkEntry: TGUID = '{721E9B92-2A72-7ACA-E736-9A223217C1A8}';
  IID_IPDMLinkEntries: TGUID = '{721E9B92-2A72-7ACA-E736-9A223217C1A9}';
  IID_IPDMEntityAttrValues: TGUID = '{272E1F12-729A-4B4A-A908-0487045896AF}';
  IID_IPDMObjectFiles: TGUID = '{BDB1ACFA-D69B-49E3-B000-9220530F14A1}';
  IID_IPDMLink2: TGUID = '{8F019110-4C72-457A-B7A5-F0376F5463BA}';
  IID_ISignedEntity: TGUID = '{DE8896A5-9F54-4E27-B116-953B1272CC84}';
  IID_IPDMLinkAbsEntry: TGUID = '{341F0B93-1A71-2A5C-07B6-01243F17C127}';
  IID_IPDMLinkAbsEntryVersionPathItem: TGUID = '{52A21B13-7535-FBCC-0102-2FD58F81E020}';
  IID_IPDMLinkAbsEntryVersionPathCollection: TGUID = '{B700AA32-6D66-0148-E1B7-010F30170120}';
  IID_IPDMLinkAbsEntries: TGUID = '{541F0B93-1A71-2A5C-07B6-01243F17C128}';
  IID_IPDMLinkAbsEntryBorrow: TGUID = '{021B0E93-DA71-DA5C-87B6-81243F17C129}';
  IID_IPDMLinkAbsEntriesBorrow: TGUID = '{041F0B93-1C71-A45C-F7BF-012F3917C129}';
  IID_IPDMTypePolynomInfo: TGUID = '{0F14A3D3-3EE7-71A2-1928-2A0D781F7777}';
  IID_IPDMTypePolynomBindingRuleItem: TGUID = '{BC74A4D3-1110-70A0-2AFF-3E0E441F767B}';
  IID_IPDMTypePolynomGroupBindingRuleItem: TGUID = '{1F14A3D3-3EE7-71A2-1928-2A0D781F7771}';
  IID_IPDMTypePolynomGroupBindingRulesCollection: TGUID = '{2F14A3D3-3EE7-71A2-1928-2A0D781F7772}';
  IID_IPDMTypePolynomBindingRule: TGUID = '{3F14A3D3-3EE7-71A2-1928-2A0D781F7773}';
  IID_IPDMTypePolynomBindingRuleLinkItem: TGUID = '{4F14A3D3-3EE7-71A2-1928-2A0D781F7774}';
  IID_IPDMTypePolynomBindingRuleLinksCollection: TGUID = '{5F14A3D3-3EE7-71A2-1928-2A0D781F7775}';
  IID_IPDMTypePolynomMappedStateValuesCollection: TGUID = '{6F14A3D3-3EE7-71A2-1928-2A0D781F7776}';
  IID_IPDMTypePolynomMappedLinkItem: TGUID = '{741FA3D3-3EE7-71A2-1128-2A0D781F7777}';
  IID_IPDMTypePolynomMappedLinksCollection: TGUID = '{8F14A3D3-4EE7-41A2-4981-2A0D781F7878}';
  IID_IPDMTypePolynomMappedLinkQuantityItem: TGUID = '{9113F311-2ACB-BB00-41F8-D10D781F0366}';
  IID_IPDMTypePolynomMappedLinkQuantityCollection: TGUID = '{9223C31C-231E-4B41-01F0-F21D08109369}';
  IID_IPDMTypePolynomMappedAttributesItem: TGUID = '{0147FA1A-3139-7745-B2F1-A00D08100301}';
  IID_IPDMTypePolynomMappedAttributesCollection: TGUID = '{1247FA1A-3139-7745-B2F1-A00D08100312}';
  IID_IPDMTypePolynomBindingRuleAttr: TGUID = '{54628EE0-1374-2220-F0F8-A84D0810CC18}';
  IID_IPDMTypePolynomBindingRuleAttrCollection: TGUID = '{53417A1F-0414-372F-A2FA-A04D0810881B}';
  IID_IPDMTypePolynomClassificationInfo: TGUID = '{1422A32D-F004-5132-1458-6B0B781F7379}';
  IID_IPDMObjectTypeQualificationItem: TGUID = '{9F834515-0E20-2303-71A4-0505785F0561}';
  IID_IPDMObjectTypeQualificationCollection: TGUID = '{62670010-1478-7845-A8FC-EC07B810B31B}';
  IID_IPDMObjectConfigurationProperties: TGUID = '{71DB50D6-1DA4-282C-E71F-3A3E16167638}';
  IID_IPDMObjectConfigurationQuickParamsItem: TGUID = '{32DB50D6-1DA4-282C-E71F-3A3E16167655}';
  IID_IPDMObjectConfigurationQuickParamsCollection: TGUID = '{327050E6-1DA4-282C-E71F-3A3E16167A13}';
  IID_IPDMObjectConfigurationFixedVersionItem: TGUID = '{00D0A076-F4F0-138E-5795-AFDE16167602}';
  IID_IPDMObjectConfigurationFixedVersionCollection: TGUID = '{12DFF011-0000-158E-5A9F-EFEE16167676}';
  IID_IBOMappingResult: TGUID = '{61BA7874-4FB1-4749-B8FF-3F7C6FE42CC3}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum GetCollectionMode
type
  GetCollectionMode = TOleEnum;
const
  gcmAllRefresh = $00000000;
  gcmAbsentRefresh = $00000001;
  gcmNoRefresh = $00000002;

// Constants for enum EntityCodes
type
  EntityCodes = TOleEnum;
const
  EC_NONE = $00000000;
  EC_OBJECT = $00000001;
  EC_LINK = $00000002;
  EC_FILE = $00000003;
  EC_ATTR = $00000004;
  EC_TASK = $00000005;
  EC_ROUTE = $00000006;
  EC_MAIL = $00000007;
  EC_USER = $00000008;
  EC_WFTASK = $00000009;
  EC_NOTE = $0000000A;
  EC_PLANVERSION = $0000000B;
  EC_PLAN = $0000000C;
  EC_WORKLOAD = $0000000D;
  EC_REQUIREMENT = $00000014;
  EC_EFFECTIVITY = $00000015;
  EC_LINKENTRY = $00000018;

// Constants for enum PropertyCodes
type
  PropertyCodes = TOleEnum;
const
  pcUnknown = $00000000;
  pcID = $00000001;
  pcProduct = $00000002;
  pcTypeName = $00000003;
  pcTypeID = $00000004;
  pcStateName = $00000005;
  pcStateID = $00000006;
  pcObjectType = $00000007;
  pcVersion = $00000008;
  pcIsDocument = $00000009;
  pcExistStatus = $0000000A;
  pcNextStatesIDs = $0000000B;
  pcIsProject = $0000000C;
  pcSecondaryViewFileName = $0000000D;
  pcSourceVersion = $0000000E;
  pcAccess = $0000000F;
  pcAccessLevel = $00000010;
  pcLockLevel = $00000011;
  pcLockID = $00000012;
  pcLockUser = $00000013;
  pcLockUserFullName = $00000014;
  pcLockDate = $00000015;
  pcLockComment = $00000016;
  pcLinks = $00000017;
  pcInverseLinks = $00000018;
  pcVirtualLinks = $00000019;
  pcAttrs = $0000001A;
  pcFiles = $0000001B;
  pcLinkType = $0000001C;
  pcLinkTypeID = $0000001D;
  pcMinQuantity = $0000001E;
  pcMaxQuantity = $0000001F;
  pcUnitID = $00000020;
  pcUnitName = $00000021;
  pcMeasureID = $00000022;
  pcMeasureName = $00000023;
  pcParentObjectID = $00000024;
  pcChildObjectID = $00000025;
  pcHorizontal = $00000026;
  pcIsVirtual = $00000027;
  pcValue = $00000028;
  pcCreatorUser = $00000029;
  pcCreatorUserFullName = $0000002A;
  pcCreateDate = $0000002B;
  pcAdditionAttrs = $0000002C;
  pcAdditionAttrsValues = $0000002D;
  pcDeleted = $0000002E;
  pcFileName = $0000002F;
  pcFilePath = $00000030;
  pcFileSize = $00000031;
  pcFileCreated = $00000032;
  pcFileModified = $00000033;
  pcFileReadOnly = $00000034;
  pcFileCRC = $00000035;
  pcPDMObjSource = $00000036;
  pcModifyDate = $00000037;
  pcObjectSigned = $00000038;
  pcSecondaryViewFileExt = $00000039;
  pcLocation = $0000003A;
  pcVersionsIDs = $0000003F;
  pcNotesNeedsDecision = $00000041;
  pcVirtualFolderParams = $00000042;
  pcGUID = $00000043;
  pcBinaryViewStrValue = $00000044;
  pcLinkEntries = $00000045;
  pcDistributedOrigin = $00000046;
  pcDistributedParticipant = $00000047;
  pcDistributedStub = $00000048;
  pcAbsLinkEntries = $00000049;
  pcClassificationProp = $0000004A;
  pcBOAttrValue = $0000004B;
  pcPreviewBoObject = $0000004C;
  pcConfigurationProperties = $0000004D;
  pcClassificationLocation = $0000004E;

// Constants for enum LinkKinds
type
  LinkKinds = TOleEnum;
const
  lkNormal = $00000000;
  lkInverse = $00000001;
  lkVirtual = $00000002;
  lkHorizontal = $00000003;
  lkUnknown = $00000064;

// Constants for enum AttributesMeasuresCollectionMode
type
  AttributesMeasuresCollectionMode = TOleEnum;
const
  mcmAttributes = $00000000;
  mcmAttributesTypesOverride = $00000001;
  mcmAttributesLinksOverride = $00000002;

// Constants for enum EntityPropTypes
type
  EntityPropTypes = TOleEnum;
const
  ptOther = $00000000;
  ptLinksCollection = $00000001;
  ptAttrsCollection = $00000002;
  ptFilesCollection = $00000003;
  ptLinksProps = $00000004;
  ptAttrsProps = $00000005;
  ptFilesProps = $00000006;

// Constants for enum TAbsEntryBorrowType
type
  TAbsEntryBorrowType = TOleEnum;
const
  ebtBorrowFrom = $00000000;
  ebtBorrowTo = $00000001;

// Constants for enum TAssociationWithPolymon
type
  TAssociationWithPolymon = TOleEnum;
const
  awpNone = $00000000;
  awpOneToOne = $00000001;
  awpManyToOne = $00000002;

// Constants for enum TPolynomRelationLevel
type
  TPolynomRelationLevel = TOleEnum;
const
  prlNone = $00000000;
  prlClassification = $00000001;
  prlIntegration = $00000002;
  prlIndependent = $00000004;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IAccessItem = interface;
  IAccessItemDisp = dispinterface;
  IBasePDMCollection = interface;
  IBasePDMCollectionDisp = dispinterface;
  ICheckOut = interface;
  ICheckOutDisp = dispinterface;
  IPDMItem = interface;
  IPDMItemDisp = dispinterface;
  ICheckOutList = interface;
  ICheckOutListDisp = dispinterface;
  ICollisionResolver = interface;
  ICollisionResolverDisp = dispinterface;
  IEditablePDMItem = interface;
  IEditablePDMItemDisp = dispinterface;
  ILinkBetweenTypes = interface;
  ILinkBetweenTypesDisp = dispinterface;
  ILockInfo = interface;
  ILockInfoDisp = dispinterface;
  ILoodsmanMetaData = interface;
  ILoodsmanMetaDataDisp = dispinterface;
  ILoodsmanObjectsUtils = interface;
  ILoodsmanObjectsUtilsDisp = dispinterface;
  ILooEventSubscriber = interface;
  ILooEventSubscriberDisp = dispinterface;
  IObjectAccessInfo = interface;
  IObjectAccessInfoDisp = dispinterface;
  IPDMAttribute2 = interface;
  IPDMAttribute2Disp = dispinterface;
  ICheckoutablePDMEntity = interface;
  ICheckoutablePDMEntityDisp = dispinterface;
  IPDMAttrValueCollection = interface;
  IPDMAttrValueCollectionDisp = dispinterface;
  IPDMAttrValueProvider = interface;
  IPDMAttrValueProviderDisp = dispinterface;
  IPDMEntityManager = interface;
  IPDMEntityManagerDisp = dispinterface;
  IPDMFile2 = interface;
  IPDMFile2Disp = dispinterface;
  IPDMFilesCollection = interface;
  IPDMFilesCollectionDisp = dispinterface;
  IPDMAttributeValue = interface;
  IPDMAttributeValueDisp = dispinterface;
  IAttributedPDMEntity = interface;
  IAttributedPDMEntityDisp = dispinterface;
  IPDMLinkCollection = interface;
  IPDMLinkCollectionDisp = dispinterface;
  IPDMLinkProvider = interface;
  IPDMLinkProviderDisp = dispinterface;
  IPDMLinkType = interface;
  IPDMLinkTypeDisp = dispinterface;
  IPDMObject2 = interface;
  IPDMObject2Disp = dispinterface;
  IPDMObjectCollection = interface;
  IPDMObjectCollectionDisp = dispinterface;
  IPDMObjectLinks = interface;
  IPDMObjectLinksDisp = dispinterface;
  IPDMObjectProvider = interface;
  IPDMObjectProviderDisp = dispinterface;
  IPDMObjectState = interface;
  IPDMObjectStateDisp = dispinterface;
  IPDMSignRole = interface;
  IPDMSignRoleDisp = dispinterface;
  IPDMObjectType = interface;
  IPDMObjectTypeDisp = dispinterface;
  IStateTransition = interface;
  IStateTransitionDisp = dispinterface;
  ILinkBetweenTypesCollection = interface;
  ILinkBetweenTypesCollectionDisp = dispinterface;
  IBOServerDescription = interface;
  IBOServerDescriptionDisp = dispinterface;
  IPDMTypesCollection = interface;
  IPDMTypesCollectionDisp = dispinterface;
  IAttrTemplate = interface;
  IAttrTemplateDisp = dispinterface;
  IAttrTemplateCollection = interface;
  IAttrTemplateCollectionDisp = dispinterface;
  IMeasure = interface;
  IMeasureDisp = dispinterface;
  IMeasureUnit = interface;
  IMeasureUnitDisp = dispinterface;
  IMeasureCollection = interface;
  IMeasureCollectionDisp = dispinterface;
  IMeasureUnitsCollection = interface;
  IMeasureUnitsCollectionDisp = dispinterface;
  IPDMModelNotificationHandler = interface;
  IPDMModelNotificationHandlerDisp = dispinterface;
  IPDMModelNotifySender = interface;
  IPDMModelNotifySenderDisp = dispinterface;
  IDocumentCode = interface;
  IDocumentCodeDisp = dispinterface;
  IPDMLinkTypesCollection = interface;
  IPDMLinkTypesCollectionDisp = dispinterface;
  IPropertableItem = interface;
  IPropertableItemDisp = dispinterface;
  IBOTypeInfo = interface;
  IBOTypeInfoDisp = dispinterface;
  IBOClass = interface;
  IBOClassDisp = dispinterface;
  IBOClassCollection = interface;
  IBOClassCollectionDisp = dispinterface;
  ITypeStatesInfo = interface;
  ITypeStatesInfoDisp = dispinterface;
  ITreeLinkDescription = interface;
  ITreeLinkDescriptionDisp = dispinterface;
  IPDMModelDebugger = interface;
  IPDMModelDebuggerDisp = dispinterface;
  IEffectivityType = interface;
  IEffectivityTypeDisp = dispinterface;
  ISlavePDMEntity = interface;
  ISlavePDMEntityDisp = dispinterface;
  IChangeLoggersList = interface;
  IChangeLoggersListDisp = dispinterface;
  IChangeLogger = interface;
  IChangeLoggerDisp = dispinterface;
  IChangedItem = interface;
  IChangedItemDisp = dispinterface;
  ISimpleChangedItem = interface;
  ISimpleChangedItemDisp = dispinterface;
  IContainerChangedItem = interface;
  IContainerChangedItemDisp = dispinterface;
  IMeasurablePDMItem = interface;
  IMeasurablePDMItemDisp = dispinterface;
  IQuantitativePDMItem = interface;
  IQuantitativePDMItemDisp = dispinterface;
  IPDMVersionSet = interface;
  IPDMVersionSetDisp = dispinterface;
  IPDMObjectEnumerator = interface;
  IPDMObjectEnumeratorDisp = dispinterface;
  ILinkTypedPDMItem = interface;
  ILinkTypedPDMItemDisp = dispinterface;
  IAttributesMeasure = interface;
  IAttributesMeasureDisp = dispinterface;
  IAttributesTypesMeasure = interface;
  IAttributesTypesMeasureDisp = dispinterface;
  IAttributesLinksMeasure = interface;
  IAttributesLinksMeasureDisp = dispinterface;
  IAttributesMeasuresCollection = interface;
  IAttributesMeasuresCollectionDisp = dispinterface;
  IPDMLinkEntry = interface;
  IPDMLinkEntryDisp = dispinterface;
  IPDMLinkEntries = interface;
  IPDMLinkEntriesDisp = dispinterface;
  IPDMEntityAttrValues = interface;
  IPDMEntityAttrValuesDisp = dispinterface;
  IPDMObjectFiles = interface;
  IPDMObjectFilesDisp = dispinterface;
  IPDMLink2 = interface;
  IPDMLink2Disp = dispinterface;
  ISignedEntity = interface;
  ISignedEntityDisp = dispinterface;
  IPDMLinkAbsEntry = interface;
  IPDMLinkAbsEntryDisp = dispinterface;
  IPDMLinkAbsEntryVersionPathItem = interface;
  IPDMLinkAbsEntryVersionPathItemDisp = dispinterface;
  IPDMLinkAbsEntryVersionPathCollection = interface;
  IPDMLinkAbsEntryVersionPathCollectionDisp = dispinterface;
  IPDMLinkAbsEntries = interface;
  IPDMLinkAbsEntriesDisp = dispinterface;
  IPDMLinkAbsEntryBorrow = interface;
  IPDMLinkAbsEntryBorrowDisp = dispinterface;
  IPDMLinkAbsEntriesBorrow = interface;
  IPDMLinkAbsEntriesBorrowDisp = dispinterface;
  IPDMTypePolynomInfo = interface;
  IPDMTypePolynomInfoDisp = dispinterface;
  IPDMTypePolynomBindingRuleItem = interface;
  IPDMTypePolynomBindingRuleItemDisp = dispinterface;
  IPDMTypePolynomGroupBindingRuleItem = interface;
  IPDMTypePolynomGroupBindingRuleItemDisp = dispinterface;
  IPDMTypePolynomGroupBindingRulesCollection = interface;
  IPDMTypePolynomGroupBindingRulesCollectionDisp = dispinterface;
  IPDMTypePolynomBindingRule = interface;
  IPDMTypePolynomBindingRuleDisp = dispinterface;
  IPDMTypePolynomBindingRuleLinkItem = interface;
  IPDMTypePolynomBindingRuleLinkItemDisp = dispinterface;
  IPDMTypePolynomBindingRuleLinksCollection = interface;
  IPDMTypePolynomBindingRuleLinksCollectionDisp = dispinterface;
  IPDMTypePolynomMappedStateValuesCollection = interface;
  IPDMTypePolynomMappedStateValuesCollectionDisp = dispinterface;
  IPDMTypePolynomMappedLinkItem = interface;
  IPDMTypePolynomMappedLinkItemDisp = dispinterface;
  IPDMTypePolynomMappedLinksCollection = interface;
  IPDMTypePolynomMappedLinksCollectionDisp = dispinterface;
  IPDMTypePolynomMappedLinkQuantityItem = interface;
  IPDMTypePolynomMappedLinkQuantityItemDisp = dispinterface;
  IPDMTypePolynomMappedLinkQuantityCollection = interface;
  IPDMTypePolynomMappedLinkQuantityCollectionDisp = dispinterface;
  IPDMTypePolynomMappedAttributesItem = interface;
  IPDMTypePolynomMappedAttributesItemDisp = dispinterface;
  IPDMTypePolynomMappedAttributesCollection = interface;
  IPDMTypePolynomMappedAttributesCollectionDisp = dispinterface;
  IPDMTypePolynomBindingRuleAttr = interface;
  IPDMTypePolynomBindingRuleAttrDisp = dispinterface;
  IPDMTypePolynomBindingRuleAttrCollection = interface;
  IPDMTypePolynomBindingRuleAttrCollectionDisp = dispinterface;
  IPDMTypePolynomClassificationInfo = interface;
  IPDMTypePolynomClassificationInfoDisp = dispinterface;
  IPDMObjectTypeQualificationItem = interface;
  IPDMObjectTypeQualificationItemDisp = dispinterface;
  IPDMObjectTypeQualificationCollection = interface;
  IPDMObjectTypeQualificationCollectionDisp = dispinterface;
  IPDMObjectConfigurationProperties = interface;
  IPDMObjectConfigurationPropertiesDisp = dispinterface;
  IPDMObjectConfigurationQuickParamsItem = interface;
  IPDMObjectConfigurationQuickParamsItemDisp = dispinterface;
  IPDMObjectConfigurationQuickParamsCollection = interface;
  IPDMObjectConfigurationQuickParamsCollectionDisp = dispinterface;
  IPDMObjectConfigurationFixedVersionItem = interface;
  IPDMObjectConfigurationFixedVersionItemDisp = dispinterface;
  IPDMObjectConfigurationFixedVersionCollection = interface;
  IPDMObjectConfigurationFixedVersionCollectionDisp = dispinterface;
  IBOMappingResult = interface;
  IBOMappingResultDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  PDMEntityManager = IPDMEntityManager;


// *********************************************************************//
// Interface: IAccessItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7DE9AEAE-C27E-4B55-90F4-7531192DCEE1}
// *********************************************************************//
  IAccessItem = interface(IDispatch)
    ['{7DE9AEAE-C27E-4B55-90F4-7531192DCEE1}']
    function Get_SubjID: Integer; safecall;
    function Get_SubjType: Integer; safecall;
    function Get_AccessLevel: Integer; safecall;
    function Get_PDMObject: IPDMObject2; safecall;
    property SubjID: Integer read Get_SubjID;
    property SubjType: Integer read Get_SubjType;
    property AccessLevel: Integer read Get_AccessLevel;
    property PDMObject: IPDMObject2 read Get_PDMObject;
  end;

// *********************************************************************//
// DispIntf:  IAccessItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7DE9AEAE-C27E-4B55-90F4-7531192DCEE1}
// *********************************************************************//
  IAccessItemDisp = dispinterface
    ['{7DE9AEAE-C27E-4B55-90F4-7531192DCEE1}']
    property SubjID: Integer readonly dispid 201;
    property SubjType: Integer readonly dispid 202;
    property AccessLevel: Integer readonly dispid 203;
    property PDMObject: IPDMObject2 readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IBasePDMCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D16DC613-F7C0-47EA-92D0-1C276678596F}
// *********************************************************************//
  IBasePDMCollection = interface(IDispatch)
    ['{D16DC613-F7C0-47EA-92D0-1C276678596F}']
    function Get_Count: Integer; safecall;
    function Items(Index: Integer): IPDMItem; safecall;
    function ItemByName(const Name: WideString): IPDMItem; safecall;
    function ItemByID(ID: Integer): IPDMItem; safecall;
    function Add(const Item: IPDMItem): Integer; safecall;
    function Get_UniqueNames: WordBool; safecall;
    procedure Delete(Index: Integer); safecall;
    procedure AppendCollection(const Collection: IBasePDMCollection); safecall;
    function Get_ReadOnly: WordBool; safecall;
    function Get_IDStr: WideString; safecall;
    procedure Clear; safecall;
    function IndexOf(const Item: IPDMItem): Integer; safecall;
    function Get_MainEntityCode: Integer; safecall;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; safecall;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; safecall;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; safecall;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; safecall;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; safecall;
    property Count: Integer read Get_Count;
    property UniqueNames: WordBool read Get_UniqueNames;
    property ReadOnly: WordBool read Get_ReadOnly;
    property IDStr: WideString read Get_IDStr;
    property MainEntityCode: Integer read Get_MainEntityCode;
  end;

// *********************************************************************//
// DispIntf:  IBasePDMCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D16DC613-F7C0-47EA-92D0-1C276678596F}
// *********************************************************************//
  IBasePDMCollectionDisp = dispinterface
    ['{D16DC613-F7C0-47EA-92D0-1C276678596F}']
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: ICheckOut
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {65EAFCA1-4ADD-42B7-B72C-B8E1BBBA2C23}
// *********************************************************************//
  ICheckOut = interface(IDispatch)
    ['{65EAFCA1-4ADD-42B7-B72C-B8E1BBBA2C23}']
    function Get_Name: WideString; safecall;
    function Get_ID: Integer; safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const Value: WideString); safecall;
    function Get_DateOfCreate: Double; safecall;
    function Get_Connection: ISimpleAPI2; safecall;
    function Get_Exist: WordBool; safecall;
    function AddHeadObject(const PDMObject: IPDMObject2): IPDMObject2; safecall;
    procedure SaveCheckout(Close: WordBool); safecall;
    procedure CancelCheckout; safecall;
    procedure UnlockObject(const PDMObject: IPDMObject2; WithChilds: WordBool); safecall;
    function Get_Initialized: WordBool; safecall;
    function Get_Deleted: WordBool; safecall;
    property Name: WideString read Get_Name;
    property ID: Integer read Get_ID;
    property Description: WideString read Get_Description write Set_Description;
    property DateOfCreate: Double read Get_DateOfCreate;
    property Connection: ISimpleAPI2 read Get_Connection;
    property Exist: WordBool read Get_Exist;
    property Initialized: WordBool read Get_Initialized;
    property Deleted: WordBool read Get_Deleted;
  end;

// *********************************************************************//
// DispIntf:  ICheckOutDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {65EAFCA1-4ADD-42B7-B72C-B8E1BBBA2C23}
// *********************************************************************//
  ICheckOutDisp = dispinterface
    ['{65EAFCA1-4ADD-42B7-B72C-B8E1BBBA2C23}']
    property Name: WideString readonly dispid 201;
    property ID: Integer readonly dispid 202;
    property Description: WideString dispid 203;
    property DateOfCreate: Double readonly dispid 204;
    property Connection: ISimpleAPI2 readonly dispid 205;
    property Exist: WordBool readonly dispid 206;
    function AddHeadObject(const PDMObject: IPDMObject2): IPDMObject2; dispid 207;
    procedure SaveCheckout(Close: WordBool); dispid 208;
    procedure CancelCheckout; dispid 209;
    procedure UnlockObject(const PDMObject: IPDMObject2; WithChilds: WordBool); dispid 210;
    property Initialized: WordBool readonly dispid 211;
    property Deleted: WordBool readonly dispid 213;
  end;

// *********************************************************************//
// Interface: IPDMItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE4DB87D-4B4F-4EC9-9DCB-F939F8AABC4B}
// *********************************************************************//
  IPDMItem = interface(IDispatch)
    ['{FE4DB87D-4B4F-4EC9-9DCB-F939F8AABC4B}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_EntityCode: EntityCodes; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property EntityCode: EntityCodes read Get_EntityCode;
  end;

// *********************************************************************//
// DispIntf:  IPDMItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FE4DB87D-4B4F-4EC9-9DCB-F939F8AABC4B}
// *********************************************************************//
  IPDMItemDisp = dispinterface
    ['{FE4DB87D-4B4F-4EC9-9DCB-F939F8AABC4B}']
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: ICheckOutList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F73ACBD-5532-41D7-805F-DA46AE1AC2E6}
// *********************************************************************//
  ICheckOutList = interface(IDispatch)
    ['{2F73ACBD-5532-41D7-805F-DA46AE1AC2E6}']
    function Get_Count: Integer; safecall;
    function GetItem(Index: Integer): ICheckOut; safecall;
    function GetCheckoutByID(CheckOutID: Integer): ICheckOut; safecall;
    function GetCheckoutByConnection(const Connection: ISimpleAPI2): ICheckOut; safecall;
    function CreateCheckout: ICheckOut; safecall;
    procedure Refresh; safecall;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ICheckOutListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F73ACBD-5532-41D7-805F-DA46AE1AC2E6}
// *********************************************************************//
  ICheckOutListDisp = dispinterface
    ['{2F73ACBD-5532-41D7-805F-DA46AE1AC2E6}']
    property Count: Integer readonly dispid 201;
    function GetItem(Index: Integer): ICheckOut; dispid 202;
    function GetCheckoutByID(CheckOutID: Integer): ICheckOut; dispid 203;
    function GetCheckoutByConnection(const Connection: ISimpleAPI2): ICheckOut; dispid 204;
    function CreateCheckout: ICheckOut; dispid 205;
    procedure Refresh; dispid 208;
  end;

// *********************************************************************//
// Interface: ICollisionResolver
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF4D1F22-4D93-48C5-ACD4-4FF8AFF2E72B}
// *********************************************************************//
  ICollisionResolver = interface(IDispatch)
    ['{CF4D1F22-4D93-48C5-ACD4-4FF8AFF2E72B}']
    function OnApplyChanges(const Entity: IPDMItem; AdditionData: OleVariant): IPDMItem; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICollisionResolverDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CF4D1F22-4D93-48C5-ACD4-4FF8AFF2E72B}
// *********************************************************************//
  ICollisionResolverDisp = dispinterface
    ['{CF4D1F22-4D93-48C5-ACD4-4FF8AFF2E72B}']
    function OnApplyChanges(const Entity: IPDMItem; AdditionData: OleVariant): IPDMItem; dispid 201;
  end;

// *********************************************************************//
// Interface: IEditablePDMItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {06D84200-6EBF-4DDB-B297-029F75F63256}
// *********************************************************************//
  IEditablePDMItem = interface(IPDMItem)
    ['{06D84200-6EBF-4DDB-B297-029F75F63256}']
    function InEditMode: WordBool; safecall;
    function Get_Deleted: WordBool; safecall;
    function Get_Valid: WordBool; safecall;
    function Get_ExistsInDB: WordBool; safecall;
    function Get_SourceEntity: IEditablePDMItem; safecall;
    function CreateEditableCopy: IEditablePDMItem; safecall;
    function SaveToDB(const NotificationSource: WideString): IEditablePDMItem; safecall;
    procedure DeleteItem; safecall;
    procedure ClearProperty(PropCode: Integer); safecall;
    function Changed: WordBool; safecall;
    property Deleted: WordBool read Get_Deleted;
    property Valid: WordBool read Get_Valid;
    property ExistsInDB: WordBool read Get_ExistsInDB;
    property SourceEntity: IEditablePDMItem read Get_SourceEntity;
  end;

// *********************************************************************//
// DispIntf:  IEditablePDMItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {06D84200-6EBF-4DDB-B297-029F75F63256}
// *********************************************************************//
  IEditablePDMItemDisp = dispinterface
    ['{06D84200-6EBF-4DDB-B297-029F75F63256}']
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const NotificationSource: WideString): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: ILinkBetweenTypes
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ADFC32C5-4CE4-465A-BAA5-964CD4E18651}
// *********************************************************************//
  ILinkBetweenTypes = interface(IDispatch)
    ['{ADFC32C5-4CE4-465A-BAA5-964CD4E18651}']
    function Get_Link: IPDMLinkType; safecall;
    function Get_ParentType: IPDMObjectType; safecall;
    function Get_ChildType: IPDMObjectType; safecall;
    function Get_Quantity: WordBool; safecall;
    function Get_AttrList: IBasePDMCollection; safecall;
    function Get_AttrTemplates(const Attr: IPDMAttribute2): IAttrTemplateCollection; safecall;
    function Get_Measures: IMeasureCollection; safecall;
    function Get_DefaultMeasure: IMeasure; safecall;
    function Get_IsBOMapped: WordBool; safecall;
    function IsBOMappedAttr(const Attr: IPDMAttribute2): WordBool; safecall;
    function Get_LinkRule: Integer; safecall;
    function Get_IsStructuralLink: WordBool; safecall;
    function GetBOMappedAttr(const Attr: IPDMAttribute2; const PDMObject: IPDMObject2; 
                             Indep: WordBool; const BindingRuleId: WideString): IPDMTypePolynomMappedAttributesItem; safecall;
    property Link: IPDMLinkType read Get_Link;
    property ParentType: IPDMObjectType read Get_ParentType;
    property ChildType: IPDMObjectType read Get_ChildType;
    property Quantity: WordBool read Get_Quantity;
    property AttrList: IBasePDMCollection read Get_AttrList;
    property AttrTemplates[const Attr: IPDMAttribute2]: IAttrTemplateCollection read Get_AttrTemplates;
    property Measures: IMeasureCollection read Get_Measures;
    property DefaultMeasure: IMeasure read Get_DefaultMeasure;
    property IsBOMapped: WordBool read Get_IsBOMapped;
    property LinkRule: Integer read Get_LinkRule;
    property IsStructuralLink: WordBool read Get_IsStructuralLink;
  end;

// *********************************************************************//
// DispIntf:  ILinkBetweenTypesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ADFC32C5-4CE4-465A-BAA5-964CD4E18651}
// *********************************************************************//
  ILinkBetweenTypesDisp = dispinterface
    ['{ADFC32C5-4CE4-465A-BAA5-964CD4E18651}']
    property Link: IPDMLinkType readonly dispid 201;
    property ParentType: IPDMObjectType readonly dispid 202;
    property ChildType: IPDMObjectType readonly dispid 203;
    property Quantity: WordBool readonly dispid 204;
    property AttrList: IBasePDMCollection readonly dispid 205;
    property AttrTemplates[const Attr: IPDMAttribute2]: IAttrTemplateCollection readonly dispid 206;
    property Measures: IMeasureCollection readonly dispid 207;
    property DefaultMeasure: IMeasure readonly dispid 208;
    property IsBOMapped: WordBool readonly dispid 209;
    function IsBOMappedAttr(const Attr: IPDMAttribute2): WordBool; dispid 210;
    property LinkRule: Integer readonly dispid 211;
    property IsStructuralLink: WordBool readonly dispid 212;
    function GetBOMappedAttr(const Attr: IPDMAttribute2; const PDMObject: IPDMObject2; 
                             Indep: WordBool; const BindingRuleId: WideString): IPDMTypePolynomMappedAttributesItem; dispid 213;
  end;

// *********************************************************************//
// Interface: ILockInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EAE72478-7EBC-4023-B541-2957ECC4B0C3}
// *********************************************************************//
  ILockInfo = interface(IDispatch)
    ['{EAE72478-7EBC-4023-B541-2957ECC4B0C3}']
    function Get_LockLevel: Integer; safecall;
    function Get_LockID: Integer; safecall;
    function Get_UserName: WideString; safecall;
    function Get_FullUserName: WideString; safecall;
    function Get_Date: Double; safecall;
    function Get_Comments: WideString; safecall;
    property LockLevel: Integer read Get_LockLevel;
    property LockID: Integer read Get_LockID;
    property UserName: WideString read Get_UserName;
    property FullUserName: WideString read Get_FullUserName;
    property Date: Double read Get_Date;
    property Comments: WideString read Get_Comments;
  end;

// *********************************************************************//
// DispIntf:  ILockInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EAE72478-7EBC-4023-B541-2957ECC4B0C3}
// *********************************************************************//
  ILockInfoDisp = dispinterface
    ['{EAE72478-7EBC-4023-B541-2957ECC4B0C3}']
    property LockLevel: Integer readonly dispid 201;
    property LockID: Integer readonly dispid 202;
    property UserName: WideString readonly dispid 203;
    property FullUserName: WideString readonly dispid 204;
    property Date: Double readonly dispid 205;
    property Comments: WideString readonly dispid 206;
  end;

// *********************************************************************//
// Interface: ILoodsmanMetaData
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {03AC068C-19B2-496F-B42C-21A4BCD3C36F}
// *********************************************************************//
  ILoodsmanMetaData = interface(IDispatch)
    ['{03AC068C-19B2-496F-B42C-21A4BCD3C36F}']
    function Get_Types: IPDMTypesCollection; safecall;
    function Get_Links: IPDMLinkTypesCollection; safecall;
    function Get_States: IBasePDMCollection; safecall;
    function Get_Attributes: IBasePDMCollection; safecall;
    function Get_Icons: IImageList; safecall;
    function Get_TypesIcons: IImageList; safecall;
    function Get_LinksIcons: IImageList; safecall;
    function Get_StatesIcons: IImageList; safecall;
    function Get_AttributesIcons: IImageList; safecall;
    function Get_BOServers: IBasePDMCollection; safecall;
    function Get_AttrTemplates: IAttrTemplateCollection; safecall;
    function Get_Measures: IMeasureCollection; safecall;
    function Get_MeasureUnits: IMeasureUnitsCollection; safecall;
    function Get_EffectivityTypes: IBasePDMCollection; safecall;
    function Get_SignRoles: IBasePDMCollection; safecall;
    function Get_SignRolesIcons: IImageList; safecall;
    function Get_AttributesMeasures(aMode: AttributesMeasuresCollectionMode): IAttributesMeasuresCollection; safecall;
    property Types: IPDMTypesCollection read Get_Types;
    property Links: IPDMLinkTypesCollection read Get_Links;
    property States: IBasePDMCollection read Get_States;
    property Attributes: IBasePDMCollection read Get_Attributes;
    property Icons: IImageList read Get_Icons;
    property TypesIcons: IImageList read Get_TypesIcons;
    property LinksIcons: IImageList read Get_LinksIcons;
    property StatesIcons: IImageList read Get_StatesIcons;
    property AttributesIcons: IImageList read Get_AttributesIcons;
    property BOServers: IBasePDMCollection read Get_BOServers;
    property AttrTemplates: IAttrTemplateCollection read Get_AttrTemplates;
    property Measures: IMeasureCollection read Get_Measures;
    property MeasureUnits: IMeasureUnitsCollection read Get_MeasureUnits;
    property EffectivityTypes: IBasePDMCollection read Get_EffectivityTypes;
    property SignRoles: IBasePDMCollection read Get_SignRoles;
    property SignRolesIcons: IImageList read Get_SignRolesIcons;
    property AttributesMeasures[aMode: AttributesMeasuresCollectionMode]: IAttributesMeasuresCollection read Get_AttributesMeasures;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanMetaDataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {03AC068C-19B2-496F-B42C-21A4BCD3C36F}
// *********************************************************************//
  ILoodsmanMetaDataDisp = dispinterface
    ['{03AC068C-19B2-496F-B42C-21A4BCD3C36F}']
    property Types: IPDMTypesCollection readonly dispid 201;
    property Links: IPDMLinkTypesCollection readonly dispid 202;
    property States: IBasePDMCollection readonly dispid 203;
    property Attributes: IBasePDMCollection readonly dispid 204;
    property Icons: IImageList readonly dispid 205;
    property TypesIcons: IImageList readonly dispid 206;
    property LinksIcons: IImageList readonly dispid 207;
    property StatesIcons: IImageList readonly dispid 208;
    property AttributesIcons: IImageList readonly dispid 209;
    property BOServers: IBasePDMCollection readonly dispid 210;
    property AttrTemplates: IAttrTemplateCollection readonly dispid 211;
    property Measures: IMeasureCollection readonly dispid 212;
    property MeasureUnits: IMeasureUnitsCollection readonly dispid 213;
    property EffectivityTypes: IBasePDMCollection readonly dispid 215;
    property SignRoles: IBasePDMCollection readonly dispid 216;
    property SignRolesIcons: IImageList readonly dispid 217;
    property AttributesMeasures[aMode: AttributesMeasuresCollectionMode]: IAttributesMeasuresCollection readonly dispid 218;
  end;

// *********************************************************************//
// Interface: ILoodsmanObjectsUtils
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2E47B5D5-0461-4D44-BF92-8F77C5D44C44}
// *********************************************************************//
  ILoodsmanObjectsUtils = interface(IDispatch)
    ['{2E47B5D5-0461-4D44-BF92-8F77C5D44C44}']
    function GetObjectNextStates(const Entity: IPDMObject2): IBasePDMCollection; safecall;
    function GetFileByID(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMFile2; safecall;
    function GetFilesByIDs(const IDs: WideString; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMFilesCollection; safecall;
    function CreateEmptyCollection: IBasePDMCollection; safecall;
    function CreateCloneCollection(const CloneOf: IBasePDMCollection): IBasePDMCollection; safecall;
    function CreateEmptyCloneCollection(const CloneOf: IBasePDMCollection): IBasePDMCollection; safecall;
  end;

// *********************************************************************//
// DispIntf:  ILoodsmanObjectsUtilsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2E47B5D5-0461-4D44-BF92-8F77C5D44C44}
// *********************************************************************//
  ILoodsmanObjectsUtilsDisp = dispinterface
    ['{2E47B5D5-0461-4D44-BF92-8F77C5D44C44}']
    function GetObjectNextStates(const Entity: IPDMObject2): IBasePDMCollection; dispid 201;
    function GetFileByID(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMFile2; dispid 202;
    function GetFilesByIDs(const IDs: WideString; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMFilesCollection; dispid 203;
    function CreateEmptyCollection: IBasePDMCollection; dispid 205;
    function CreateCloneCollection(const CloneOf: IBasePDMCollection): IBasePDMCollection; dispid 206;
    function CreateEmptyCloneCollection(const CloneOf: IBasePDMCollection): IBasePDMCollection; dispid 207;
  end;

// *********************************************************************//
// Interface: ILooEventSubscriber
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {165A170F-4CE3-425F-BBF8-E0192BD0FA60}
// *********************************************************************//
  ILooEventSubscriber = interface(IDispatch)
    ['{165A170F-4CE3-425F-BBF8-E0192BD0FA60}']
  end;

// *********************************************************************//
// DispIntf:  ILooEventSubscriberDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {165A170F-4CE3-425F-BBF8-E0192BD0FA60}
// *********************************************************************//
  ILooEventSubscriberDisp = dispinterface
    ['{165A170F-4CE3-425F-BBF8-E0192BD0FA60}']
  end;

// *********************************************************************//
// Interface: IObjectAccessInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8CDEA303-6DDB-4C1D-A7A2-B9BDA7F45404}
// *********************************************************************//
  IObjectAccessInfo = interface(IDispatch)
    ['{8CDEA303-6DDB-4C1D-A7A2-B9BDA7F45404}']
    function Get_AccessItemsCount: Integer; safecall;
    function GetAccessRight(Index: Integer): IAccessItem; safecall;
    function AddAccess(SubjID: Integer; SubjType: Integer; AccessLevel: Integer): Integer; safecall;
    procedure DeleteAccess(Index: Integer); safecall;
    procedure ClearAccess; safecall;
    property AccessItemsCount: Integer read Get_AccessItemsCount;
  end;

// *********************************************************************//
// DispIntf:  IObjectAccessInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8CDEA303-6DDB-4C1D-A7A2-B9BDA7F45404}
// *********************************************************************//
  IObjectAccessInfoDisp = dispinterface
    ['{8CDEA303-6DDB-4C1D-A7A2-B9BDA7F45404}']
    property AccessItemsCount: Integer readonly dispid 201;
    function GetAccessRight(Index: Integer): IAccessItem; dispid 202;
    function AddAccess(SubjID: Integer; SubjType: Integer; AccessLevel: Integer): Integer; dispid 203;
    procedure DeleteAccess(Index: Integer); dispid 204;
    procedure ClearAccess; dispid 205;
  end;

// *********************************************************************//
// Interface: IPDMAttribute2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6E4E3322-DE80-4432-BB57-618FF12D6098}
// *********************************************************************//
  IPDMAttribute2 = interface(IDispatch)
    ['{6E4E3322-DE80-4432-BB57-618FF12D6098}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_AttrType: Integer; safecall;
    function Get_DefaultValue: WideString; safecall;
    function Get_ValueList: WideString; safecall;
    function Get_IsSystem: WordBool; safecall;
    function Get_OnlyListValues: WordBool; safecall;
    function Get_Measures: IMeasureCollection; safecall;
    function Get_DefaultMeasure: IMeasure; safecall;
    function Get_RoleAccess(const aStateName: WideString): Integer; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property AttrType: Integer read Get_AttrType;
    property DefaultValue: WideString read Get_DefaultValue;
    property ValueList: WideString read Get_ValueList;
    property IsSystem: WordBool read Get_IsSystem;
    property OnlyListValues: WordBool read Get_OnlyListValues;
    property Measures: IMeasureCollection read Get_Measures;
    property DefaultMeasure: IMeasure read Get_DefaultMeasure;
    property RoleAccess[const aStateName: WideString]: Integer read Get_RoleAccess;
  end;

// *********************************************************************//
// DispIntf:  IPDMAttribute2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6E4E3322-DE80-4432-BB57-618FF12D6098}
// *********************************************************************//
  IPDMAttribute2Disp = dispinterface
    ['{6E4E3322-DE80-4432-BB57-618FF12D6098}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property AttrType: Integer readonly dispid 203;
    property DefaultValue: WideString readonly dispid 204;
    property ValueList: WideString readonly dispid 205;
    property IsSystem: WordBool readonly dispid 206;
    property OnlyListValues: WordBool readonly dispid 207;
    property Measures: IMeasureCollection readonly dispid 210;
    property DefaultMeasure: IMeasure readonly dispid 211;
    property RoleAccess[const aStateName: WideString]: Integer readonly dispid 212;
  end;

// *********************************************************************//
// Interface: ICheckoutablePDMEntity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B77A7E1D-154C-4E11-9104-4E3ECD16FF62}
// *********************************************************************//
  ICheckoutablePDMEntity = interface(IEditablePDMItem)
    ['{B77A7E1D-154C-4E11-9104-4E3ECD16FF62}']
    function Get_CopyForCheckout: Integer; safecall;
    property CopyForCheckout: Integer read Get_CopyForCheckout;
  end;

// *********************************************************************//
// DispIntf:  ICheckoutablePDMEntityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B77A7E1D-154C-4E11-9104-4E3ECD16FF62}
// *********************************************************************//
  ICheckoutablePDMEntityDisp = dispinterface
    ['{B77A7E1D-154C-4E11-9104-4E3ECD16FF62}']
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const NotificationSource: WideString): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMAttrValueCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {42201F0C-464A-4148-8B0D-0FD8C4E9FD1F}
// *********************************************************************//
  IPDMAttrValueCollection = interface(IBasePDMCollection)
    ['{42201F0C-464A-4148-8B0D-0FD8C4E9FD1F}']
    function Get_AttrValues(Index: Integer): IPDMAttributeValue; safecall;
    function AttrsByTypes(const AttrTypes: WideString; InverseCondition: WordBool): IPDMAttrValueCollection; safecall;
    property AttrValues[Index: Integer]: IPDMAttributeValue read Get_AttrValues;
  end;

// *********************************************************************//
// DispIntf:  IPDMAttrValueCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {42201F0C-464A-4148-8B0D-0FD8C4E9FD1F}
// *********************************************************************//
  IPDMAttrValueCollectionDisp = dispinterface
    ['{42201F0C-464A-4148-8B0D-0FD8C4E9FD1F}']
    property AttrValues[Index: Integer]: IPDMAttributeValue readonly dispid 240;
    function AttrsByTypes(const AttrTypes: WideString; InverseCondition: WordBool): IPDMAttrValueCollection; dispid 241;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMAttrValueProvider
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43CE66E3-8062-4CF1-A61F-5F6E3603006D}
// *********************************************************************//
  IPDMAttrValueProvider = interface(IDispatch)
    ['{43CE66E3-8062-4CF1-A61F-5F6E3603006D}']
    function GetAttrValue(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMAttributeValue; safecall;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut): IPDMAttrValueCollection; safecall;
    function GetCollectionByOwner(const Owner: ICheckoutablePDMEntity; Mode: GetCollectionMode): IPDMAttrValueCollection; safecall;
    procedure Refresh(const Item: ICheckoutablePDMEntity); safecall;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); safecall;
    function GetTypedCollectionByOwner(const Owner: ICheckoutablePDMEntity; 
                                       const AttrTypes: WideString; Mode: GetCollectionMode): IPDMAttrValueCollection; safecall;
    function GetCollectionByOwnersIDs(const OwnerIDs: WideString; LinkAttrs: WordBool; 
                                      const AttrTypes: WideString; Mode: GetCollectionMode; 
                                      const Checkout: ICheckOut): IPDMAttrValueCollection; safecall;
    function CreateEmptyCollection: IPDMAttrValueCollection; safecall;
    procedure ClearProperties(const AttrValue: IPDMAttributeValue); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDMAttrValueProviderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43CE66E3-8062-4CF1-A61F-5F6E3603006D}
// *********************************************************************//
  IPDMAttrValueProviderDisp = dispinterface
    ['{43CE66E3-8062-4CF1-A61F-5F6E3603006D}']
    function GetAttrValue(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMAttributeValue; dispid 201;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut): IPDMAttrValueCollection; dispid 202;
    function GetCollectionByOwner(const Owner: ICheckoutablePDMEntity; Mode: GetCollectionMode): IPDMAttrValueCollection; dispid 203;
    procedure Refresh(const Item: ICheckoutablePDMEntity); dispid 204;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); dispid 205;
    function GetTypedCollectionByOwner(const Owner: ICheckoutablePDMEntity; 
                                       const AttrTypes: WideString; Mode: GetCollectionMode): IPDMAttrValueCollection; dispid 206;
    function GetCollectionByOwnersIDs(const OwnerIDs: WideString; LinkAttrs: WordBool; 
                                      const AttrTypes: WideString; Mode: GetCollectionMode; 
                                      const Checkout: ICheckOut): IPDMAttrValueCollection; dispid 207;
    function CreateEmptyCollection: IPDMAttrValueCollection; dispid 208;
    procedure ClearProperties(const AttrValue: IPDMAttributeValue); dispid 209;
  end;

// *********************************************************************//
// Interface: IPDMEntityManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB63DB05-F5B0-4F31-A1E2-D51F9C38E95A}
// *********************************************************************//
  IPDMEntityManager = interface(IDispatch)
    ['{EB63DB05-F5B0-4F31-A1E2-D51F9C38E95A}']
    function GetObjectProvider: IPDMObjectProvider; safecall;
    function GetLinkProvider: IPDMLinkProvider; safecall;
    function GetAttrValueProvider: IPDMAttrValueProvider; safecall;
    function GetMetaData: ILoodsmanMetaData; safecall;
    function GetCheckoutList: ICheckOutList; safecall;
    function Get_DBConnection: ISimpleAPI2; safecall;
    procedure Set_DBConnection(const Value: ISimpleAPI2); safecall;
    procedure ClearAllItemsProperties(CheckOutID: Integer); safecall;
    procedure RefreshAll; safecall;
    function GetUtils: ILoodsmanObjectsUtils; safecall;
    function Get_Logger: ILoodsmanLogger; safecall;
    procedure Set_Logger(const Value: ILoodsmanLogger); safecall;
    procedure UnInit; safecall;
    procedure SetDebugger(const Debugger: IPDMModelDebugger); safecall;
    property DBConnection: ISimpleAPI2 read Get_DBConnection write Set_DBConnection;
    property Logger: ILoodsmanLogger read Get_Logger write Set_Logger;
  end;

// *********************************************************************//
// DispIntf:  IPDMEntityManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB63DB05-F5B0-4F31-A1E2-D51F9C38E95A}
// *********************************************************************//
  IPDMEntityManagerDisp = dispinterface
    ['{EB63DB05-F5B0-4F31-A1E2-D51F9C38E95A}']
    function GetObjectProvider: IPDMObjectProvider; dispid 201;
    function GetLinkProvider: IPDMLinkProvider; dispid 202;
    function GetAttrValueProvider: IPDMAttrValueProvider; dispid 203;
    function GetMetaData: ILoodsmanMetaData; dispid 204;
    function GetCheckoutList: ICheckOutList; dispid 205;
    property DBConnection: ISimpleAPI2 dispid 206;
    procedure ClearAllItemsProperties(CheckOutID: Integer); dispid 207;
    procedure RefreshAll; dispid 208;
    function GetUtils: ILoodsmanObjectsUtils; dispid 209;
    property Logger: ILoodsmanLogger dispid 210;
    procedure UnInit; dispid 211;
    procedure SetDebugger(const Debugger: IPDMModelDebugger); dispid 212;
  end;

// *********************************************************************//
// Interface: IPDMFile2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1EEE30B3-F72B-45D7-B4CD-A62675637AD0}
// *********************************************************************//
  IPDMFile2 = interface(ICheckoutablePDMEntity)
    ['{1EEE30B3-F72B-45D7-B4CD-A62675637AD0}']
    function Get_FileOwner: IPDMObject2; safecall;
    function Get_FileNameInLoodsman: WideString; safecall;
    procedure Set_FileNameInLoodsman(const Value: WideString); safecall;
    function Get_FilePathInLoodsman: WideString; safecall;
    procedure Set_FilePathInLoodsman(const Value: WideString); safecall;
    function Get_Size: Int64; safecall;
    function Get_Created: Double; safecall;
    function Get_Modified: Double; safecall;
    function Get_ReadOnly: WordBool; safecall;
    function GetFileForOpen: WideString; safecall;
    function GetFileForOpenEx(aMode: Integer): WideString; safecall;
    function Get_UploadFrom: WideString; safecall;
    procedure Set_UploadFrom(const FileName: WideString); safecall;
    function Get_CRC: LongWord; safecall;
    property FileOwner: IPDMObject2 read Get_FileOwner;
    property FileNameInLoodsman: WideString read Get_FileNameInLoodsman write Set_FileNameInLoodsman;
    property FilePathInLoodsman: WideString read Get_FilePathInLoodsman write Set_FilePathInLoodsman;
    property Size: Int64 read Get_Size;
    property Created: Double read Get_Created;
    property Modified: Double read Get_Modified;
    property ReadOnly: WordBool read Get_ReadOnly;
    property UploadFrom: WideString read Get_UploadFrom write Set_UploadFrom;
    property CRC: LongWord read Get_CRC;
  end;

// *********************************************************************//
// DispIntf:  IPDMFile2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1EEE30B3-F72B-45D7-B4CD-A62675637AD0}
// *********************************************************************//
  IPDMFile2Disp = dispinterface
    ['{1EEE30B3-F72B-45D7-B4CD-A62675637AD0}']
    property FileOwner: IPDMObject2 readonly dispid 213;
    property FileNameInLoodsman: WideString dispid 214;
    property FilePathInLoodsman: WideString dispid 215;
    property Size: {??Int64}OleVariant readonly dispid 216;
    property Created: Double readonly dispid 217;
    property Modified: Double readonly dispid 218;
    property ReadOnly: WordBool readonly dispid 219;
    function GetFileForOpen: WideString; dispid 220;
    function GetFileForOpenEx(aMode: Integer): WideString; dispid 223;
    property UploadFrom: WideString dispid 221;
    property CRC: LongWord readonly dispid 222;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const NotificationSource: WideString): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMFilesCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {657F5237-FD07-49AC-B47A-EB6B0F34A2B9}
// *********************************************************************//
  IPDMFilesCollection = interface(IBasePDMCollection)
    ['{657F5237-FD07-49AC-B47A-EB6B0F34A2B9}']
    function Get_PDMFiles(Index: Integer): IPDMFile2; safecall;
    property PDMFiles[Index: Integer]: IPDMFile2 read Get_PDMFiles;
  end;

// *********************************************************************//
// DispIntf:  IPDMFilesCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {657F5237-FD07-49AC-B47A-EB6B0F34A2B9}
// *********************************************************************//
  IPDMFilesCollectionDisp = dispinterface
    ['{657F5237-FD07-49AC-B47A-EB6B0F34A2B9}']
    property PDMFiles[Index: Integer]: IPDMFile2 readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMAttributeValue
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AB6C565B-A5C4-4E22-B447-316E8816E601}
// *********************************************************************//
  IPDMAttributeValue = interface(ICheckoutablePDMEntity)
    ['{AB6C565B-A5C4-4E22-B447-316E8816E601}']
    function Get_AttrOwner: IAttributedPDMEntity; safecall;
    function Get_AttrOwnerID: Integer; safecall;
    function Get_IsLinkAttr: WordBool; safecall;
    function Get_Attribute: IPDMAttribute2; safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(Value: OleVariant); safecall;
    function Get_StrValue: WideString; safecall;
    function Get_UnitID: WideString; safecall;
    procedure Set_UnitID(const Value: WideString); safecall;
    function Get_UnitName: WideString; safecall;
    function Get_MeasureID: WideString; safecall;
    procedure Set_MeasureID(const Value: WideString); safecall;
    function Get_MeasureName: WideString; safecall;
    function Get_IsObjectAttr: WordBool; safecall;
    function Get_BinaryViewStrValue: WideString; safecall;
    procedure Set_BinaryViewStrValue(const Value: WideString); safecall;
    function Get_IsLinkEntryAttr: WordBool; safecall;
    function Get_BOAttrValue: WideString; safecall;
    procedure Set_BOAttrValue(const aXML: WideString); safecall;
    function Get_BOMappedAttribute: IPDMTypePolynomMappedAttributesItem; safecall;
    function Get_Location: WideString; safecall;
    property AttrOwner: IAttributedPDMEntity read Get_AttrOwner;
    property AttrOwnerID: Integer read Get_AttrOwnerID;
    property IsLinkAttr: WordBool read Get_IsLinkAttr;
    property Attribute: IPDMAttribute2 read Get_Attribute;
    property Value: OleVariant read Get_Value write Set_Value;
    property StrValue: WideString read Get_StrValue;
    property UnitID: WideString read Get_UnitID write Set_UnitID;
    property UnitName: WideString read Get_UnitName;
    property MeasureID: WideString read Get_MeasureID write Set_MeasureID;
    property MeasureName: WideString read Get_MeasureName;
    property IsObjectAttr: WordBool read Get_IsObjectAttr;
    property BinaryViewStrValue: WideString read Get_BinaryViewStrValue write Set_BinaryViewStrValue;
    property IsLinkEntryAttr: WordBool read Get_IsLinkEntryAttr;
    property BOAttrValue: WideString read Get_BOAttrValue write Set_BOAttrValue;
    property BOMappedAttribute: IPDMTypePolynomMappedAttributesItem read Get_BOMappedAttribute;
    property Location: WideString read Get_Location;
  end;

// *********************************************************************//
// DispIntf:  IPDMAttributeValueDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AB6C565B-A5C4-4E22-B447-316E8816E601}
// *********************************************************************//
  IPDMAttributeValueDisp = dispinterface
    ['{AB6C565B-A5C4-4E22-B447-316E8816E601}']
    property AttrOwner: IAttributedPDMEntity readonly dispid 213;
    property AttrOwnerID: Integer readonly dispid 214;
    property IsLinkAttr: WordBool readonly dispid 215;
    property Attribute: IPDMAttribute2 readonly dispid 216;
    property Value: OleVariant dispid 217;
    property StrValue: WideString readonly dispid 218;
    property UnitID: WideString dispid 219;
    property UnitName: WideString readonly dispid 220;
    property MeasureID: WideString dispid 221;
    property MeasureName: WideString readonly dispid 222;
    property IsObjectAttr: WordBool readonly dispid 223;
    property BinaryViewStrValue: WideString dispid 224;
    property IsLinkEntryAttr: WordBool readonly dispid 225;
    property BOAttrValue: WideString dispid 226;
    property BOMappedAttribute: IPDMTypePolynomMappedAttributesItem readonly dispid 227;
    property Location: WideString readonly dispid 244;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const NotificationSource: WideString): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IAttributedPDMEntity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9AAA405F-4AB5-41D7-9255-F20F70A23B2C}
// *********************************************************************//
  IAttributedPDMEntity = interface(ICheckoutablePDMEntity)
    ['{9AAA405F-4AB5-41D7-9255-F20F70A23B2C}']
    function Get_Attrs: IPDMEntityAttrValues; safecall;
    property Attrs: IPDMEntityAttrValues read Get_Attrs;
  end;

// *********************************************************************//
// DispIntf:  IAttributedPDMEntityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9AAA405F-4AB5-41D7-9255-F20F70A23B2C}
// *********************************************************************//
  IAttributedPDMEntityDisp = dispinterface
    ['{9AAA405F-4AB5-41D7-9255-F20F70A23B2C}']
    property Attrs: IPDMEntityAttrValues readonly dispid 213;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const NotificationSource: WideString): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMLinkCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8E3401D-E1B8-40A6-886C-CAE64C58425C}
// *********************************************************************//
  IPDMLinkCollection = interface(IBasePDMCollection)
    ['{F8E3401D-E1B8-40A6-886C-CAE64C58425C}']
    function Get_ParentObjects: IPDMObjectCollection; safecall;
    function Get_ChildObjects: IPDMObjectCollection; safecall;
    function Get_LinksAttrs: IPDMAttrValueCollection; safecall;
    function Get_Links(Index: Integer): IPDMLink2; safecall;
    function LinksByParent(const PDMObject: IPDMObject2): IPDMLinkCollection; safecall;
    function LinksByChild(const PDMObject: IPDMObject2): IPDMLinkCollection; safecall;
    function LinksByTypes(const LinkTypes: WideString; InverseCondition: WordBool): IPDMLinkCollection; safecall;
    function Get_LinksTypes: WideString; safecall;
    function HorizontalLinks: IPDMLinkCollection; safecall;
    property ParentObjects: IPDMObjectCollection read Get_ParentObjects;
    property ChildObjects: IPDMObjectCollection read Get_ChildObjects;
    property LinksAttrs: IPDMAttrValueCollection read Get_LinksAttrs;
    property Links[Index: Integer]: IPDMLink2 read Get_Links;
    property LinksTypes: WideString read Get_LinksTypes;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8E3401D-E1B8-40A6-886C-CAE64C58425C}
// *********************************************************************//
  IPDMLinkCollectionDisp = dispinterface
    ['{F8E3401D-E1B8-40A6-886C-CAE64C58425C}']
    property ParentObjects: IPDMObjectCollection readonly dispid 240;
    property ChildObjects: IPDMObjectCollection readonly dispid 241;
    property LinksAttrs: IPDMAttrValueCollection readonly dispid 242;
    property Links[Index: Integer]: IPDMLink2 readonly dispid 243;
    function LinksByParent(const PDMObject: IPDMObject2): IPDMLinkCollection; dispid 245;
    function LinksByChild(const PDMObject: IPDMObject2): IPDMLinkCollection; dispid 246;
    function LinksByTypes(const LinkTypes: WideString; InverseCondition: WordBool): IPDMLinkCollection; dispid 247;
    property LinksTypes: WideString readonly dispid 248;
    function HorizontalLinks: IPDMLinkCollection; dispid 249;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMLinkProvider
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D12BC5B1-EF6D-4FB9-B078-1966D71E6DF2}
// *********************************************************************//
  IPDMLinkProvider = interface(IDispatch)
    ['{D12BC5B1-EF6D-4FB9-B078-1966D71E6DF2}']
    function GetLink(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMLink2; safecall;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut; WithObjects: WordBool): IPDMLinkCollection; safecall;
    function GetCollectionByObjectsIDs(const OwnerIDs: WideString; Kind: LinkKinds; 
                                       const LinkTypes: WideString; Mode: GetCollectionMode; 
                                       const Checkout: ICheckOut): IPDMLinkCollection; safecall;
    procedure Refresh(const Item: ICheckoutablePDMEntity); safecall;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); safecall;
    function CreateEmptyCollection: IPDMLinkCollection; safecall;
    procedure ClearProperties(const Link: IPDMLink2; WithSubItems: WordBool); safecall;
    function LoadLinksAttrs(const Links: IPDMLinkCollection; const AttrTypes: IBasePDMCollection; 
                            Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMAttrValueCollection; safecall;
    procedure LoadLinksEntries(const aLinks: IPDMLinkCollection; aWithAttrs: WordBool; 
                               aWithAbsEntries: WordBool; const aCheckOut: ICheckOut); safecall;
    procedure MoveLinkEntriesToLink(const aPDMLinkEntriesCollection: IBasePDMCollection; 
                                    const aNewLink: IPDMLink2; const aCheckOut: ICheckOut); safecall;
    procedure UpdateLinkByBoObject(const Link: IPDMLink2); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkProviderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D12BC5B1-EF6D-4FB9-B078-1966D71E6DF2}
// *********************************************************************//
  IPDMLinkProviderDisp = dispinterface
    ['{D12BC5B1-EF6D-4FB9-B078-1966D71E6DF2}']
    function GetLink(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMLink2; dispid 201;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut; WithObjects: WordBool): IPDMLinkCollection; dispid 202;
    function GetCollectionByObjectsIDs(const OwnerIDs: WideString; Kind: LinkKinds; 
                                       const LinkTypes: WideString; Mode: GetCollectionMode; 
                                       const Checkout: ICheckOut): IPDMLinkCollection; dispid 203;
    procedure Refresh(const Item: ICheckoutablePDMEntity); dispid 204;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); dispid 205;
    function CreateEmptyCollection: IPDMLinkCollection; dispid 206;
    procedure ClearProperties(const Link: IPDMLink2; WithSubItems: WordBool); dispid 207;
    function LoadLinksAttrs(const Links: IPDMLinkCollection; const AttrTypes: IBasePDMCollection; 
                            Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMAttrValueCollection; dispid 208;
    procedure LoadLinksEntries(const aLinks: IPDMLinkCollection; aWithAttrs: WordBool; 
                               aWithAbsEntries: WordBool; const aCheckOut: ICheckOut); dispid 209;
    procedure MoveLinkEntriesToLink(const aPDMLinkEntriesCollection: IBasePDMCollection; 
                                    const aNewLink: IPDMLink2; const aCheckOut: ICheckOut); dispid 210;
    procedure UpdateLinkByBoObject(const Link: IPDMLink2); dispid 211;
  end;

// *********************************************************************//
// Interface: IPDMLinkType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5884E23-78D8-4F49-8DD4-3002CCF9A15B}
// *********************************************************************//
  IPDMLinkType = interface(IDispatch)
    ['{F5884E23-78D8-4F49-8DD4-3002CCF9A15B}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_InverseName: WideString; safecall;
    function Get_Horizontal: WordBool; safecall;
    function Get_Order: Integer; safecall;
    function Get_IconIndex: Integer; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property InverseName: WideString read Get_InverseName;
    property Horizontal: WordBool read Get_Horizontal;
    property Order: Integer read Get_Order;
    property IconIndex: Integer read Get_IconIndex;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5884E23-78D8-4F49-8DD4-3002CCF9A15B}
// *********************************************************************//
  IPDMLinkTypeDisp = dispinterface
    ['{F5884E23-78D8-4F49-8DD4-3002CCF9A15B}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property InverseName: WideString readonly dispid 203;
    property Horizontal: WordBool readonly dispid 204;
    property Order: Integer readonly dispid 205;
    property IconIndex: Integer readonly dispid 206;
  end;

// *********************************************************************//
// Interface: IPDMObject2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5E3BCC12-71E9-4771-AE8B-94116EA6A7CB}
// *********************************************************************//
  IPDMObject2 = interface(IAttributedPDMEntity)
    ['{5E3BCC12-71E9-4771-AE8B-94116EA6A7CB}']
    function Get_TypeName: WideString; safecall;
    function Get_StateName: WideString; safecall;
    procedure Set_StateName(const Value: WideString); safecall;
    function Get_Version: WideString; safecall;
    function Get_IsDocument: WordBool; safecall;
    function Get_ExistStatus: Integer; safecall;
    function Get_NextStatesIDs: WideString; safecall;
    function Get_IsProject: WordBool; safecall;
    procedure Set_IsProject(Value: WordBool); safecall;
    function Get_SecondaryViewFileName: WideString; safecall;
    function Get_SourceVersion: IPDMObject2; safecall;
    function Get_Access: IObjectAccessInfo; safecall;
    function Get_AccessLevel: Integer; safecall;
    function Get_LockInfo: ILockInfo; safecall;
    function Get_Creator: WideString; safecall;
    function Get_CreatorFullName: WideString; safecall;
    function Get_DateOfCreate: Double; safecall;
    function Get_Links: IPDMObjectLinks; safecall;
    function Get_Files: IPDMObjectFiles; safecall;
    function Get_Source: WideString; safecall;
    function Get_DateOfModify: Double; safecall;
    procedure SetNewProduct(const Value: WideString); safecall;
    function Get_Signed: WordBool; safecall;
    function Get_SecondaryViewFileExt: WideString; safecall;
    function Get_LastChangeTime: Double; safecall;
    function Get_LastChangeLinksTime: Double; safecall;
    function Get_ObjectType: IPDMObjectType; safecall;
    function Get_Location: WideString; safecall;
    procedure Set_Location(const Value: WideString); safecall;
    function Get_NextStates: IBasePDMCollection; safecall;
    function Get_HasSimilarObject: WordBool; safecall;
    function Get_ChangeLoggers: IChangeLoggersList; safecall;
    function Get_VersionSet: IPDMVersionSet; safecall;
    function Get_StateId: Integer; safecall;
    function Get_NotesNeedsDecisionCount: Integer; safecall;
    function Get_GUID: WideString; safecall;
    function Get_DistributedOrigin: WordBool; safecall;
    function Get_DistributedParticipant: WideString; safecall;
    function Get_DistributedStub: WordBool; safecall;
    function Get_RootAbsEntriesCollection(aMode: GetCollectionMode): IPDMLinkAbsEntries; safecall;
    function Get_ClassificationProperties(aMode: GetCollectionMode): WideString; safecall;
    function Get_PreviewBoObject(aMode: GetCollectionMode; aIsUpdateByObject: WordBool): WideString; safecall;
    function Get_PolynomBindingRule: IPDMTypePolynomGroupBindingRuleItem; safecall;
    function Get_PolynomStatesRule: IPDMTypePolynomBindingRule; safecall;
    function Get_ConfigurationProperties: IPDMObjectConfigurationProperties; safecall;
    function Get_ConfigurationCollection(aMode: GetCollectionMode): IPDMObjectCollection; safecall;
    function Get_ClassificationLocation: WideString; safecall;
    procedure Set_ClassificationLocation(const Value: WideString); safecall;
    property TypeName: WideString read Get_TypeName;
    property StateName: WideString read Get_StateName write Set_StateName;
    property Version: WideString read Get_Version;
    property IsDocument: WordBool read Get_IsDocument;
    property ExistStatus: Integer read Get_ExistStatus;
    property NextStatesIDs: WideString read Get_NextStatesIDs;
    property IsProject: WordBool read Get_IsProject write Set_IsProject;
    property SecondaryViewFileName: WideString read Get_SecondaryViewFileName;
    property SourceVersion: IPDMObject2 read Get_SourceVersion;
    property Access: IObjectAccessInfo read Get_Access;
    property AccessLevel: Integer read Get_AccessLevel;
    property LockInfo: ILockInfo read Get_LockInfo;
    property Creator: WideString read Get_Creator;
    property CreatorFullName: WideString read Get_CreatorFullName;
    property DateOfCreate: Double read Get_DateOfCreate;
    property Links: IPDMObjectLinks read Get_Links;
    property Files: IPDMObjectFiles read Get_Files;
    property Source: WideString read Get_Source;
    property DateOfModify: Double read Get_DateOfModify;
    property Signed: WordBool read Get_Signed;
    property SecondaryViewFileExt: WideString read Get_SecondaryViewFileExt;
    property LastChangeTime: Double read Get_LastChangeTime;
    property LastChangeLinksTime: Double read Get_LastChangeLinksTime;
    property ObjectType: IPDMObjectType read Get_ObjectType;
    property Location: WideString read Get_Location write Set_Location;
    property NextStates: IBasePDMCollection read Get_NextStates;
    property HasSimilarObject: WordBool read Get_HasSimilarObject;
    property ChangeLoggers: IChangeLoggersList read Get_ChangeLoggers;
    property VersionSet: IPDMVersionSet read Get_VersionSet;
    property StateId: Integer read Get_StateId;
    property NotesNeedsDecisionCount: Integer read Get_NotesNeedsDecisionCount;
    property GUID: WideString read Get_GUID;
    property DistributedOrigin: WordBool read Get_DistributedOrigin;
    property DistributedParticipant: WideString read Get_DistributedParticipant;
    property DistributedStub: WordBool read Get_DistributedStub;
    property RootAbsEntriesCollection[aMode: GetCollectionMode]: IPDMLinkAbsEntries read Get_RootAbsEntriesCollection;
    property ClassificationProperties[aMode: GetCollectionMode]: WideString read Get_ClassificationProperties;
    property PreviewBoObject[aMode: GetCollectionMode; aIsUpdateByObject: WordBool]: WideString read Get_PreviewBoObject;
    property PolynomBindingRule: IPDMTypePolynomGroupBindingRuleItem read Get_PolynomBindingRule;
    property PolynomStatesRule: IPDMTypePolynomBindingRule read Get_PolynomStatesRule;
    property ConfigurationProperties: IPDMObjectConfigurationProperties read Get_ConfigurationProperties;
    property ConfigurationCollection[aMode: GetCollectionMode]: IPDMObjectCollection read Get_ConfigurationCollection;
    property ClassificationLocation: WideString read Get_ClassificationLocation write Set_ClassificationLocation;
  end;

// *********************************************************************//
// DispIntf:  IPDMObject2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5E3BCC12-71E9-4771-AE8B-94116EA6A7CB}
// *********************************************************************//
  IPDMObject2Disp = dispinterface
    ['{5E3BCC12-71E9-4771-AE8B-94116EA6A7CB}']
    property TypeName: WideString readonly dispid 218;
    property StateName: WideString dispid 219;
    property Version: WideString readonly dispid 221;
    property IsDocument: WordBool readonly dispid 222;
    property ExistStatus: Integer readonly dispid 223;
    property NextStatesIDs: WideString readonly dispid 224;
    property IsProject: WordBool dispid 226;
    property SecondaryViewFileName: WideString readonly dispid 227;
    property SourceVersion: IPDMObject2 readonly dispid 228;
    property Access: IObjectAccessInfo readonly dispid 229;
    property AccessLevel: Integer readonly dispid 230;
    property LockInfo: ILockInfo readonly dispid 231;
    property Creator: WideString readonly dispid 232;
    property CreatorFullName: WideString readonly dispid 233;
    property DateOfCreate: Double readonly dispid 234;
    property Links: IPDMObjectLinks readonly dispid 235;
    property Files: IPDMObjectFiles readonly dispid 237;
    property Source: WideString readonly dispid 238;
    property DateOfModify: Double readonly dispid 239;
    procedure SetNewProduct(const Value: WideString); dispid 240;
    property Signed: WordBool readonly dispid 241;
    property SecondaryViewFileExt: WideString readonly dispid 242;
    property LastChangeTime: Double readonly dispid 243;
    property LastChangeLinksTime: Double readonly dispid 244;
    property ObjectType: IPDMObjectType readonly dispid 246;
    property Location: WideString dispid 247;
    property NextStates: IBasePDMCollection readonly dispid 248;
    property HasSimilarObject: WordBool readonly dispid 249;
    property ChangeLoggers: IChangeLoggersList readonly dispid 251;
    property VersionSet: IPDMVersionSet readonly dispid 252;
    property StateId: Integer readonly dispid 253;
    property NotesNeedsDecisionCount: Integer readonly dispid 254;
    property GUID: WideString readonly dispid 255;
    property DistributedOrigin: WordBool readonly dispid 256;
    property DistributedParticipant: WideString readonly dispid 257;
    property DistributedStub: WordBool readonly dispid 258;
    property RootAbsEntriesCollection[aMode: GetCollectionMode]: IPDMLinkAbsEntries readonly dispid 259;
    property ClassificationProperties[aMode: GetCollectionMode]: WideString readonly dispid 260;
    property PreviewBoObject[aMode: GetCollectionMode; aIsUpdateByObject: WordBool]: WideString readonly dispid 261;
    property PolynomBindingRule: IPDMTypePolynomGroupBindingRuleItem readonly dispid 262;
    property PolynomStatesRule: IPDMTypePolynomBindingRule readonly dispid 263;
    property ConfigurationProperties: IPDMObjectConfigurationProperties readonly dispid 264;
    property ConfigurationCollection[aMode: GetCollectionMode]: IPDMObjectCollection readonly dispid 265;
    property ClassificationLocation: WideString dispid 266;
    property Attrs: IPDMEntityAttrValues readonly dispid 213;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const NotificationSource: WideString): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMObjectCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF85C681-9CAD-43DF-A720-26A9F2462FDA}
// *********************************************************************//
  IPDMObjectCollection = interface(IBasePDMCollection)
    ['{BF85C681-9CAD-43DF-A720-26A9F2462FDA}']
    function Get_ObjectAttrs: IPDMAttrValueCollection; safecall;
    function Get_PDMObjects(Index: Integer): IPDMObject2; safecall;
    function ObjectsByTypes(const ObjTypes: WideString; InverseCondition: WordBool): IPDMObjectCollection; safecall;
    function ObjectsByStates(const ObjStates: WideString; InverseCondition: WordBool): IPDMObjectCollection; safecall;
    property ObjectAttrs: IPDMAttrValueCollection read Get_ObjectAttrs;
    property PDMObjects[Index: Integer]: IPDMObject2 read Get_PDMObjects;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF85C681-9CAD-43DF-A720-26A9F2462FDA}
// *********************************************************************//
  IPDMObjectCollectionDisp = dispinterface
    ['{BF85C681-9CAD-43DF-A720-26A9F2462FDA}']
    property ObjectAttrs: IPDMAttrValueCollection readonly dispid 240;
    property PDMObjects[Index: Integer]: IPDMObject2 readonly dispid 241;
    function ObjectsByTypes(const ObjTypes: WideString; InverseCondition: WordBool): IPDMObjectCollection; dispid 242;
    function ObjectsByStates(const ObjStates: WideString; InverseCondition: WordBool): IPDMObjectCollection; dispid 243;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMObjectLinks
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB4BAAB7-AEF7-426E-B820-967E265B6382}
// *********************************************************************//
  IPDMObjectLinks = interface(IDispatch)
    ['{EB4BAAB7-AEF7-426E-B820-967E265B6382}']
    function Get_AllLinks: IPDMLinkCollection; safecall;
    function LoadLinks(Kind: LinkKinds; const LinkTypes: WideString; Mode: GetCollectionMode): IPDMLinkCollection; safecall;
    function LoadLinksWithAttrs(Kind: LinkKinds; const LinkTypes: WideString; 
                                Mode: GetCollectionMode): IPDMLinkCollection; safecall;
    function AddLink(const LinkType: WideString; const ToObject: IPDMObject2; Inverse: WordBool): IPDMLink2; safecall;
    procedure Delete(const Link: IPDMLink2); safecall;
    function Get_Initialized: WordBool; safecall;
    function LoadLinksEx(Kind: LinkKinds; const LinkTypes: WideString; Mode: GetCollectionMode; 
                         ClearItemsProps: WordBool; WithAttrs: WordBool): IPDMLinkCollection; safecall;
    function LoadLinksDynamic(aRuleID: Integer; aFinalProductID: Integer; aFixedContexID: Integer; 
                              aQuickParamValues: OleVariant; aPath: OleVariant; 
                              const aVerticalUpLinkTypes: WideString; 
                              const aVerticalDownLinkTypes: WideString; 
                              const aHorizontalLinkTypes: WideString; 
                              aCollectionMode: GetCollectionMode; aClearItemsProps: WordBool; 
                              aWithAttrs: WordBool; out aData: OleVariant): IPDMLinkCollection; safecall;
    function LoadConfigurationLinksDynamic(aConfigurationVersionId: Integer; 
                                           const aVerticalDownLinkTypes: WideString; 
                                           const aVerticalUpLinkTypes: WideString; 
                                           const aHorizontalLinkTypes: WideString; 
                                           aCollectionMode: GetCollectionMode; 
                                           aClearItemsProps: WordBool; aWithAttrs: WordBool; 
                                           aMode: Integer; aOptions: Integer; out aData: OleVariant): IPDMLinkCollection; safecall;
    property AllLinks: IPDMLinkCollection read Get_AllLinks;
    property Initialized: WordBool read Get_Initialized;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectLinksDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB4BAAB7-AEF7-426E-B820-967E265B6382}
// *********************************************************************//
  IPDMObjectLinksDisp = dispinterface
    ['{EB4BAAB7-AEF7-426E-B820-967E265B6382}']
    property AllLinks: IPDMLinkCollection readonly dispid 201;
    function LoadLinks(Kind: LinkKinds; const LinkTypes: WideString; Mode: GetCollectionMode): IPDMLinkCollection; dispid 202;
    function LoadLinksWithAttrs(Kind: LinkKinds; const LinkTypes: WideString; 
                                Mode: GetCollectionMode): IPDMLinkCollection; dispid 203;
    function AddLink(const LinkType: WideString; const ToObject: IPDMObject2; Inverse: WordBool): IPDMLink2; dispid 204;
    procedure Delete(const Link: IPDMLink2); dispid 205;
    property Initialized: WordBool readonly dispid 206;
    function LoadLinksEx(Kind: LinkKinds; const LinkTypes: WideString; Mode: GetCollectionMode; 
                         ClearItemsProps: WordBool; WithAttrs: WordBool): IPDMLinkCollection; dispid 208;
    function LoadLinksDynamic(aRuleID: Integer; aFinalProductID: Integer; aFixedContexID: Integer; 
                              aQuickParamValues: OleVariant; aPath: OleVariant; 
                              const aVerticalUpLinkTypes: WideString; 
                              const aVerticalDownLinkTypes: WideString; 
                              const aHorizontalLinkTypes: WideString; 
                              aCollectionMode: GetCollectionMode; aClearItemsProps: WordBool; 
                              aWithAttrs: WordBool; out aData: OleVariant): IPDMLinkCollection; dispid 209;
    function LoadConfigurationLinksDynamic(aConfigurationVersionId: Integer; 
                                           const aVerticalDownLinkTypes: WideString; 
                                           const aVerticalUpLinkTypes: WideString; 
                                           const aHorizontalLinkTypes: WideString; 
                                           aCollectionMode: GetCollectionMode; 
                                           aClearItemsProps: WordBool; aWithAttrs: WordBool; 
                                           aMode: Integer; aOptions: Integer; out aData: OleVariant): IPDMLinkCollection; dispid 210;
  end;

// *********************************************************************//
// Interface: IPDMObjectProvider
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {816E35A7-527D-4E75-93D0-B4E2A398AFCA}
// *********************************************************************//
  IPDMObjectProvider = interface(IDispatch)
    ['{816E35A7-527D-4E75-93D0-B4E2A398AFCA}']
    function GetObject(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMObject2; safecall;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut; WithAttrs: WordBool): IPDMObjectCollection; safecall;
    function GetProjectListCollection(Mode: GetCollectionMode; const Checkout: ICheckOut; 
                                      WithAttrs: WordBool): IPDMObjectCollection; safecall;
    function GetCollectionByUserSet(const UserSetName: WideString; Mode: GetCollectionMode; 
                                    const Checkout: ICheckOut; WithAttrs: WordBool): IPDMObjectCollection; safecall;
    function GetCollectionByLinks(const LinksIDs: WideString; ChildObjects: WordBool; 
                                  const Checkout: ICheckOut): IPDMObjectCollection; safecall;
    function GetEditableObject(const ASourceObject: IPDMObject2): IPDMObject2; safecall;
    function SaveToDB(const PDMObject: IPDMObject2; const CollisionResolver: ICollisionResolver): IPDMObject2; safecall;
    procedure DeleteObject(const PDMObject: IPDMObject2); safecall;
    procedure Refresh(const Item: ICheckoutablePDMEntity); safecall;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); safecall;
    function CreateVersion(const SrcVersion: IPDMObject2; CopyFiles: WordBool; 
                           CopyAccess: WordBool; CanRootVersion: WordBool; Group: Integer; 
                           const Checkout: ICheckOut): IPDMObject2; safecall;
    function CreateProject(const ObjectType: WideString; const State: WideString; 
                           const Name: WideString): IPDMObject2; safecall;
    function CreateObject(const ObjectType: WideString; const State: WideString; 
                          const Name: WideString; const Checkout: ICheckOut): IPDMObject2; safecall;
    function CreateEmptyCollection: IPDMObjectCollection; safecall;
    procedure ClearProperties(const PDMObject: IPDMObject2; WithSubItems: WordBool); safecall;
    procedure UpdateObjectsProperty(const IDs: WideString; const Checkout: ICheckOut; 
                                    PropCode: Integer); safecall;
    function Get_CollisionResolver: ICollisionResolver; safecall;
    procedure Set_CollisionResolver(const Value: ICollisionResolver); safecall;
    procedure RefreshWithTree(const Item: IDispatch); safecall;
    function CreateObjectByLocation(const ObjectType: WideString; const Location: WideString; 
                                    const Checkout: ICheckOut): IPDMObject2; safecall;
    function LoadObjectsAttrs(const Objects: IPDMObjectCollection; 
                              const AttrTypes: IBasePDMCollection; Mode: GetCollectionMode; 
                              const Checkout: ICheckOut): IPDMAttrValueCollection; safecall;
    function LoadObjectsFiles(const Objects: IPDMObjectCollection; Mode: GetCollectionMode; 
                              const Checkout: ICheckOut): IPDMFilesCollection; safecall;
    function UpdateObjectByLocation(const PDMObject: IPDMObject2; const PDMLink: IPDMLink2; 
                                    const Location: WideString; const Checkout: ICheckOut): WordBool; safecall;
    property CollisionResolver: ICollisionResolver read Get_CollisionResolver write Set_CollisionResolver;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectProviderDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {816E35A7-527D-4E75-93D0-B4E2A398AFCA}
// *********************************************************************//
  IPDMObjectProviderDisp = dispinterface
    ['{816E35A7-527D-4E75-93D0-B4E2A398AFCA}']
    function GetObject(ID: Integer; Mode: GetCollectionMode; const Checkout: ICheckOut): IPDMObject2; dispid 201;
    function GetCollectionByIDs(const IDs: WideString; Mode: GetCollectionMode; 
                                const Checkout: ICheckOut; WithAttrs: WordBool): IPDMObjectCollection; dispid 202;
    function GetProjectListCollection(Mode: GetCollectionMode; const Checkout: ICheckOut; 
                                      WithAttrs: WordBool): IPDMObjectCollection; dispid 203;
    function GetCollectionByUserSet(const UserSetName: WideString; Mode: GetCollectionMode; 
                                    const Checkout: ICheckOut; WithAttrs: WordBool): IPDMObjectCollection; dispid 204;
    function GetCollectionByLinks(const LinksIDs: WideString; ChildObjects: WordBool; 
                                  const Checkout: ICheckOut): IPDMObjectCollection; dispid 205;
    function GetEditableObject(const ASourceObject: IPDMObject2): IPDMObject2; dispid 206;
    function SaveToDB(const PDMObject: IPDMObject2; const CollisionResolver: ICollisionResolver): IPDMObject2; dispid 207;
    procedure DeleteObject(const PDMObject: IPDMObject2); dispid 208;
    procedure Refresh(const Item: ICheckoutablePDMEntity); dispid 209;
    procedure RefreshByIDs(const IDs: WideString; CheckOutID: Integer); dispid 210;
    function CreateVersion(const SrcVersion: IPDMObject2; CopyFiles: WordBool; 
                           CopyAccess: WordBool; CanRootVersion: WordBool; Group: Integer; 
                           const Checkout: ICheckOut): IPDMObject2; dispid 211;
    function CreateProject(const ObjectType: WideString; const State: WideString; 
                           const Name: WideString): IPDMObject2; dispid 212;
    function CreateObject(const ObjectType: WideString; const State: WideString; 
                          const Name: WideString; const Checkout: ICheckOut): IPDMObject2; dispid 213;
    function CreateEmptyCollection: IPDMObjectCollection; dispid 214;
    procedure ClearProperties(const PDMObject: IPDMObject2; WithSubItems: WordBool); dispid 215;
    procedure UpdateObjectsProperty(const IDs: WideString; const Checkout: ICheckOut; 
                                    PropCode: Integer); dispid 216;
    property CollisionResolver: ICollisionResolver dispid 217;
    procedure RefreshWithTree(const Item: IDispatch); dispid 218;
    function CreateObjectByLocation(const ObjectType: WideString; const Location: WideString; 
                                    const Checkout: ICheckOut): IPDMObject2; dispid 219;
    function LoadObjectsAttrs(const Objects: IPDMObjectCollection; 
                              const AttrTypes: IBasePDMCollection; Mode: GetCollectionMode; 
                              const Checkout: ICheckOut): IPDMAttrValueCollection; dispid 220;
    function LoadObjectsFiles(const Objects: IPDMObjectCollection; Mode: GetCollectionMode; 
                              const Checkout: ICheckOut): IPDMFilesCollection; dispid 221;
    function UpdateObjectByLocation(const PDMObject: IPDMObject2; const PDMLink: IPDMLink2; 
                                    const Location: WideString; const Checkout: ICheckOut): WordBool; dispid 222;
  end;

// *********************************************************************//
// Interface: IPDMObjectState
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7B5545F-3424-46BE-BB9A-2D0F751265C5}
// *********************************************************************//
  IPDMObjectState = interface(IDispatch)
    ['{B7B5545F-3424-46BE-BB9A-2D0F751265C5}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_IconIndex: Integer; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property IconIndex: Integer read Get_IconIndex;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectStateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B7B5545F-3424-46BE-BB9A-2D0F751265C5}
// *********************************************************************//
  IPDMObjectStateDisp = dispinterface
    ['{B7B5545F-3424-46BE-BB9A-2D0F751265C5}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property IconIndex: Integer readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IPDMSignRole
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C1B1515F-9429-23AC-BB9A-2D0F751899C9}
// *********************************************************************//
  IPDMSignRole = interface(IDispatch)
    ['{C1B1515F-9429-23AC-BB9A-2D0F751899C9}']
    function Get_ID: Integer; safecall;
    function Get_Name: WideString; safecall;
    function Get_IconIndex: Integer; safecall;
    function Get_IsSingle: WordBool; safecall;
    property ID: Integer read Get_ID;
    property Name: WideString read Get_Name;
    property IconIndex: Integer read Get_IconIndex;
    property IsSingle: WordBool read Get_IsSingle;
  end;

// *********************************************************************//
// DispIntf:  IPDMSignRoleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C1B1515F-9429-23AC-BB9A-2D0F751899C9}
// *********************************************************************//
  IPDMSignRoleDisp = dispinterface
    ['{C1B1515F-9429-23AC-BB9A-2D0F751899C9}']
    property ID: Integer readonly dispid 201;
    property Name: WideString readonly dispid 202;
    property IconIndex: Integer readonly dispid 203;
    property IsSingle: WordBool readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMObjectType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1EABCFFA-84FA-4B8C-A756-58014DA93B61}
// *********************************************************************//
  IPDMObjectType = interface(IDispatch)
    ['{1EABCFFA-84FA-4B8C-A756-58014DA93B61}']
    function Get_AttrList: IBasePDMCollection; safecall;
    function IsObligatoryAttr(const Attr: IPDMAttribute2): WordBool; safecall;
    function GetAttrLimits(const Attr: IPDMAttribute2): WideString; safecall;
    function Get_Name: WideString; safecall;
    function Get_ID: Integer; safecall;
    function Get_Cards: WideString; safecall;
    function Get_Links: ILinkBetweenTypesCollection; safecall;
    function Get_IconIndex: Integer; safecall;
    function Get_AvailableStates(ConsiderAccess: WordBool): IBasePDMCollection; safecall;
    function Get_StateTransitions: IBasePDMCollection; safecall;
    function Get_AvailableLinks: WideString; safecall;
    function Get_AvailableInverseLinks: WideString; safecall;
    function Get_AvailableHorizontalLinks: WideString; safecall;
    function Get_HasVirtualLinks: WordBool; safecall;
    function Get_TypeKeyAttr: IPDMAttribute2; safecall;
    function Get_DocumentType: WordBool; safecall;
    function Get_Versioning: WordBool; safecall;
    function Get_BOInfo: IBOTypeInfo; safecall;
    function IsBOMappedAttr(const Attr: IPDMAttribute2): WordBool; safecall;
    function IsBOMappedState: WordBool; safecall;
    function Get_AttrTemplates(const Attr: IPDMAttribute2): IAttrTemplateCollection; safecall;
    function Get_LinksWithType(const SecondType: IPDMObjectType): ILinkBetweenTypesCollection; safecall;
    function Get_DocumentCodes: IBasePDMCollection; safecall;
    function Get_States: ITypeStatesInfo; safecall;
    function TableAttrs(const ProfileName: WideString; const Link: IPDMLinkType): IBasePDMCollection; safecall;
    function TreeAttrs(const ProfileName: WideString; const Link: IPDMLinkType): IBasePDMCollection; safecall;
    function Get_CanBeProject: WordBool; safecall;
    function Get_CanCreate: WordBool; safecall;
    function Get_PolynomRelation(aFlag: TPolynomRelationLevel): WordBool; safecall;
    function Get_PolynomInfo: IPDMTypePolynomInfo; safecall;
    function Get_PolynomClassificationInfo: IPDMTypePolynomClassificationInfo; safecall;
    function GetBOMappedAttr(const Attr: IPDMAttribute2; const PDMObject: IPDMObject2; 
                             Indep: WordBool; const BindingRuleId: WideString): IPDMTypePolynomMappedAttributesItem; safecall;
    function Get_HasQualification(const aQualificationName: WideString): WordBool; safecall;
    function Get_QualificationCollection: IPDMObjectTypeQualificationCollection; safecall;
    function GetBOAccessAttr(const aAttr: IPDMAttribute2; const aObject: IPDMObject2; 
                             const aLink: ILinkTypedPDMItem; aIsStateAttr: WordBool; 
                             const aAttrValue: IPDMAttributeValue): IBOMappingResult; safecall;
    function Get_PolynomIndependentAttributes: IPDMTypePolynomMappedAttributesCollection; safecall;
    property AttrList: IBasePDMCollection read Get_AttrList;
    property Name: WideString read Get_Name;
    property ID: Integer read Get_ID;
    property Cards: WideString read Get_Cards;
    property Links: ILinkBetweenTypesCollection read Get_Links;
    property IconIndex: Integer read Get_IconIndex;
    property AvailableStates[ConsiderAccess: WordBool]: IBasePDMCollection read Get_AvailableStates;
    property StateTransitions: IBasePDMCollection read Get_StateTransitions;
    property AvailableLinks: WideString read Get_AvailableLinks;
    property AvailableInverseLinks: WideString read Get_AvailableInverseLinks;
    property AvailableHorizontalLinks: WideString read Get_AvailableHorizontalLinks;
    property HasVirtualLinks: WordBool read Get_HasVirtualLinks;
    property TypeKeyAttr: IPDMAttribute2 read Get_TypeKeyAttr;
    property DocumentType: WordBool read Get_DocumentType;
    property Versioning: WordBool read Get_Versioning;
    property BOInfo: IBOTypeInfo read Get_BOInfo;
    property AttrTemplates[const Attr: IPDMAttribute2]: IAttrTemplateCollection read Get_AttrTemplates;
    property LinksWithType[const SecondType: IPDMObjectType]: ILinkBetweenTypesCollection read Get_LinksWithType;
    property DocumentCodes: IBasePDMCollection read Get_DocumentCodes;
    property States: ITypeStatesInfo read Get_States;
    property CanBeProject: WordBool read Get_CanBeProject;
    property CanCreate: WordBool read Get_CanCreate;
    property PolynomRelation[aFlag: TPolynomRelationLevel]: WordBool read Get_PolynomRelation;
    property PolynomInfo: IPDMTypePolynomInfo read Get_PolynomInfo;
    property PolynomClassificationInfo: IPDMTypePolynomClassificationInfo read Get_PolynomClassificationInfo;
    property HasQualification[const aQualificationName: WideString]: WordBool read Get_HasQualification;
    property QualificationCollection: IPDMObjectTypeQualificationCollection read Get_QualificationCollection;
    property PolynomIndependentAttributes: IPDMTypePolynomMappedAttributesCollection read Get_PolynomIndependentAttributes;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1EABCFFA-84FA-4B8C-A756-58014DA93B61}
// *********************************************************************//
  IPDMObjectTypeDisp = dispinterface
    ['{1EABCFFA-84FA-4B8C-A756-58014DA93B61}']
    property AttrList: IBasePDMCollection readonly dispid 201;
    function IsObligatoryAttr(const Attr: IPDMAttribute2): WordBool; dispid 202;
    function GetAttrLimits(const Attr: IPDMAttribute2): WideString; dispid 203;
    property Name: WideString readonly dispid 204;
    property ID: Integer readonly dispid 205;
    property Cards: WideString readonly dispid 206;
    property Links: ILinkBetweenTypesCollection readonly dispid 207;
    property IconIndex: Integer readonly dispid 208;
    property AvailableStates[ConsiderAccess: WordBool]: IBasePDMCollection readonly dispid 209;
    property StateTransitions: IBasePDMCollection readonly dispid 210;
    property AvailableLinks: WideString readonly dispid 211;
    property AvailableInverseLinks: WideString readonly dispid 212;
    property AvailableHorizontalLinks: WideString readonly dispid 213;
    property HasVirtualLinks: WordBool readonly dispid 214;
    property TypeKeyAttr: IPDMAttribute2 readonly dispid 215;
    property DocumentType: WordBool readonly dispid 216;
    property Versioning: WordBool readonly dispid 217;
    property BOInfo: IBOTypeInfo readonly dispid 218;
    function IsBOMappedAttr(const Attr: IPDMAttribute2): WordBool; dispid 219;
    function IsBOMappedState: WordBool; dispid 220;
    property AttrTemplates[const Attr: IPDMAttribute2]: IAttrTemplateCollection readonly dispid 221;
    property LinksWithType[const SecondType: IPDMObjectType]: ILinkBetweenTypesCollection readonly dispid 222;
    property DocumentCodes: IBasePDMCollection readonly dispid 223;
    property States: ITypeStatesInfo readonly dispid 224;
    function TableAttrs(const ProfileName: WideString; const Link: IPDMLinkType): IBasePDMCollection; dispid 225;
    function TreeAttrs(const ProfileName: WideString; const Link: IPDMLinkType): IBasePDMCollection; dispid 226;
    property CanBeProject: WordBool readonly dispid 227;
    property CanCreate: WordBool readonly dispid 228;
    property PolynomRelation[aFlag: TPolynomRelationLevel]: WordBool readonly dispid 229;
    property PolynomInfo: IPDMTypePolynomInfo readonly dispid 230;
    property PolynomClassificationInfo: IPDMTypePolynomClassificationInfo readonly dispid 231;
    function GetBOMappedAttr(const Attr: IPDMAttribute2; const PDMObject: IPDMObject2; 
                             Indep: WordBool; const BindingRuleId: WideString): IPDMTypePolynomMappedAttributesItem; dispid 232;
    property HasQualification[const aQualificationName: WideString]: WordBool readonly dispid 233;
    property QualificationCollection: IPDMObjectTypeQualificationCollection readonly dispid 234;
    function GetBOAccessAttr(const aAttr: IPDMAttribute2; const aObject: IPDMObject2; 
                             const aLink: ILinkTypedPDMItem; aIsStateAttr: WordBool; 
                             const aAttrValue: IPDMAttributeValue): IBOMappingResult; dispid 235;
    property PolynomIndependentAttributes: IPDMTypePolynomMappedAttributesCollection readonly dispid 236;
  end;

// *********************************************************************//
// Interface: IStateTransition
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F90C8C7-91FF-4553-8871-5A08D2A16C8F}
// *********************************************************************//
  IStateTransition = interface(IDispatch)
    ['{2F90C8C7-91FF-4553-8871-5A08D2A16C8F}']
    function Get_CurrentState: IPDMObjectState; safecall;
    function Get_NecessarySignRoles: WideString; safecall;
    function Get_NextState: IPDMObjectState; safecall;
    property CurrentState: IPDMObjectState read Get_CurrentState;
    property NecessarySignRoles: WideString read Get_NecessarySignRoles;
    property NextState: IPDMObjectState read Get_NextState;
  end;

// *********************************************************************//
// DispIntf:  IStateTransitionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F90C8C7-91FF-4553-8871-5A08D2A16C8F}
// *********************************************************************//
  IStateTransitionDisp = dispinterface
    ['{2F90C8C7-91FF-4553-8871-5A08D2A16C8F}']
    property CurrentState: IPDMObjectState readonly dispid 201;
    property NecessarySignRoles: WideString readonly dispid 202;
    property NextState: IPDMObjectState readonly dispid 203;
  end;

// *********************************************************************//
// Interface: ILinkBetweenTypesCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D65155CC-FAB9-4E45-A92C-FED0B1D277D2}
// *********************************************************************//
  ILinkBetweenTypesCollection = interface(IBasePDMCollection)
    ['{D65155CC-FAB9-4E45-A92C-FED0B1D277D2}']
    function Get_LinkBetweenTypes(Index: Integer): ILinkBetweenTypes; safecall;
    function CollectionByParentTypes(const TypesNames: WideString; InverseCondition: WordBool): ILinkBetweenTypesCollection; safecall;
    function CollectionByChildTypes(const TypesNames: WideString; InverseCondition: WordBool): ILinkBetweenTypesCollection; safecall;
    function CollectionByBothTypes(const ParentType: IPDMObjectType; const ChildType: IPDMObjectType): ILinkBetweenTypesCollection; safecall;
    function Get_ParentTypes: IPDMTypesCollection; safecall;
    function Get_ChildTypes: IPDMTypesCollection; safecall;
    function LinkedTypes(const LinkedWith: IPDMObjectType): IPDMTypesCollection; safecall;
    function CollectionByLinks(const LinksNames: WideString; InverseCondition: WordBool): ILinkBetweenTypesCollection; safecall;
    function Get_Links: IPDMLinkTypesCollection; safecall;
    function NotBOMappedCollection: ILinkBetweenTypesCollection; safecall;
    property LinkBetweenTypes[Index: Integer]: ILinkBetweenTypes read Get_LinkBetweenTypes;
    property ParentTypes: IPDMTypesCollection read Get_ParentTypes;
    property ChildTypes: IPDMTypesCollection read Get_ChildTypes;
    property Links: IPDMLinkTypesCollection read Get_Links;
  end;

// *********************************************************************//
// DispIntf:  ILinkBetweenTypesCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D65155CC-FAB9-4E45-A92C-FED0B1D277D2}
// *********************************************************************//
  ILinkBetweenTypesCollectionDisp = dispinterface
    ['{D65155CC-FAB9-4E45-A92C-FED0B1D277D2}']
    property LinkBetweenTypes[Index: Integer]: ILinkBetweenTypes readonly dispid 240;
    function CollectionByParentTypes(const TypesNames: WideString; InverseCondition: WordBool): ILinkBetweenTypesCollection; dispid 241;
    function CollectionByChildTypes(const TypesNames: WideString; InverseCondition: WordBool): ILinkBetweenTypesCollection; dispid 242;
    function CollectionByBothTypes(const ParentType: IPDMObjectType; const ChildType: IPDMObjectType): ILinkBetweenTypesCollection; dispid 243;
    property ParentTypes: IPDMTypesCollection readonly dispid 244;
    property ChildTypes: IPDMTypesCollection readonly dispid 245;
    function LinkedTypes(const LinkedWith: IPDMObjectType): IPDMTypesCollection; dispid 246;
    function CollectionByLinks(const LinksNames: WideString; InverseCondition: WordBool): ILinkBetweenTypesCollection; dispid 247;
    property Links: IPDMLinkTypesCollection readonly dispid 248;
    function NotBOMappedCollection: ILinkBetweenTypesCollection; dispid 249;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IBOServerDescription
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ADE276C2-C5A4-454E-9E79-54C0D52C3C0E}
// *********************************************************************//
  IBOServerDescription = interface(IPDMItem)
    ['{ADE276C2-C5A4-454E-9E79-54C0D52C3C0E}']
    function Get_ServerName: WideString; safecall;
    function Get_ClientName: WideString; safecall;
    function Get_ServerVersion: WideString; safecall;
    function Get_Options: Integer; safecall;
    function Get_ConnectionString: WideString; safecall;
    property ServerName: WideString read Get_ServerName;
    property ClientName: WideString read Get_ClientName;
    property ServerVersion: WideString read Get_ServerVersion;
    property Options: Integer read Get_Options;
    property ConnectionString: WideString read Get_ConnectionString;
  end;

// *********************************************************************//
// DispIntf:  IBOServerDescriptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ADE276C2-C5A4-454E-9E79-54C0D52C3C0E}
// *********************************************************************//
  IBOServerDescriptionDisp = dispinterface
    ['{ADE276C2-C5A4-454E-9E79-54C0D52C3C0E}']
    property ServerName: WideString readonly dispid 201;
    property ClientName: WideString readonly dispid 202;
    property ServerVersion: WideString readonly dispid 203;
    property Options: Integer readonly dispid 204;
    property ConnectionString: WideString readonly dispid 205;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMTypesCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {29D66C97-F54C-4427-B67D-6828FE0AC1EE}
// *********************************************************************//
  IPDMTypesCollection = interface(IBasePDMCollection)
    ['{29D66C97-F54C-4427-B67D-6828FE0AC1EE}']
    function Get_PDMObjectTypes(Index: Integer): IPDMObjectType; safecall;
    function TypesByBOServer(const BOServer: IBOServerDescription; InverseCondition: WordBool): IPDMTypesCollection; safecall;
    function TypesByNames(const ObjTypes: WideString; InverseCondition: WordBool): IPDMTypesCollection; safecall;
    function Get_TypeByName(const Name: WideString): IPDMObjectType; safecall;
    function Get_ProjectsTypes: IPDMTypesCollection; safecall;
    function Get_TypesAllowedToCreate: IPDMTypesCollection; safecall;
    function TypesByDocCodes(const DocCodes: WideString; InverseCondition: WordBool): IPDMTypesCollection; safecall;
    property PDMObjectTypes[Index: Integer]: IPDMObjectType read Get_PDMObjectTypes;
    property TypeByName[const Name: WideString]: IPDMObjectType read Get_TypeByName;
    property ProjectsTypes: IPDMTypesCollection read Get_ProjectsTypes;
    property TypesAllowedToCreate: IPDMTypesCollection read Get_TypesAllowedToCreate;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypesCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {29D66C97-F54C-4427-B67D-6828FE0AC1EE}
// *********************************************************************//
  IPDMTypesCollectionDisp = dispinterface
    ['{29D66C97-F54C-4427-B67D-6828FE0AC1EE}']
    property PDMObjectTypes[Index: Integer]: IPDMObjectType readonly dispid 240;
    function TypesByBOServer(const BOServer: IBOServerDescription; InverseCondition: WordBool): IPDMTypesCollection; dispid 241;
    function TypesByNames(const ObjTypes: WideString; InverseCondition: WordBool): IPDMTypesCollection; dispid 242;
    property TypeByName[const Name: WideString]: IPDMObjectType readonly dispid 243;
    property ProjectsTypes: IPDMTypesCollection readonly dispid 244;
    property TypesAllowedToCreate: IPDMTypesCollection readonly dispid 245;
    function TypesByDocCodes(const DocCodes: WideString; InverseCondition: WordBool): IPDMTypesCollection; dispid 246;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IAttrTemplate
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F4874014-2D37-4FCC-8110-60DEB04F6163}
// *********************************************************************//
  IAttrTemplate = interface(IPDMItem)
    ['{F4874014-2D37-4FCC-8110-60DEB04F6163}']
    function Get_Mask: WideString; safecall;
    function Get_Description: WideString; safecall;
    property Mask: WideString read Get_Mask;
    property Description: WideString read Get_Description;
  end;

// *********************************************************************//
// DispIntf:  IAttrTemplateDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F4874014-2D37-4FCC-8110-60DEB04F6163}
// *********************************************************************//
  IAttrTemplateDisp = dispinterface
    ['{F4874014-2D37-4FCC-8110-60DEB04F6163}']
    property Mask: WideString readonly dispid 201;
    property Description: WideString readonly dispid 202;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IAttrTemplateCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {21B43C99-8CC9-4842-9C4F-EE3073984928}
// *********************************************************************//
  IAttrTemplateCollection = interface(IBasePDMCollection)
    ['{21B43C99-8CC9-4842-9C4F-EE3073984928}']
    function Get_AttrTemplates(Index: Integer): IAttrTemplate; safecall;
    property AttrTemplates[Index: Integer]: IAttrTemplate read Get_AttrTemplates;
  end;

// *********************************************************************//
// DispIntf:  IAttrTemplateCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {21B43C99-8CC9-4842-9C4F-EE3073984928}
// *********************************************************************//
  IAttrTemplateCollectionDisp = dispinterface
    ['{21B43C99-8CC9-4842-9C4F-EE3073984928}']
    property AttrTemplates[Index: Integer]: IAttrTemplate readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IMeasure
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0A259BAB-CE10-40CD-A623-B8C59CEA3AF3}
// *********************************************************************//
  IMeasure = interface(IPDMItem)
    ['{0A259BAB-CE10-40CD-A623-B8C59CEA3AF3}']
    function Get_MeasureID: WideString; safecall;
    function Get_Units: IMeasureUnitsCollection; safecall;
    function Get_DefaultUnit: IMeasureUnit; safecall;
    property MeasureID: WideString read Get_MeasureID;
    property Units: IMeasureUnitsCollection read Get_Units;
    property DefaultUnit: IMeasureUnit read Get_DefaultUnit;
  end;

// *********************************************************************//
// DispIntf:  IMeasureDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0A259BAB-CE10-40CD-A623-B8C59CEA3AF3}
// *********************************************************************//
  IMeasureDisp = dispinterface
    ['{0A259BAB-CE10-40CD-A623-B8C59CEA3AF3}']
    property MeasureID: WideString readonly dispid 201;
    property Units: IMeasureUnitsCollection readonly dispid 202;
    property DefaultUnit: IMeasureUnit readonly dispid 203;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IMeasureUnit
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EBEB2FBC-1111-44EC-85E6-CC727085498B}
// *********************************************************************//
  IMeasureUnit = interface(IPDMItem)
    ['{EBEB2FBC-1111-44EC-85E6-CC727085498B}']
    function Get_UnitID: WideString; safecall;
    function Get_Designation: WideString; safecall;
    function Get_Measure: IMeasure; safecall;
    property UnitID: WideString read Get_UnitID;
    property Designation: WideString read Get_Designation;
    property Measure: IMeasure read Get_Measure;
  end;

// *********************************************************************//
// DispIntf:  IMeasureUnitDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EBEB2FBC-1111-44EC-85E6-CC727085498B}
// *********************************************************************//
  IMeasureUnitDisp = dispinterface
    ['{EBEB2FBC-1111-44EC-85E6-CC727085498B}']
    property UnitID: WideString readonly dispid 201;
    property Designation: WideString readonly dispid 202;
    property Measure: IMeasure readonly dispid 203;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IMeasureCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DBF5D636-2912-4152-AE00-A32ED227411C}
// *********************************************************************//
  IMeasureCollection = interface(IBasePDMCollection)
    ['{DBF5D636-2912-4152-AE00-A32ED227411C}']
    function Get_Measure(Index: Integer): IMeasure; safecall;
    function Get_MeasureByMeasureID(const MeasureID: WideString): IMeasure; safecall;
    function Get_MeasureByName(const MeasureName: WideString): IMeasure; safecall;
    property Measure[Index: Integer]: IMeasure read Get_Measure;
    property MeasureByMeasureID[const MeasureID: WideString]: IMeasure read Get_MeasureByMeasureID;
    property MeasureByName[const MeasureName: WideString]: IMeasure read Get_MeasureByName;
  end;

// *********************************************************************//
// DispIntf:  IMeasureCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DBF5D636-2912-4152-AE00-A32ED227411C}
// *********************************************************************//
  IMeasureCollectionDisp = dispinterface
    ['{DBF5D636-2912-4152-AE00-A32ED227411C}']
    property Measure[Index: Integer]: IMeasure readonly dispid 240;
    property MeasureByMeasureID[const MeasureID: WideString]: IMeasure readonly dispid 241;
    property MeasureByName[const MeasureName: WideString]: IMeasure readonly dispid 242;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IMeasureUnitsCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1B87DFB8-2A7E-4DC9-8734-5638947BF3E2}
// *********************************************************************//
  IMeasureUnitsCollection = interface(IBasePDMCollection)
    ['{1B87DFB8-2A7E-4DC9-8734-5638947BF3E2}']
    function Get_MeasureUnit(Index: Integer): IMeasureUnit; safecall;
    function Get_MeasureUnitByUnitID(const UnitID: WideString): IMeasureUnit; safecall;
    function Get_MeasureUnitByName(const MeasureUnitName: WideString): IMeasureUnit; safecall;
    function Get_MeasureUnitByDesignation(const MeasureUnitByDesignation: WideString): IMeasureUnit; safecall;
    property MeasureUnit[Index: Integer]: IMeasureUnit read Get_MeasureUnit;
    property MeasureUnitByUnitID[const UnitID: WideString]: IMeasureUnit read Get_MeasureUnitByUnitID;
    property MeasureUnitByName[const MeasureUnitName: WideString]: IMeasureUnit read Get_MeasureUnitByName;
    property MeasureUnitByDesignation[const MeasureUnitByDesignation: WideString]: IMeasureUnit read Get_MeasureUnitByDesignation;
  end;

// *********************************************************************//
// DispIntf:  IMeasureUnitsCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1B87DFB8-2A7E-4DC9-8734-5638947BF3E2}
// *********************************************************************//
  IMeasureUnitsCollectionDisp = dispinterface
    ['{1B87DFB8-2A7E-4DC9-8734-5638947BF3E2}']
    property MeasureUnit[Index: Integer]: IMeasureUnit readonly dispid 240;
    property MeasureUnitByUnitID[const UnitID: WideString]: IMeasureUnit readonly dispid 241;
    property MeasureUnitByName[const MeasureUnitName: WideString]: IMeasureUnit readonly dispid 242;
    property MeasureUnitByDesignation[const MeasureUnitByDesignation: WideString]: IMeasureUnit readonly dispid 243;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMModelNotificationHandler
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {54ED310B-AFFE-461E-8099-0658EED9C2DC}
// *********************************************************************//
  IPDMModelNotificationHandler = interface(IDispatch)
    ['{54ED310B-AFFE-461E-8099-0658EED9C2DC}']
    procedure OnNotify(const Notification: IDispatch); safecall;
    procedure SetSender(const Sender: IPDMModelNotifySender); safecall;
    procedure SetNotificatorCollectMode(aMode: WordBool); safecall;
    function Get_NotificatorSuspended: WordBool; safecall;
    procedure Set_NotificatorSuspended(aValue: WordBool); safecall;
    property NotificatorSuspended: WordBool read Get_NotificatorSuspended write Set_NotificatorSuspended;
  end;

// *********************************************************************//
// DispIntf:  IPDMModelNotificationHandlerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {54ED310B-AFFE-461E-8099-0658EED9C2DC}
// *********************************************************************//
  IPDMModelNotificationHandlerDisp = dispinterface
    ['{54ED310B-AFFE-461E-8099-0658EED9C2DC}']
    procedure OnNotify(const Notification: IDispatch); dispid 201;
    procedure SetSender(const Sender: IPDMModelNotifySender); dispid 202;
    procedure SetNotificatorCollectMode(aMode: WordBool); dispid 203;
    property NotificatorSuspended: WordBool dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMModelNotifySender
// Flags:     (320) Dual OleAutomation
// GUID:      {F3AC3ECB-F7C8-41B5-9C52-D5AE66A2883C}
// *********************************************************************//
  IPDMModelNotifySender = interface(IUnknown)
    ['{F3AC3ECB-F7C8-41B5-9C52-D5AE66A2883C}']
    procedure SendNotification(const Source: WideString; NotifyType: Integer; 
                               const NotifyCategory: WideString; DataType: Integer; 
                               DATA: OleVariant; const Checkout: WideString; Lazy: WordBool; 
                               Flag: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDMModelNotifySenderDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {F3AC3ECB-F7C8-41B5-9C52-D5AE66A2883C}
// *********************************************************************//
  IPDMModelNotifySenderDisp = dispinterface
    ['{F3AC3ECB-F7C8-41B5-9C52-D5AE66A2883C}']
    procedure SendNotification(const Source: WideString; NotifyType: Integer; 
                               const NotifyCategory: WideString; DataType: Integer; 
                               DATA: OleVariant; const Checkout: WideString; Lazy: WordBool; 
                               Flag: Integer); dispid 225;
  end;

// *********************************************************************//
// Interface: IDocumentCode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {19A288D6-0F0D-4952-A45B-628E23B00C3E}
// *********************************************************************//
  IDocumentCode = interface(IPDMItem)
    ['{19A288D6-0F0D-4952-A45B-628E23B00C3E}']
    function Get_Code: WideString; safecall;
    function Get_DisplayName: WideString; safecall;
    function Get_TypeName: WideString; safecall;
    property Code: WideString read Get_Code;
    property DisplayName: WideString read Get_DisplayName;
    property TypeName: WideString read Get_TypeName;
  end;

// *********************************************************************//
// DispIntf:  IDocumentCodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {19A288D6-0F0D-4952-A45B-628E23B00C3E}
// *********************************************************************//
  IDocumentCodeDisp = dispinterface
    ['{19A288D6-0F0D-4952-A45B-628E23B00C3E}']
    property Code: WideString readonly dispid 201;
    property DisplayName: WideString readonly dispid 202;
    property TypeName: WideString readonly dispid 203;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMLinkTypesCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BAF0FA6E-B88E-4AD2-A95B-7AFE649BBC4E}
// *********************************************************************//
  IPDMLinkTypesCollection = interface(IBasePDMCollection)
    ['{BAF0FA6E-B88E-4AD2-A95B-7AFE649BBC4E}']
    function Get_PDMLinkTypes(Index: Integer): IPDMLinkType; safecall;
    function Get_LinkTypeByName(const Name: WideString): IPDMLinkType; safecall;
    function LinkTypesByKind(Kind: LinkKinds): IPDMLinkTypesCollection; safecall;
    property PDMLinkTypes[Index: Integer]: IPDMLinkType read Get_PDMLinkTypes;
    property LinkTypeByName[const Name: WideString]: IPDMLinkType read Get_LinkTypeByName;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkTypesCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BAF0FA6E-B88E-4AD2-A95B-7AFE649BBC4E}
// *********************************************************************//
  IPDMLinkTypesCollectionDisp = dispinterface
    ['{BAF0FA6E-B88E-4AD2-A95B-7AFE649BBC4E}']
    property PDMLinkTypes[Index: Integer]: IPDMLinkType readonly dispid 240;
    property LinkTypeByName[const Name: WideString]: IPDMLinkType readonly dispid 241;
    function LinkTypesByKind(Kind: LinkKinds): IPDMLinkTypesCollection; dispid 242;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPropertableItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0994D47B-B38C-4326-A612-9CF0A26AEB3D}
// *********************************************************************//
  IPropertableItem = interface(IDispatch)
    ['{0994D47B-B38C-4326-A612-9CF0A26AEB3D}']
    function Get_StrValue: WideString; safecall;
    function Get_Value: OleVariant; safecall;
    function Get_ID: Integer; safecall;
    function Get_PDMType: Integer; safecall;
    function Get_SubItemsCount: Integer; safecall;
    function Get_SubItem(Index: Integer): IPropertableItem; safecall;
    function Get_Name: WideString; safecall;
    function Get_Tag: Integer; safecall;
    procedure Refresh; safecall;
    property StrValue: WideString read Get_StrValue;
    property Value: OleVariant read Get_Value;
    property ID: Integer read Get_ID;
    property PDMType: Integer read Get_PDMType;
    property SubItemsCount: Integer read Get_SubItemsCount;
    property SubItem[Index: Integer]: IPropertableItem read Get_SubItem;
    property Name: WideString read Get_Name;
    property Tag: Integer read Get_Tag;
  end;

// *********************************************************************//
// DispIntf:  IPropertableItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0994D47B-B38C-4326-A612-9CF0A26AEB3D}
// *********************************************************************//
  IPropertableItemDisp = dispinterface
    ['{0994D47B-B38C-4326-A612-9CF0A26AEB3D}']
    property StrValue: WideString readonly dispid 201;
    property Value: OleVariant readonly dispid 202;
    property ID: Integer readonly dispid 203;
    property PDMType: Integer readonly dispid 204;
    property SubItemsCount: Integer readonly dispid 205;
    property SubItem[Index: Integer]: IPropertableItem readonly dispid 206;
    property Name: WideString readonly dispid 207;
    property Tag: Integer readonly dispid 208;
    procedure Refresh; dispid 209;
  end;

// *********************************************************************//
// Interface: IBOTypeInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DBEA53D2-D460-48C5-8908-0A0D781F7630}
// *********************************************************************//
  IBOTypeInfo = interface(IDispatch)
    ['{DBEA53D2-D460-48C5-8908-0A0D781F7630}']
    function Get_Server: IBOServerDescription; safecall;
    function Get_TypeLocation: WideString; safecall;
    function Get_TypeBOClasses: IBOClassCollection; safecall;
    property Server: IBOServerDescription read Get_Server;
    property TypeLocation: WideString read Get_TypeLocation;
    property TypeBOClasses: IBOClassCollection read Get_TypeBOClasses;
  end;

// *********************************************************************//
// DispIntf:  IBOTypeInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DBEA53D2-D460-48C5-8908-0A0D781F7630}
// *********************************************************************//
  IBOTypeInfoDisp = dispinterface
    ['{DBEA53D2-D460-48C5-8908-0A0D781F7630}']
    property Server: IBOServerDescription readonly dispid 201;
    property TypeLocation: WideString readonly dispid 202;
    property TypeBOClasses: IBOClassCollection readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IBOClass
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A664FF1D-5555-4810-B1A3-53B9F7B83915}
// *********************************************************************//
  IBOClass = interface(IPDMItem)
    ['{A664FF1D-5555-4810-B1A3-53B9F7B83915}']
    function Get_Caption: WideString; safecall;
    function Get_Location: WideString; safecall;
    property Caption: WideString read Get_Caption;
    property Location: WideString read Get_Location;
  end;

// *********************************************************************//
// DispIntf:  IBOClassDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A664FF1D-5555-4810-B1A3-53B9F7B83915}
// *********************************************************************//
  IBOClassDisp = dispinterface
    ['{A664FF1D-5555-4810-B1A3-53B9F7B83915}']
    property Caption: WideString readonly dispid 201;
    property Location: WideString readonly dispid 202;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IBOClassCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E3FADD5C-2559-4ECB-B101-15C19484B653}
// *********************************************************************//
  IBOClassCollection = interface(IBasePDMCollection)
    ['{E3FADD5C-2559-4ECB-B101-15C19484B653}']
    function Get_BOClass(Index: Integer): IBOClass; safecall;
    property BOClass[Index: Integer]: IBOClass read Get_BOClass;
  end;

// *********************************************************************//
// DispIntf:  IBOClassCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E3FADD5C-2559-4ECB-B101-15C19484B653}
// *********************************************************************//
  IBOClassCollectionDisp = dispinterface
    ['{E3FADD5C-2559-4ECB-B101-15C19484B653}']
    property BOClass[Index: Integer]: IBOClass readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: ITypeStatesInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A9EA28B1-304C-4D72-A51C-ADC955879158}
// *********************************************************************//
  ITypeStatesInfo = interface(IDispatch)
    ['{A9EA28B1-304C-4D72-A51C-ADC955879158}']
    function Get_AllStates: IBasePDMCollection; safecall;
    function Get_StatesForCreate: IBasePDMCollection; safecall;
    function Get_StatesForTransition(const CurrentState: IPDMObjectState): IBasePDMCollection; safecall;
    function StatesByDefaultAccess(AccessLevel: Integer): IBasePDMCollection; safecall;
    function StatesByMaxAccess(AccessLevel: Integer): IBasePDMCollection; safecall;
    function StateDefaultAccess(const State: IPDMObjectState): Integer; safecall;
    function StateMaxAccess(const State: IPDMObjectState): Integer; safecall;
    function Get_DefaultState: IPDMObjectState; safecall;
    property AllStates: IBasePDMCollection read Get_AllStates;
    property StatesForCreate: IBasePDMCollection read Get_StatesForCreate;
    property StatesForTransition[const CurrentState: IPDMObjectState]: IBasePDMCollection read Get_StatesForTransition;
    property DefaultState: IPDMObjectState read Get_DefaultState;
  end;

// *********************************************************************//
// DispIntf:  ITypeStatesInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A9EA28B1-304C-4D72-A51C-ADC955879158}
// *********************************************************************//
  ITypeStatesInfoDisp = dispinterface
    ['{A9EA28B1-304C-4D72-A51C-ADC955879158}']
    property AllStates: IBasePDMCollection readonly dispid 201;
    property StatesForCreate: IBasePDMCollection readonly dispid 202;
    property StatesForTransition[const CurrentState: IPDMObjectState]: IBasePDMCollection readonly dispid 203;
    function StatesByDefaultAccess(AccessLevel: Integer): IBasePDMCollection; dispid 204;
    function StatesByMaxAccess(AccessLevel: Integer): IBasePDMCollection; dispid 205;
    function StateDefaultAccess(const State: IPDMObjectState): Integer; dispid 206;
    function StateMaxAccess(const State: IPDMObjectState): Integer; dispid 207;
    property DefaultState: IPDMObjectState readonly dispid 208;
  end;

// *********************************************************************//
// Interface: ITreeLinkDescription
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B5DCBA5F-8006-4F52-B4D1-9938C2F40122}
// *********************************************************************//
  ITreeLinkDescription = interface(IPDMItem)
    ['{B5DCBA5F-8006-4F52-B4D1-9938C2F40122}']
    function Get_ParentObject: IPDMObject2; safecall;
    function Get_ChildObject: IPDMObject2; safecall;
    function Get_ParentLinkDescription: ITreeLinkDescription; safecall;
    function Get_Inverse: WordBool; safecall;
    function Get_Owner: ILinkTypedPDMItem; safecall;
    property ParentObject: IPDMObject2 read Get_ParentObject;
    property ChildObject: IPDMObject2 read Get_ChildObject;
    property ParentLinkDescription: ITreeLinkDescription read Get_ParentLinkDescription;
    property Inverse: WordBool read Get_Inverse;
    property Owner: ILinkTypedPDMItem read Get_Owner;
  end;

// *********************************************************************//
// DispIntf:  ITreeLinkDescriptionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B5DCBA5F-8006-4F52-B4D1-9938C2F40122}
// *********************************************************************//
  ITreeLinkDescriptionDisp = dispinterface
    ['{B5DCBA5F-8006-4F52-B4D1-9938C2F40122}']
    property ParentObject: IPDMObject2 readonly dispid 201;
    property ChildObject: IPDMObject2 readonly dispid 202;
    property ParentLinkDescription: ITreeLinkDescription readonly dispid 203;
    property Inverse: WordBool readonly dispid 204;
    property Owner: ILinkTypedPDMItem readonly dispid 205;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMModelDebugger
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {036D1F9B-C909-4243-863F-29C07A8C1BC6}
// *********************************************************************//
  IPDMModelDebugger = interface(IDispatch)
    ['{036D1F9B-C909-4243-863F-29C07A8C1BC6}']
    procedure SetPropertableItem(const PropItem: IDispatch); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDMModelDebuggerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {036D1F9B-C909-4243-863F-29C07A8C1BC6}
// *********************************************************************//
  IPDMModelDebuggerDisp = dispinterface
    ['{036D1F9B-C909-4243-863F-29C07A8C1BC6}']
    procedure SetPropertableItem(const PropItem: IDispatch); dispid 201;
  end;

// *********************************************************************//
// Interface: IEffectivityType
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BA8D1B50-DFF3-4F26-B140-6522C592446B}
// *********************************************************************//
  IEffectivityType = interface(IDispatch)
    ['{BA8D1B50-DFF3-4F26-B140-6522C592446B}']
    function Get_Attributes: IBasePDMCollection; safecall;
    function Get_CanRefEndVersion: WordBool; safecall;
    property Attributes: IBasePDMCollection read Get_Attributes;
    property CanRefEndVersion: WordBool read Get_CanRefEndVersion;
  end;

// *********************************************************************//
// DispIntf:  IEffectivityTypeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BA8D1B50-DFF3-4F26-B140-6522C592446B}
// *********************************************************************//
  IEffectivityTypeDisp = dispinterface
    ['{BA8D1B50-DFF3-4F26-B140-6522C592446B}']
    property Attributes: IBasePDMCollection readonly dispid 201;
    property CanRefEndVersion: WordBool readonly dispid 202;
  end;

// *********************************************************************//
// Interface: ISlavePDMEntity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1BD8714B-79DC-4491-8D3B-E067D3943F22}
// *********************************************************************//
  ISlavePDMEntity = interface(IDispatch)
    ['{1BD8714B-79DC-4491-8D3B-E067D3943F22}']
    function Get_Owner: IPDMItem; safecall;
    function Get_MasterPropCode: PropertyCodes; safecall;
    property Owner: IPDMItem read Get_Owner;
    property MasterPropCode: PropertyCodes read Get_MasterPropCode;
  end;

// *********************************************************************//
// DispIntf:  ISlavePDMEntityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1BD8714B-79DC-4491-8D3B-E067D3943F22}
// *********************************************************************//
  ISlavePDMEntityDisp = dispinterface
    ['{1BD8714B-79DC-4491-8D3B-E067D3943F22}']
    property Owner: IPDMItem readonly dispid 201;
    property MasterPropCode: PropertyCodes readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IChangeLoggersList
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B141ED8C-3C13-4B81-88A3-36EA851434AE}
// *********************************************************************//
  IChangeLoggersList = interface(IDispatch)
    ['{B141ED8C-3C13-4B81-88A3-36EA851434AE}']
    function AddChangeLogger(const Name: WideString): IChangeLogger; safecall;
    procedure RemoveChangeLogger(const Value: IChangeLogger); safecall;
    function GetChangeLoggerByName(const Name: WideString): IChangeLogger; safecall;
  end;

// *********************************************************************//
// DispIntf:  IChangeLoggersListDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B141ED8C-3C13-4B81-88A3-36EA851434AE}
// *********************************************************************//
  IChangeLoggersListDisp = dispinterface
    ['{B141ED8C-3C13-4B81-88A3-36EA851434AE}']
    function AddChangeLogger(const Name: WideString): IChangeLogger; dispid 201;
    procedure RemoveChangeLogger(const Value: IChangeLogger); dispid 202;
    function GetChangeLoggerByName(const Name: WideString): IChangeLogger; dispid 203;
  end;

// *********************************************************************//
// Interface: IChangeLogger
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {366FF993-53FA-44FB-8209-C8B925AFDE91}
// *********************************************************************//
  IChangeLogger = interface(IDispatch)
    ['{366FF993-53FA-44FB-8209-C8B925AFDE91}']
    function Get_Name: WideString; safecall;
    function Get_ItemsCount: Integer; safecall;
    function Get_Item(Index: Integer): IChangedItem; safecall;
    function Get_ItemByPropCode(PropCode: PropertyCodes): IChangedItem; safecall;
    function Get_Suspended: WordBool; safecall;
    procedure Set_Suspended(Value: WordBool); safecall;
    procedure DeleteItem(Index: Integer); safecall;
    property Name: WideString read Get_Name;
    property ItemsCount: Integer read Get_ItemsCount;
    property Item[Index: Integer]: IChangedItem read Get_Item;
    property ItemByPropCode[PropCode: PropertyCodes]: IChangedItem read Get_ItemByPropCode;
    property Suspended: WordBool read Get_Suspended write Set_Suspended;
  end;

// *********************************************************************//
// DispIntf:  IChangeLoggerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {366FF993-53FA-44FB-8209-C8B925AFDE91}
// *********************************************************************//
  IChangeLoggerDisp = dispinterface
    ['{366FF993-53FA-44FB-8209-C8B925AFDE91}']
    property Name: WideString readonly dispid 201;
    property ItemsCount: Integer readonly dispid 202;
    property Item[Index: Integer]: IChangedItem readonly dispid 203;
    property ItemByPropCode[PropCode: PropertyCodes]: IChangedItem readonly dispid 204;
    property Suspended: WordBool dispid 205;
    procedure DeleteItem(Index: Integer); dispid 206;
  end;

// *********************************************************************//
// Interface: IChangedItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F16159DD-7FB9-444A-B68E-925ED81A1336}
// *********************************************************************//
  IChangedItem = interface(IDispatch)
    ['{F16159DD-7FB9-444A-B68E-925ED81A1336}']
    function Get_PropCode: PropertyCodes; safecall;
    property PropCode: PropertyCodes read Get_PropCode;
  end;

// *********************************************************************//
// DispIntf:  IChangedItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F16159DD-7FB9-444A-B68E-925ED81A1336}
// *********************************************************************//
  IChangedItemDisp = dispinterface
    ['{F16159DD-7FB9-444A-B68E-925ED81A1336}']
    property PropCode: PropertyCodes readonly dispid 201;
  end;

// *********************************************************************//
// Interface: ISimpleChangedItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FA8C139-3BD7-49B0-9327-F7FFED4F1E2E}
// *********************************************************************//
  ISimpleChangedItem = interface(IDispatch)
    ['{5FA8C139-3BD7-49B0-9327-F7FFED4F1E2E}']
    function Get_OldValue: OleVariant; safecall;
    function Get_HasOldValue: WordBool; safecall;
    function Get_NewValue: OleVariant; safecall;
    property OldValue: OleVariant read Get_OldValue;
    property HasOldValue: WordBool read Get_HasOldValue;
    property NewValue: OleVariant read Get_NewValue;
  end;

// *********************************************************************//
// DispIntf:  ISimpleChangedItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5FA8C139-3BD7-49B0-9327-F7FFED4F1E2E}
// *********************************************************************//
  ISimpleChangedItemDisp = dispinterface
    ['{5FA8C139-3BD7-49B0-9327-F7FFED4F1E2E}']
    property OldValue: OleVariant readonly dispid 201;
    property HasOldValue: WordBool readonly dispid 202;
    property NewValue: OleVariant readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IContainerChangedItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {34C399CC-9BD2-4304-BB82-B359C133E5EF}
// *********************************************************************//
  IContainerChangedItem = interface(IDispatch)
    ['{34C399CC-9BD2-4304-BB82-B359C133E5EF}']
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): ISimpleChangedItem; safecall;
    function Get_Key(Index: Integer): WideString; safecall;
    function IndexOfKey(const Key: WideString): Integer; safecall;
    procedure DeleteItem(Index: Integer); safecall;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: ISimpleChangedItem read Get_Item;
    property Key[Index: Integer]: WideString read Get_Key;
  end;

// *********************************************************************//
// DispIntf:  IContainerChangedItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {34C399CC-9BD2-4304-BB82-B359C133E5EF}
// *********************************************************************//
  IContainerChangedItemDisp = dispinterface
    ['{34C399CC-9BD2-4304-BB82-B359C133E5EF}']
    property Count: Integer readonly dispid 201;
    property Item[Index: Integer]: ISimpleChangedItem readonly dispid 202;
    property Key[Index: Integer]: WideString readonly dispid 203;
    function IndexOfKey(const Key: WideString): Integer; dispid 204;
    procedure DeleteItem(Index: Integer); dispid 205;
  end;

// *********************************************************************//
// Interface: IMeasurablePDMItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D23D15BD-66AF-45F4-B911-5A1E1A5CDA00}
// *********************************************************************//
  IMeasurablePDMItem = interface(IDispatch)
    ['{D23D15BD-66AF-45F4-B911-5A1E1A5CDA00}']
    function Get_UnitID: WideString; safecall;
    procedure Set_UnitID(const Value: WideString); safecall;
    function Get_UnitName: WideString; safecall;
    function Get_MeasureID: WideString; safecall;
    procedure Set_MeasureID(const Value: WideString); safecall;
    function Get_MeasureName: WideString; safecall;
    function Get_TypeMeasures: IMeasureCollection; safecall;
    function Get_TypeDefaultMeasure: IMeasure; safecall;
    function Get_ReadOnly: WordBool; safecall;
    property UnitID: WideString read Get_UnitID write Set_UnitID;
    property UnitName: WideString read Get_UnitName;
    property MeasureID: WideString read Get_MeasureID write Set_MeasureID;
    property MeasureName: WideString read Get_MeasureName;
    property TypeMeasures: IMeasureCollection read Get_TypeMeasures;
    property TypeDefaultMeasure: IMeasure read Get_TypeDefaultMeasure;
    property ReadOnly: WordBool read Get_ReadOnly;
  end;

// *********************************************************************//
// DispIntf:  IMeasurablePDMItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D23D15BD-66AF-45F4-B911-5A1E1A5CDA00}
// *********************************************************************//
  IMeasurablePDMItemDisp = dispinterface
    ['{D23D15BD-66AF-45F4-B911-5A1E1A5CDA00}']
    property UnitID: WideString dispid 201;
    property UnitName: WideString readonly dispid 202;
    property MeasureID: WideString dispid 203;
    property MeasureName: WideString readonly dispid 204;
    property TypeMeasures: IMeasureCollection readonly dispid 205;
    property TypeDefaultMeasure: IMeasure readonly dispid 206;
    property ReadOnly: WordBool readonly dispid 207;
  end;

// *********************************************************************//
// Interface: IQuantitativePDMItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ED2785E4-9DD5-49F9-88A1-2ECEEA16D8BF}
// *********************************************************************//
  IQuantitativePDMItem = interface(IMeasurablePDMItem)
    ['{ED2785E4-9DD5-49F9-88A1-2ECEEA16D8BF}']
    function Get_MinQuantity: Double; safecall;
    procedure Set_MinQuantity(Value: Double); safecall;
    function Get_MaxQuantity: Double; safecall;
    procedure Set_MaxQuantity(Value: Double); safecall;
    function Get_TypeIsQuantity: WordBool; safecall;
    function Get_CreateLinkEntriesFlag: WordBool; safecall;
    procedure Set_CreateLinkEntriesFlag(aValue: WordBool); safecall;
    property MinQuantity: Double read Get_MinQuantity write Set_MinQuantity;
    property MaxQuantity: Double read Get_MaxQuantity write Set_MaxQuantity;
    property TypeIsQuantity: WordBool read Get_TypeIsQuantity;
    property CreateLinkEntriesFlag: WordBool read Get_CreateLinkEntriesFlag write Set_CreateLinkEntriesFlag;
  end;

// *********************************************************************//
// DispIntf:  IQuantitativePDMItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ED2785E4-9DD5-49F9-88A1-2ECEEA16D8BF}
// *********************************************************************//
  IQuantitativePDMItemDisp = dispinterface
    ['{ED2785E4-9DD5-49F9-88A1-2ECEEA16D8BF}']
    property MinQuantity: Double dispid 218;
    property MaxQuantity: Double dispid 219;
    property TypeIsQuantity: WordBool readonly dispid 220;
    property CreateLinkEntriesFlag: WordBool dispid 222;
    property UnitID: WideString dispid 201;
    property UnitName: WideString readonly dispid 202;
    property MeasureID: WideString dispid 203;
    property MeasureName: WideString readonly dispid 204;
    property TypeMeasures: IMeasureCollection readonly dispid 205;
    property TypeDefaultMeasure: IMeasure readonly dispid 206;
    property ReadOnly: WordBool readonly dispid 207;
  end;

// *********************************************************************//
// Interface: IPDMVersionSet
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0F1619A3-0C6A-4457-B956-973986306430}
// *********************************************************************//
  IPDMVersionSet = interface(IDispatch)
    ['{0F1619A3-0C6A-4457-B956-973986306430}']
    function Get_VersionsCount: Integer; safecall;
    function Get_VersionID(Index: Integer): Integer; safecall;
    function GetAsCollection: IPDMObjectCollection; safecall;
    function Get_Product: WideString; safecall;
    function Get_VersionsType: IPDMObjectType; safecall;
    function Get_Checkout: ICheckOut; safecall;
    function Get_Deleted: WordBool; safecall;
    function InEditMode: WordBool; safecall;
    function SaveToDB(const NotificationSource: WideString): IPDMVersionSet; safecall;
    function Get_ExistsInDB: WordBool; safecall;
    function HasVersion(VersionID: Integer): WordBool; safecall;
    function Get_VersionName(Index: Integer): WideString; safecall;
    property VersionsCount: Integer read Get_VersionsCount;
    property VersionID[Index: Integer]: Integer read Get_VersionID;
    property Product: WideString read Get_Product;
    property VersionsType: IPDMObjectType read Get_VersionsType;
    property Checkout: ICheckOut read Get_Checkout;
    property Deleted: WordBool read Get_Deleted;
    property ExistsInDB: WordBool read Get_ExistsInDB;
    property VersionName[Index: Integer]: WideString read Get_VersionName;
  end;

// *********************************************************************//
// DispIntf:  IPDMVersionSetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0F1619A3-0C6A-4457-B956-973986306430}
// *********************************************************************//
  IPDMVersionSetDisp = dispinterface
    ['{0F1619A3-0C6A-4457-B956-973986306430}']
    property VersionsCount: Integer readonly dispid 201;
    property VersionID[Index: Integer]: Integer readonly dispid 202;
    function GetAsCollection: IPDMObjectCollection; dispid 203;
    property Product: WideString readonly dispid 206;
    property VersionsType: IPDMObjectType readonly dispid 207;
    property Checkout: ICheckOut readonly dispid 208;
    property Deleted: WordBool readonly dispid 211;
    function InEditMode: WordBool; dispid 212;
    function SaveToDB(const NotificationSource: WideString): IPDMVersionSet; dispid 213;
    property ExistsInDB: WordBool readonly dispid 214;
    function HasVersion(VersionID: Integer): WordBool; dispid 215;
    property VersionName[Index: Integer]: WideString readonly dispid 216;
  end;

// *********************************************************************//
// Interface: IPDMObjectEnumerator
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D4A36BBB-8AAB-45AB-81B4-FDB94B2BEA5B}
// *********************************************************************//
  IPDMObjectEnumerator = interface(IDispatch)
    ['{D4A36BBB-8AAB-45AB-81B4-FDB94B2BEA5B}']
    function Get_Current: IPDMObject2; safecall;
    function MoveNext: WordBool; safecall;
    procedure Reset; safecall;
    property Current: IPDMObject2 read Get_Current;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectEnumeratorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D4A36BBB-8AAB-45AB-81B4-FDB94B2BEA5B}
// *********************************************************************//
  IPDMObjectEnumeratorDisp = dispinterface
    ['{D4A36BBB-8AAB-45AB-81B4-FDB94B2BEA5B}']
    property Current: IPDMObject2 readonly dispid 201;
    function MoveNext: WordBool; dispid 202;
    procedure Reset; dispid 203;
  end;

// *********************************************************************//
// Interface: ILinkTypedPDMItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {355EC452-26C2-4670-8E12-4559794AF9D2}
// *********************************************************************//
  ILinkTypedPDMItem = interface(IPDMItem)
    ['{355EC452-26C2-4670-8E12-4559794AF9D2}']
    function Get_Quantity: IQuantitativePDMItem; safecall;
    function Get_ParentObject: IPDMObject2; safecall;
    function Get_IsVirtual: WordBool; safecall;
    function Get_LinkType: IPDMLinkType; safecall;
    function Get_LinkBetweenTypes: ILinkBetweenTypes; safecall;
    function GetTreeDescription(const Parent: IPDMObject2; const Child: IPDMObject2; 
                                const ParentLink: ITreeLinkDescription): ITreeLinkDescription; safecall;
    function Get_ChangeLoggers: IChangeLoggersList; safecall;
    function Get_ChildObjectType: IPDMObjectType; safecall;
    function Get_ChildObjectProduct: WideString; safecall;
    property Quantity: IQuantitativePDMItem read Get_Quantity;
    property ParentObject: IPDMObject2 read Get_ParentObject;
    property IsVirtual: WordBool read Get_IsVirtual;
    property LinkType: IPDMLinkType read Get_LinkType;
    property LinkBetweenTypes: ILinkBetweenTypes read Get_LinkBetweenTypes;
    property ChangeLoggers: IChangeLoggersList read Get_ChangeLoggers;
    property ChildObjectType: IPDMObjectType read Get_ChildObjectType;
    property ChildObjectProduct: WideString read Get_ChildObjectProduct;
  end;

// *********************************************************************//
// DispIntf:  ILinkTypedPDMItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {355EC452-26C2-4670-8E12-4559794AF9D2}
// *********************************************************************//
  ILinkTypedPDMItemDisp = dispinterface
    ['{355EC452-26C2-4670-8E12-4559794AF9D2}']
    property Quantity: IQuantitativePDMItem readonly dispid 201;
    property ParentObject: IPDMObject2 readonly dispid 202;
    property IsVirtual: WordBool readonly dispid 203;
    property LinkType: IPDMLinkType readonly dispid 204;
    property LinkBetweenTypes: ILinkBetweenTypes readonly dispid 205;
    function GetTreeDescription(const Parent: IPDMObject2; const Child: IPDMObject2; 
                                const ParentLink: ITreeLinkDescription): ITreeLinkDescription; dispid 206;
    property ChangeLoggers: IChangeLoggersList readonly dispid 207;
    property ChildObjectType: IPDMObjectType readonly dispid 208;
    property ChildObjectProduct: WideString readonly dispid 209;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IAttributesMeasure
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F83ECDB-1736-4167-865F-D6466ECAC2E9}
// *********************************************************************//
  IAttributesMeasure = interface(IDispatch)
    ['{3F83ECDB-1736-4167-865F-D6466ECAC2E9}']
    function Get_AttributeId: Integer; safecall;
    function Get_MeasureID: WideString; safecall;
    function Get_MeasureName: WideString; safecall;
    function Get_DefaultMeasure: WordBool; safecall;
    property AttributeId: Integer read Get_AttributeId;
    property MeasureID: WideString read Get_MeasureID;
    property MeasureName: WideString read Get_MeasureName;
    property DefaultMeasure: WordBool read Get_DefaultMeasure;
  end;

// *********************************************************************//
// DispIntf:  IAttributesMeasureDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F83ECDB-1736-4167-865F-D6466ECAC2E9}
// *********************************************************************//
  IAttributesMeasureDisp = dispinterface
    ['{3F83ECDB-1736-4167-865F-D6466ECAC2E9}']
    property AttributeId: Integer readonly dispid 201;
    property MeasureID: WideString readonly dispid 202;
    property MeasureName: WideString readonly dispid 203;
    property DefaultMeasure: WordBool readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IAttributesTypesMeasure
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2FB3EC2B-1726-B267-B65F-D6466EC2C2EB}
// *********************************************************************//
  IAttributesTypesMeasure = interface(IAttributesMeasure)
    ['{2FB3EC2B-1726-B267-B65F-D6466EC2C2EB}']
    function Get_TypeId: Integer; safecall;
    property TypeId: Integer read Get_TypeId;
  end;

// *********************************************************************//
// DispIntf:  IAttributesTypesMeasureDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2FB3EC2B-1726-B267-B65F-D6466EC2C2EB}
// *********************************************************************//
  IAttributesTypesMeasureDisp = dispinterface
    ['{2FB3EC2B-1726-B267-B65F-D6466EC2C2EB}']
    property TypeId: Integer readonly dispid 185;
    property AttributeId: Integer readonly dispid 201;
    property MeasureID: WideString readonly dispid 202;
    property MeasureName: WideString readonly dispid 203;
    property DefaultMeasure: WordBool readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IAttributesLinksMeasure
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1F834C2B-113F-4167-865F-16F66ECAC2E1}
// *********************************************************************//
  IAttributesLinksMeasure = interface(IAttributesMeasure)
    ['{1F834C2B-113F-4167-865F-16F66ECAC2E1}']
    function Get_LinkId: Integer; safecall;
    function Get_ParentTypeName: WideString; safecall;
    function Get_ChildTypeName: WideString; safecall;
    function Get_LinkName: WideString; safecall;
    property LinkId: Integer read Get_LinkId;
    property ParentTypeName: WideString read Get_ParentTypeName;
    property ChildTypeName: WideString read Get_ChildTypeName;
    property LinkName: WideString read Get_LinkName;
  end;

// *********************************************************************//
// DispIntf:  IAttributesLinksMeasureDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1F834C2B-113F-4167-865F-16F66ECAC2E1}
// *********************************************************************//
  IAttributesLinksMeasureDisp = dispinterface
    ['{1F834C2B-113F-4167-865F-16F66ECAC2E1}']
    property LinkId: Integer readonly dispid 185;
    property ParentTypeName: WideString readonly dispid 186;
    property ChildTypeName: WideString readonly dispid 187;
    property LinkName: WideString readonly dispid 188;
    property AttributeId: Integer readonly dispid 201;
    property MeasureID: WideString readonly dispid 202;
    property MeasureName: WideString readonly dispid 203;
    property DefaultMeasure: WordBool readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IAttributesMeasuresCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F899CD1-9700-42F7-C67F-36466EC7C9E3}
// *********************************************************************//
  IAttributesMeasuresCollection = interface(IDispatch)
    ['{3F899CD1-9700-42F7-C67F-36466EC7C9E3}']
    function Get_Count: Integer; safecall;
    function Get_Items(aIndex: Integer): IAttributesMeasure; safecall;
    function Get_GetCollectionByAttributeId(aAttributeId: Integer): IAttributesMeasuresCollection; safecall;
    function Get_GetCollectionByTypeId(aTypeId: Integer): IAttributesMeasuresCollection; safecall;
    function Get_GetCollectionByLinkId(aLinkId: Integer): IAttributesMeasuresCollection; safecall;
    function Get_GetCollectionByLinkParams(const aParentTypeName: WideString; 
                                           const aChildTypeName: WideString; 
                                           const aLinkName: WideString): IAttributesMeasuresCollection; safecall;
    function Get_IsEmpty: WordBool; safecall;
    function Add(const aItem: IAttributesMeasure): Integer; safecall;
    property Count: Integer read Get_Count;
    property Items[aIndex: Integer]: IAttributesMeasure read Get_Items;
    property GetCollectionByAttributeId[aAttributeId: Integer]: IAttributesMeasuresCollection read Get_GetCollectionByAttributeId;
    property GetCollectionByTypeId[aTypeId: Integer]: IAttributesMeasuresCollection read Get_GetCollectionByTypeId;
    property GetCollectionByLinkId[aLinkId: Integer]: IAttributesMeasuresCollection read Get_GetCollectionByLinkId;
    property GetCollectionByLinkParams[const aParentTypeName: WideString; 
                                       const aChildTypeName: WideString; const aLinkName: WideString]: IAttributesMeasuresCollection read Get_GetCollectionByLinkParams;
    property IsEmpty: WordBool read Get_IsEmpty;
  end;

// *********************************************************************//
// DispIntf:  IAttributesMeasuresCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F899CD1-9700-42F7-C67F-36466EC7C9E3}
// *********************************************************************//
  IAttributesMeasuresCollectionDisp = dispinterface
    ['{3F899CD1-9700-42F7-C67F-36466EC7C9E3}']
    property Count: Integer readonly dispid 201;
    property Items[aIndex: Integer]: IAttributesMeasure readonly dispid 202;
    property GetCollectionByAttributeId[aAttributeId: Integer]: IAttributesMeasuresCollection readonly dispid 203;
    property GetCollectionByTypeId[aTypeId: Integer]: IAttributesMeasuresCollection readonly dispid 204;
    property GetCollectionByLinkId[aLinkId: Integer]: IAttributesMeasuresCollection readonly dispid 205;
    property GetCollectionByLinkParams[const aParentTypeName: WideString; 
                                       const aChildTypeName: WideString; const aLinkName: WideString]: IAttributesMeasuresCollection readonly dispid 206;
    property IsEmpty: WordBool readonly dispid 207;
    function Add(const aItem: IAttributesMeasure): Integer; dispid 208;
  end;

// *********************************************************************//
// Interface: IPDMLinkEntry
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {721E9B92-2A72-7ACA-E736-9A223217C1A8}
// *********************************************************************//
  IPDMLinkEntry = interface(IAttributedPDMEntity)
    ['{721E9B92-2A72-7ACA-E736-9A223217C1A8}']
    function Get_Kind: Integer; safecall;
    function Get_GUID: WideString; safecall;
    function Get_FamilyKey: WideString; safecall;
    function Get_CadKey: WideString; safecall;
    function Get_CadPlacement: WideString; safecall;
    function Get_MinQuantity: Double; safecall;
    function Get_MaxQuantity: Double; safecall;
    function Get_OwnerLink: IPDMLink2; safecall;
    procedure Update(const aCadKey: WideString; const aCadPlacement: WideString; 
                     const aBoRepresentationKey: WideString; aMinQuantity: Double; 
                     aMaxQuantity: Double); safecall;
    function Get_AbsEntriesCollection: IPDMLinkAbsEntries; safecall;
    function Get_OrderIndex: Integer; safecall;
    procedure CreateAbsEntriesBorrow(aSourceOwnerRootId: Integer; aSourcePathArray: OleVariant; 
                                     const aTargetEntry: IPDMLinkEntry; 
                                     aTargetOwnerRootId: Integer; aTargetPathArray: OleVariant); safecall;
    procedure DeleteAbsEntriesBorrow(const aLinkAbsEntry: IPDMLinkAbsEntry); safecall;
    function Get_BoRepresentationKey: WideString; safecall;
    property Kind: Integer read Get_Kind;
    property GUID: WideString read Get_GUID;
    property FamilyKey: WideString read Get_FamilyKey;
    property CadKey: WideString read Get_CadKey;
    property CadPlacement: WideString read Get_CadPlacement;
    property MinQuantity: Double read Get_MinQuantity;
    property MaxQuantity: Double read Get_MaxQuantity;
    property OwnerLink: IPDMLink2 read Get_OwnerLink;
    property AbsEntriesCollection: IPDMLinkAbsEntries read Get_AbsEntriesCollection;
    property OrderIndex: Integer read Get_OrderIndex;
    property BoRepresentationKey: WideString read Get_BoRepresentationKey;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkEntryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {721E9B92-2A72-7ACA-E736-9A223217C1A8}
// *********************************************************************//
  IPDMLinkEntryDisp = dispinterface
    ['{721E9B92-2A72-7ACA-E736-9A223217C1A8}']
    property Kind: Integer readonly dispid 220;
    property GUID: WideString readonly dispid 221;
    property FamilyKey: WideString readonly dispid 222;
    property CadKey: WideString readonly dispid 223;
    property CadPlacement: WideString readonly dispid 224;
    property MinQuantity: Double readonly dispid 225;
    property MaxQuantity: Double readonly dispid 226;
    property OwnerLink: IPDMLink2 readonly dispid 227;
    procedure Update(const aCadKey: WideString; const aCadPlacement: WideString; 
                     const aBoRepresentationKey: WideString; aMinQuantity: Double; 
                     aMaxQuantity: Double); dispid 228;
    property AbsEntriesCollection: IPDMLinkAbsEntries readonly dispid 229;
    property OrderIndex: Integer readonly dispid 230;
    procedure CreateAbsEntriesBorrow(aSourceOwnerRootId: Integer; aSourcePathArray: OleVariant; 
                                     const aTargetEntry: IPDMLinkEntry; 
                                     aTargetOwnerRootId: Integer; aTargetPathArray: OleVariant); dispid 231;
    procedure DeleteAbsEntriesBorrow(const aLinkAbsEntry: IPDMLinkAbsEntry); dispid 232;
    property BoRepresentationKey: WideString readonly dispid 233;
    property Attrs: IPDMEntityAttrValues readonly dispid 213;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const NotificationSource: WideString): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMLinkEntries
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {721E9B92-2A72-7ACA-E736-9A223217C1A9}
// *********************************************************************//
  IPDMLinkEntries = interface(IDispatch)
    ['{721E9B92-2A72-7ACA-E736-9A223217C1A9}']
    function Load(aMode: GetCollectionMode; aWithAttrs: WordBool; aWithAbsEntries: WordBool): IBasePDMCollection; safecall;
    function Add(const aCadKey: WideString; const aCadPlacement: WideString; 
                 const aBoRepresentationKey: WideString; aMinQuantity: Double; aMaxQuantity: Double): IPDMLinkEntry; safecall;
    procedure Delete(const aLinkEntriesCollection: IBasePDMCollection); safecall;
    procedure Clear; safecall;
    procedure SaveToDB(const aNotificationSource: WideString); safecall;
    function Get_OwnerLink: IPDMLink2; safecall;
    function CreateLinkEntries: IBasePDMCollection; safecall;
    procedure DeleteLinkEntries; safecall;
    function LoadFromDataSet(aData: OleVariant; aAttributesValuesData: OleVariant; 
                             aAbsEntriesValuesData: OleVariant; 
                             aAbsEntriesBorrowValuesData: OleVariant): IBasePDMCollection; safecall;
    procedure CheckLinkEntriesUpdateCadPlacement; safecall;
    property OwnerLink: IPDMLink2 read Get_OwnerLink;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkEntriesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {721E9B92-2A72-7ACA-E736-9A223217C1A9}
// *********************************************************************//
  IPDMLinkEntriesDisp = dispinterface
    ['{721E9B92-2A72-7ACA-E736-9A223217C1A9}']
    function Load(aMode: GetCollectionMode; aWithAttrs: WordBool; aWithAbsEntries: WordBool): IBasePDMCollection; dispid 201;
    function Add(const aCadKey: WideString; const aCadPlacement: WideString; 
                 const aBoRepresentationKey: WideString; aMinQuantity: Double; aMaxQuantity: Double): IPDMLinkEntry; dispid 202;
    procedure Delete(const aLinkEntriesCollection: IBasePDMCollection); dispid 203;
    procedure Clear; dispid 204;
    procedure SaveToDB(const aNotificationSource: WideString); dispid 205;
    property OwnerLink: IPDMLink2 readonly dispid 206;
    function CreateLinkEntries: IBasePDMCollection; dispid 207;
    procedure DeleteLinkEntries; dispid 208;
    function LoadFromDataSet(aData: OleVariant; aAttributesValuesData: OleVariant; 
                             aAbsEntriesValuesData: OleVariant; 
                             aAbsEntriesBorrowValuesData: OleVariant): IBasePDMCollection; dispid 209;
    procedure CheckLinkEntriesUpdateCadPlacement; dispid 210;
  end;

// *********************************************************************//
// Interface: IPDMEntityAttrValues
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {272E1F12-729A-4B4A-A908-0487045896AF}
// *********************************************************************//
  IPDMEntityAttrValues = interface(IDispatch)
    ['{272E1F12-729A-4B4A-A908-0487045896AF}']
    function Get_AllAttrValues: IPDMAttrValueCollection; safecall;
    function LoadAttrValues(const AttrValueTypes: WideString; Mode: GetCollectionMode): IPDMAttrValueCollection; safecall;
    function AddAttrValue(const AttrType: WideString; AttrValue: OleVariant; 
                          const UnitID: WideString): IPDMAttributeValue; safecall;
    procedure Delete(const Attr: IPDMAttributeValue); safecall;
    function Get_AvailableAttrTypes: WideString; safecall;
    function Get_Count: Integer; safecall;
    function Get_Item(Index: Integer): IPDMAttributeValue; safecall;
    function Get_ItemByName(const Name: WideString): IPDMAttributeValue; safecall;
    function Get_AvailableAttrTypesCollection: IBasePDMCollection; safecall;
    function Get_AttrFromBO(const AttrType: IPDMAttribute2): WordBool; safecall;
    function AddBOAttrValue(const XMLBoAttr: WideString): IPDMAttributeValue; safecall;
    property AllAttrValues: IPDMAttrValueCollection read Get_AllAttrValues;
    property AvailableAttrTypes: WideString read Get_AvailableAttrTypes;
    property Count: Integer read Get_Count;
    property Item[Index: Integer]: IPDMAttributeValue read Get_Item;
    property ItemByName[const Name: WideString]: IPDMAttributeValue read Get_ItemByName;
    property AvailableAttrTypesCollection: IBasePDMCollection read Get_AvailableAttrTypesCollection;
    property AttrFromBO[const AttrType: IPDMAttribute2]: WordBool read Get_AttrFromBO;
  end;

// *********************************************************************//
// DispIntf:  IPDMEntityAttrValuesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {272E1F12-729A-4B4A-A908-0487045896AF}
// *********************************************************************//
  IPDMEntityAttrValuesDisp = dispinterface
    ['{272E1F12-729A-4B4A-A908-0487045896AF}']
    property AllAttrValues: IPDMAttrValueCollection readonly dispid 201;
    function LoadAttrValues(const AttrValueTypes: WideString; Mode: GetCollectionMode): IPDMAttrValueCollection; dispid 202;
    function AddAttrValue(const AttrType: WideString; AttrValue: OleVariant; 
                          const UnitID: WideString): IPDMAttributeValue; dispid 203;
    procedure Delete(const Attr: IPDMAttributeValue); dispid 204;
    property AvailableAttrTypes: WideString readonly dispid 205;
    property Count: Integer readonly dispid 206;
    property Item[Index: Integer]: IPDMAttributeValue readonly dispid 207;
    property ItemByName[const Name: WideString]: IPDMAttributeValue readonly dispid 208;
    property AvailableAttrTypesCollection: IBasePDMCollection readonly dispid 209;
    property AttrFromBO[const AttrType: IPDMAttribute2]: WordBool readonly dispid 210;
    function AddBOAttrValue(const XMLBoAttr: WideString): IPDMAttributeValue; dispid 211;
  end;

// *********************************************************************//
// Interface: IPDMObjectFiles
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BDB1ACFA-D69B-49E3-B000-9220530F14A1}
// *********************************************************************//
  IPDMObjectFiles = interface(IDispatch)
    ['{BDB1ACFA-D69B-49E3-B000-9220530F14A1}']
    function Get_AllFiles: IPDMFilesCollection; safecall;
    function LoadFiles(Mode: GetCollectionMode): IPDMFilesCollection; safecall;
    function AddFile(const UploadFrom: WideString; const NewFileName: WideString; 
                     const NewFilePath: WideString): IPDMFile2; safecall;
    procedure Delete(const PDMFile: IPDMFile2); safecall;
    property AllFiles: IPDMFilesCollection read Get_AllFiles;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectFilesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BDB1ACFA-D69B-49E3-B000-9220530F14A1}
// *********************************************************************//
  IPDMObjectFilesDisp = dispinterface
    ['{BDB1ACFA-D69B-49E3-B000-9220530F14A1}']
    property AllFiles: IPDMFilesCollection readonly dispid 201;
    function LoadFiles(Mode: GetCollectionMode): IPDMFilesCollection; dispid 202;
    function AddFile(const UploadFrom: WideString; const NewFileName: WideString; 
                     const NewFilePath: WideString): IPDMFile2; dispid 203;
    procedure Delete(const PDMFile: IPDMFile2); dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMLink2
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F019110-4C72-457A-B7A5-F0376F5463BA}
// *********************************************************************//
  IPDMLink2 = interface(IAttributedPDMEntity)
    ['{8F019110-4C72-457A-B7A5-F0376F5463BA}']
    function Get_MinQuantity: Double; safecall;
    procedure Set_MinQuantity(Value: Double); safecall;
    function Get_MaxQuantity: Double; safecall;
    procedure Set_MaxQuantity(Value: Double); safecall;
    function Get_UnitID: WideString; safecall;
    procedure Set_UnitID(const Value: WideString); safecall;
    function Get_UnitName: WideString; safecall;
    function Get_MeasureID: WideString; safecall;
    procedure Set_MeasureID(const Value: WideString); safecall;
    function Get_MeasureName: WideString; safecall;
    function Get_ParentObject: IPDMObject2; safecall;
    function Get_ChildObject: IPDMObject2; safecall;
    function Get_ParentObjectID: Integer; safecall;
    function Get_ChildObjectID: Integer; safecall;
    function Get_Horizontal: WordBool; safecall;
    function Get_IsVirtual: WordBool; safecall;
    function Get_AdditionalAttrs: WideString; safecall;
    function Get_AdditionalAttrsValues: WideString; safecall;
    function Get_LinkType: WideString; safecall;
    function Get_LinkBetweenTypes: ILinkBetweenTypes; safecall;
    function Get_LastChangeTime: Double; safecall;
    function GetTreeDescription(const Parent: IPDMObject2; const Child: IPDMObject2; 
                                const ParentLink: ITreeLinkDescription): ITreeLinkDescription; safecall;
    function Get_ChangeLoggers: IChangeLoggersList; safecall;
    function Get_LinkEntries: IPDMLinkEntries; safecall;
    property MinQuantity: Double read Get_MinQuantity write Set_MinQuantity;
    property MaxQuantity: Double read Get_MaxQuantity write Set_MaxQuantity;
    property UnitID: WideString read Get_UnitID write Set_UnitID;
    property UnitName: WideString read Get_UnitName;
    property MeasureID: WideString read Get_MeasureID write Set_MeasureID;
    property MeasureName: WideString read Get_MeasureName;
    property ParentObject: IPDMObject2 read Get_ParentObject;
    property ChildObject: IPDMObject2 read Get_ChildObject;
    property ParentObjectID: Integer read Get_ParentObjectID;
    property ChildObjectID: Integer read Get_ChildObjectID;
    property Horizontal: WordBool read Get_Horizontal;
    property IsVirtual: WordBool read Get_IsVirtual;
    property AdditionalAttrs: WideString read Get_AdditionalAttrs;
    property AdditionalAttrsValues: WideString read Get_AdditionalAttrsValues;
    property LinkType: WideString read Get_LinkType;
    property LinkBetweenTypes: ILinkBetweenTypes read Get_LinkBetweenTypes;
    property LastChangeTime: Double read Get_LastChangeTime;
    property ChangeLoggers: IChangeLoggersList read Get_ChangeLoggers;
    property LinkEntries: IPDMLinkEntries read Get_LinkEntries;
  end;

// *********************************************************************//
// DispIntf:  IPDMLink2Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F019110-4C72-457A-B7A5-F0376F5463BA}
// *********************************************************************//
  IPDMLink2Disp = dispinterface
    ['{8F019110-4C72-457A-B7A5-F0376F5463BA}']
    property MinQuantity: Double dispid 218;
    property MaxQuantity: Double dispid 219;
    property UnitID: WideString dispid 220;
    property UnitName: WideString readonly dispid 221;
    property MeasureID: WideString dispid 222;
    property MeasureName: WideString readonly dispid 223;
    property ParentObject: IPDMObject2 readonly dispid 224;
    property ChildObject: IPDMObject2 readonly dispid 225;
    property ParentObjectID: Integer readonly dispid 226;
    property ChildObjectID: Integer readonly dispid 227;
    property Horizontal: WordBool readonly dispid 228;
    property IsVirtual: WordBool readonly dispid 229;
    property AdditionalAttrs: WideString readonly dispid 230;
    property AdditionalAttrsValues: WideString readonly dispid 231;
    property LinkType: WideString readonly dispid 232;
    property LinkBetweenTypes: ILinkBetweenTypes readonly dispid 233;
    property LastChangeTime: Double readonly dispid 234;
    function GetTreeDescription(const Parent: IPDMObject2; const Child: IPDMObject2; 
                                const ParentLink: ITreeLinkDescription): ITreeLinkDescription; dispid 235;
    property ChangeLoggers: IChangeLoggersList readonly dispid 236;
    property LinkEntries: IPDMLinkEntries readonly dispid 238;
    property Attrs: IPDMEntityAttrValues readonly dispid 213;
    property CopyForCheckout: Integer readonly dispid 201;
    function InEditMode: WordBool; dispid 185;
    property Deleted: WordBool readonly dispid 186;
    property Valid: WordBool readonly dispid 187;
    property ExistsInDB: WordBool readonly dispid 188;
    property SourceEntity: IEditablePDMItem readonly dispid 189;
    function CreateEditableCopy: IEditablePDMItem; dispid 190;
    function SaveToDB(const NotificationSource: WideString): IEditablePDMItem; dispid 191;
    procedure DeleteItem; dispid 192;
    procedure ClearProperty(PropCode: Integer); dispid 193;
    function Changed: WordBool; dispid 194;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: ISignedEntity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE8896A5-9F54-4E27-B116-953B1272CC84}
// *********************************************************************//
  ISignedEntity = interface(IDispatch)
    ['{DE8896A5-9F54-4E27-B116-953B1272CC84}']
    procedure ReloadSignInfo; safecall;
    function Get_SignInfo: IDispatch; safecall;
    function Get_SignInfoValid: WordBool; safecall;
    property SignInfo: IDispatch read Get_SignInfo;
    property SignInfoValid: WordBool read Get_SignInfoValid;
  end;

// *********************************************************************//
// DispIntf:  ISignedEntityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DE8896A5-9F54-4E27-B116-953B1272CC84}
// *********************************************************************//
  ISignedEntityDisp = dispinterface
    ['{DE8896A5-9F54-4E27-B116-953B1272CC84}']
    procedure ReloadSignInfo; dispid 201;
    property SignInfo: IDispatch readonly dispid 202;
    property SignInfoValid: WordBool readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IPDMLinkAbsEntry
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {341F0B93-1A71-2A5C-07B6-01243F17C127}
// *********************************************************************//
  IPDMLinkAbsEntry = interface(IDispatch)
    ['{341F0B93-1A71-2A5C-07B6-01243F17C127}']
    function Get_ID: Integer; safecall;
    function Get_GUID: WideString; safecall;
    function Get_OwnerRoot: IPDMObject2; safecall;
    function Get_OwnerEntry: IPDMLinkEntry; safecall;
    function Get_FamilyKey: WideString; safecall;
    function Get_Source: WideString; safecall;
    function Get_BorrowKey: WideString; safecall;
    function Get_HasValidSource: WordBool; safecall;
    function Get_Path: WideString; safecall;
    function Get_BorrowCollection: IPDMLinkAbsEntriesBorrow; safecall;
    function Get_VersionPathCollection: IPDMLinkAbsEntryVersionPathCollection; safecall;
    function Get_BorrowMark: Integer; safecall;
    property ID: Integer read Get_ID;
    property GUID: WideString read Get_GUID;
    property OwnerRoot: IPDMObject2 read Get_OwnerRoot;
    property OwnerEntry: IPDMLinkEntry read Get_OwnerEntry;
    property FamilyKey: WideString read Get_FamilyKey;
    property Source: WideString read Get_Source;
    property BorrowKey: WideString read Get_BorrowKey;
    property HasValidSource: WordBool read Get_HasValidSource;
    property Path: WideString read Get_Path;
    property BorrowCollection: IPDMLinkAbsEntriesBorrow read Get_BorrowCollection;
    property VersionPathCollection: IPDMLinkAbsEntryVersionPathCollection read Get_VersionPathCollection;
    property BorrowMark: Integer read Get_BorrowMark;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkAbsEntryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {341F0B93-1A71-2A5C-07B6-01243F17C127}
// *********************************************************************//
  IPDMLinkAbsEntryDisp = dispinterface
    ['{341F0B93-1A71-2A5C-07B6-01243F17C127}']
    property ID: Integer readonly dispid 201;
    property GUID: WideString readonly dispid 202;
    property OwnerRoot: IPDMObject2 readonly dispid 203;
    property OwnerEntry: IPDMLinkEntry readonly dispid 204;
    property FamilyKey: WideString readonly dispid 205;
    property Source: WideString readonly dispid 206;
    property BorrowKey: WideString readonly dispid 207;
    property HasValidSource: WordBool readonly dispid 208;
    property Path: WideString readonly dispid 209;
    property BorrowCollection: IPDMLinkAbsEntriesBorrow readonly dispid 210;
    property VersionPathCollection: IPDMLinkAbsEntryVersionPathCollection readonly dispid 211;
    property BorrowMark: Integer readonly dispid 212;
  end;

// *********************************************************************//
// Interface: IPDMLinkAbsEntryVersionPathItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {52A21B13-7535-FBCC-0102-2FD58F81E020}
// *********************************************************************//
  IPDMLinkAbsEntryVersionPathItem = interface(IDispatch)
    ['{52A21B13-7535-FBCC-0102-2FD58F81E020}']
    function Get_Order: Integer; safecall;
    function Get_TypeId: Integer; safecall;
    function Get_Product: WideString; safecall;
    function Get_FamilyKey: WideString; safecall;
    property Order: Integer read Get_Order;
    property TypeId: Integer read Get_TypeId;
    property Product: WideString read Get_Product;
    property FamilyKey: WideString read Get_FamilyKey;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkAbsEntryVersionPathItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {52A21B13-7535-FBCC-0102-2FD58F81E020}
// *********************************************************************//
  IPDMLinkAbsEntryVersionPathItemDisp = dispinterface
    ['{52A21B13-7535-FBCC-0102-2FD58F81E020}']
    property Order: Integer readonly dispid 201;
    property TypeId: Integer readonly dispid 202;
    property Product: WideString readonly dispid 203;
    property FamilyKey: WideString readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMLinkAbsEntryVersionPathCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B700AA32-6D66-0148-E1B7-010F30170120}
// *********************************************************************//
  IPDMLinkAbsEntryVersionPathCollection = interface(IDispatch)
    ['{B700AA32-6D66-0148-E1B7-010F30170120}']
    function Get_Count: Integer; safecall;
    function Get_Items(aIndex: Integer): IPDMLinkAbsEntryVersionPathItem; safecall;
    property Count: Integer read Get_Count;
    property Items[aIndex: Integer]: IPDMLinkAbsEntryVersionPathItem read Get_Items;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkAbsEntryVersionPathCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B700AA32-6D66-0148-E1B7-010F30170120}
// *********************************************************************//
  IPDMLinkAbsEntryVersionPathCollectionDisp = dispinterface
    ['{B700AA32-6D66-0148-E1B7-010F30170120}']
    property Count: Integer readonly dispid 201;
    property Items[aIndex: Integer]: IPDMLinkAbsEntryVersionPathItem readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IPDMLinkAbsEntries
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {541F0B93-1A71-2A5C-07B6-01243F17C128}
// *********************************************************************//
  IPDMLinkAbsEntries = interface(IDispatch)
    ['{541F0B93-1A71-2A5C-07B6-01243F17C128}']
    function Get_Count: Integer; safecall;
    function Get_Items(aIndex: Integer): IPDMLinkAbsEntry; safecall;
    procedure Clear; safecall;
    procedure Add(const aItem: IPDMLinkAbsEntry); safecall;
    function Get_Initialized: WordBool; safecall;
    procedure Set_Initialized(aValue: WordBool); safecall;
    property Count: Integer read Get_Count;
    property Items[aIndex: Integer]: IPDMLinkAbsEntry read Get_Items;
    property Initialized: WordBool read Get_Initialized write Set_Initialized;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkAbsEntriesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {541F0B93-1A71-2A5C-07B6-01243F17C128}
// *********************************************************************//
  IPDMLinkAbsEntriesDisp = dispinterface
    ['{541F0B93-1A71-2A5C-07B6-01243F17C128}']
    property Count: Integer readonly dispid 201;
    property Items[aIndex: Integer]: IPDMLinkAbsEntry readonly dispid 202;
    procedure Clear; dispid 203;
    procedure Add(const aItem: IPDMLinkAbsEntry); dispid 204;
    property Initialized: WordBool dispid 205;
  end;

// *********************************************************************//
// Interface: IPDMLinkAbsEntryBorrow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {021B0E93-DA71-DA5C-87B6-81243F17C129}
// *********************************************************************//
  IPDMLinkAbsEntryBorrow = interface(IDispatch)
    ['{021B0E93-DA71-DA5C-87B6-81243F17C129}']
    function Get_OwnerAbsEntry: IPDMLinkAbsEntry; safecall;
    function Get_BorrowAbsEntryId: Integer; safecall;
    function Get_BorrowRootObjectId: Integer; safecall;
    function Get_BorrowType: TAbsEntryBorrowType; safecall;
    function Get_BorrowPath: WideString; safecall;
    function Get_VersionPathCollection: IPDMLinkAbsEntryVersionPathCollection; safecall;
    property OwnerAbsEntry: IPDMLinkAbsEntry read Get_OwnerAbsEntry;
    property BorrowAbsEntryId: Integer read Get_BorrowAbsEntryId;
    property BorrowRootObjectId: Integer read Get_BorrowRootObjectId;
    property BorrowType: TAbsEntryBorrowType read Get_BorrowType;
    property BorrowPath: WideString read Get_BorrowPath;
    property VersionPathCollection: IPDMLinkAbsEntryVersionPathCollection read Get_VersionPathCollection;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkAbsEntryBorrowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {021B0E93-DA71-DA5C-87B6-81243F17C129}
// *********************************************************************//
  IPDMLinkAbsEntryBorrowDisp = dispinterface
    ['{021B0E93-DA71-DA5C-87B6-81243F17C129}']
    property OwnerAbsEntry: IPDMLinkAbsEntry readonly dispid 201;
    property BorrowAbsEntryId: Integer readonly dispid 202;
    property BorrowRootObjectId: Integer readonly dispid 203;
    property BorrowType: TAbsEntryBorrowType readonly dispid 204;
    property BorrowPath: WideString readonly dispid 205;
    property VersionPathCollection: IPDMLinkAbsEntryVersionPathCollection readonly dispid 206;
  end;

// *********************************************************************//
// Interface: IPDMLinkAbsEntriesBorrow
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {041F0B93-1C71-A45C-F7BF-012F3917C129}
// *********************************************************************//
  IPDMLinkAbsEntriesBorrow = interface(IDispatch)
    ['{041F0B93-1C71-A45C-F7BF-012F3917C129}']
    function Get_Count: Integer; safecall;
    function Get_Items(aIndex: Integer): IPDMLinkAbsEntryBorrow; safecall;
    procedure Clear; safecall;
    procedure Add(const aItem: IPDMLinkAbsEntryBorrow); safecall;
    property Count: Integer read Get_Count;
    property Items[aIndex: Integer]: IPDMLinkAbsEntryBorrow read Get_Items;
  end;

// *********************************************************************//
// DispIntf:  IPDMLinkAbsEntriesBorrowDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {041F0B93-1C71-A45C-F7BF-012F3917C129}
// *********************************************************************//
  IPDMLinkAbsEntriesBorrowDisp = dispinterface
    ['{041F0B93-1C71-A45C-F7BF-012F3917C129}']
    property Count: Integer readonly dispid 201;
    property Items[aIndex: Integer]: IPDMLinkAbsEntryBorrow readonly dispid 202;
    procedure Clear; dispid 203;
    procedure Add(const aItem: IPDMLinkAbsEntryBorrow); dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0F14A3D3-3EE7-71A2-1928-2A0D781F7777}
// *********************************************************************//
  IPDMTypePolynomInfo = interface(IDispatch)
    ['{0F14A3D3-3EE7-71A2-1928-2A0D781F7777}']
    function Get_Server: IBOServerDescription; safecall;
    function Get_AllowCreateNonPolynomObjects: WordBool; safecall;
    function Get_AssociationWithPolymonType: TAssociationWithPolymon; safecall;
    function Get_GroupBindingRules: IPDMTypePolynomGroupBindingRulesCollection; safecall;
    property Server: IBOServerDescription read Get_Server;
    property AllowCreateNonPolynomObjects: WordBool read Get_AllowCreateNonPolynomObjects;
    property AssociationWithPolymonType: TAssociationWithPolymon read Get_AssociationWithPolymonType;
    property GroupBindingRules: IPDMTypePolynomGroupBindingRulesCollection read Get_GroupBindingRules;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0F14A3D3-3EE7-71A2-1928-2A0D781F7777}
// *********************************************************************//
  IPDMTypePolynomInfoDisp = dispinterface
    ['{0F14A3D3-3EE7-71A2-1928-2A0D781F7777}']
    property Server: IBOServerDescription readonly dispid 201;
    property AllowCreateNonPolynomObjects: WordBool readonly dispid 202;
    property AssociationWithPolymonType: TAssociationWithPolymon readonly dispid 203;
    property GroupBindingRules: IPDMTypePolynomGroupBindingRulesCollection readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomBindingRuleItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BC74A4D3-1110-70A0-2AFF-3E0E441F767B}
// *********************************************************************//
  IPDMTypePolynomBindingRuleItem = interface(IDispatch)
    ['{BC74A4D3-1110-70A0-2AFF-3E0E441F767B}']
    function Get_ItemName: WideString; safecall;
    function Get_ItemCode: WideString; safecall;
    function Get_ItemType: WideString; safecall;
    property ItemName: WideString read Get_ItemName;
    property ItemCode: WideString read Get_ItemCode;
    property ItemType: WideString read Get_ItemType;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomBindingRuleItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BC74A4D3-1110-70A0-2AFF-3E0E441F767B}
// *********************************************************************//
  IPDMTypePolynomBindingRuleItemDisp = dispinterface
    ['{BC74A4D3-1110-70A0-2AFF-3E0E441F767B}']
    property ItemName: WideString readonly dispid 201;
    property ItemCode: WideString readonly dispid 202;
    property ItemType: WideString readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomGroupBindingRuleItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1F14A3D3-3EE7-71A2-1928-2A0D781F7771}
// *********************************************************************//
  IPDMTypePolynomGroupBindingRuleItem = interface(IPDMItem)
    ['{1F14A3D3-3EE7-71A2-1928-2A0D781F7771}']
    function Get_Order: Integer; safecall;
    function Get_GroupItem: IPDMTypePolynomBindingRuleItem; safecall;
    function Get_ConceptItem: IPDMTypePolynomBindingRuleItem; safecall;
    function Get_KeyAttrRule: IPDMTypePolynomBindingRule; safecall;
    function Get_StatesRule: IPDMTypePolynomBindingRule; safecall;
    function Get_MappedStateValues(const aStateName: WideString): IPDMTypePolynomMappedStateValuesCollection; safecall;
    function Get_MappedLinks: IPDMTypePolynomMappedLinksCollection; safecall;
    function Get_MappedDependentAttributes: IPDMTypePolynomMappedAttributesCollection; safecall;
    property Order: Integer read Get_Order;
    property GroupItem: IPDMTypePolynomBindingRuleItem read Get_GroupItem;
    property ConceptItem: IPDMTypePolynomBindingRuleItem read Get_ConceptItem;
    property KeyAttrRule: IPDMTypePolynomBindingRule read Get_KeyAttrRule;
    property StatesRule: IPDMTypePolynomBindingRule read Get_StatesRule;
    property MappedStateValues[const aStateName: WideString]: IPDMTypePolynomMappedStateValuesCollection read Get_MappedStateValues;
    property MappedLinks: IPDMTypePolynomMappedLinksCollection read Get_MappedLinks;
    property MappedDependentAttributes: IPDMTypePolynomMappedAttributesCollection read Get_MappedDependentAttributes;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomGroupBindingRuleItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1F14A3D3-3EE7-71A2-1928-2A0D781F7771}
// *********************************************************************//
  IPDMTypePolynomGroupBindingRuleItemDisp = dispinterface
    ['{1F14A3D3-3EE7-71A2-1928-2A0D781F7771}']
    property Order: Integer readonly dispid 201;
    property GroupItem: IPDMTypePolynomBindingRuleItem readonly dispid 202;
    property ConceptItem: IPDMTypePolynomBindingRuleItem readonly dispid 203;
    property KeyAttrRule: IPDMTypePolynomBindingRule readonly dispid 204;
    property StatesRule: IPDMTypePolynomBindingRule readonly dispid 205;
    property MappedStateValues[const aStateName: WideString]: IPDMTypePolynomMappedStateValuesCollection readonly dispid 206;
    property MappedLinks: IPDMTypePolynomMappedLinksCollection readonly dispid 207;
    property MappedDependentAttributes: IPDMTypePolynomMappedAttributesCollection readonly dispid 208;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomGroupBindingRulesCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F14A3D3-3EE7-71A2-1928-2A0D781F7772}
// *********************************************************************//
  IPDMTypePolynomGroupBindingRulesCollection = interface(IBasePDMCollection)
    ['{2F14A3D3-3EE7-71A2-1928-2A0D781F7772}']
    function Get_GroupBindingRule(aIndex: Integer): IPDMTypePolynomGroupBindingRuleItem; safecall;
    property GroupBindingRule[aIndex: Integer]: IPDMTypePolynomGroupBindingRuleItem read Get_GroupBindingRule;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomGroupBindingRulesCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2F14A3D3-3EE7-71A2-1928-2A0D781F7772}
// *********************************************************************//
  IPDMTypePolynomGroupBindingRulesCollectionDisp = dispinterface
    ['{2F14A3D3-3EE7-71A2-1928-2A0D781F7772}']
    property GroupBindingRule[aIndex: Integer]: IPDMTypePolynomGroupBindingRuleItem readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomBindingRule
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F14A3D3-3EE7-71A2-1928-2A0D781F7773}
// *********************************************************************//
  IPDMTypePolynomBindingRule = interface(IDispatch)
    ['{3F14A3D3-3EE7-71A2-1928-2A0D781F7773}']
    function Get_Affilation: Integer; safecall;
    function Get_PropertyItem: IPDMTypePolynomBindingRuleItem; safecall;
    function Get_PropertyConceptItem: IPDMTypePolynomBindingRuleItem; safecall;
    function Get_BindingRuleLinks: IPDMTypePolynomBindingRuleLinksCollection; safecall;
    property Affilation: Integer read Get_Affilation;
    property PropertyItem: IPDMTypePolynomBindingRuleItem read Get_PropertyItem;
    property PropertyConceptItem: IPDMTypePolynomBindingRuleItem read Get_PropertyConceptItem;
    property BindingRuleLinks: IPDMTypePolynomBindingRuleLinksCollection read Get_BindingRuleLinks;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomBindingRuleDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3F14A3D3-3EE7-71A2-1928-2A0D781F7773}
// *********************************************************************//
  IPDMTypePolynomBindingRuleDisp = dispinterface
    ['{3F14A3D3-3EE7-71A2-1928-2A0D781F7773}']
    property Affilation: Integer readonly dispid 201;
    property PropertyItem: IPDMTypePolynomBindingRuleItem readonly dispid 202;
    property PropertyConceptItem: IPDMTypePolynomBindingRuleItem readonly dispid 203;
    property BindingRuleLinks: IPDMTypePolynomBindingRuleLinksCollection readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomBindingRuleLinkItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F14A3D3-3EE7-71A2-1928-2A0D781F7774}
// *********************************************************************//
  IPDMTypePolynomBindingRuleLinkItem = interface(IPDMItem)
    ['{4F14A3D3-3EE7-71A2-1928-2A0D781F7774}']
    function Get_LinkItem: IPDMTypePolynomBindingRuleItem; safecall;
    function Get_ConceptItem: IPDMTypePolynomBindingRuleItem; safecall;
    property LinkItem: IPDMTypePolynomBindingRuleItem read Get_LinkItem;
    property ConceptItem: IPDMTypePolynomBindingRuleItem read Get_ConceptItem;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomBindingRuleLinkItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F14A3D3-3EE7-71A2-1928-2A0D781F7774}
// *********************************************************************//
  IPDMTypePolynomBindingRuleLinkItemDisp = dispinterface
    ['{4F14A3D3-3EE7-71A2-1928-2A0D781F7774}']
    property LinkItem: IPDMTypePolynomBindingRuleItem readonly dispid 201;
    property ConceptItem: IPDMTypePolynomBindingRuleItem readonly dispid 202;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomBindingRuleLinksCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5F14A3D3-3EE7-71A2-1928-2A0D781F7775}
// *********************************************************************//
  IPDMTypePolynomBindingRuleLinksCollection = interface(IBasePDMCollection)
    ['{5F14A3D3-3EE7-71A2-1928-2A0D781F7775}']
    function Get_BindingRuleLink(aIndex: Integer): IPDMTypePolynomBindingRuleLinkItem; safecall;
    property BindingRuleLink[aIndex: Integer]: IPDMTypePolynomBindingRuleLinkItem read Get_BindingRuleLink;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomBindingRuleLinksCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5F14A3D3-3EE7-71A2-1928-2A0D781F7775}
// *********************************************************************//
  IPDMTypePolynomBindingRuleLinksCollectionDisp = dispinterface
    ['{5F14A3D3-3EE7-71A2-1928-2A0D781F7775}']
    property BindingRuleLink[aIndex: Integer]: IPDMTypePolynomBindingRuleLinkItem readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomMappedStateValuesCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6F14A3D3-3EE7-71A2-1928-2A0D781F7776}
// *********************************************************************//
  IPDMTypePolynomMappedStateValuesCollection = interface(IDispatch)
    ['{6F14A3D3-3EE7-71A2-1928-2A0D781F7776}']
    function Get_Value(aIndex: Integer): WideString; safecall;
    function Get_Count: Integer; safecall;
    function Get_StateName: WideString; safecall;
    property Value[aIndex: Integer]: WideString read Get_Value;
    property Count: Integer read Get_Count;
    property StateName: WideString read Get_StateName;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomMappedStateValuesCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6F14A3D3-3EE7-71A2-1928-2A0D781F7776}
// *********************************************************************//
  IPDMTypePolynomMappedStateValuesCollectionDisp = dispinterface
    ['{6F14A3D3-3EE7-71A2-1928-2A0D781F7776}']
    property Value[aIndex: Integer]: WideString readonly dispid 201;
    property Count: Integer readonly dispid 202;
    property StateName: WideString readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomMappedLinkItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {741FA3D3-3EE7-71A2-1128-2A0D781F7777}
// *********************************************************************//
  IPDMTypePolynomMappedLinkItem = interface(IPDMItem)
    ['{741FA3D3-3EE7-71A2-1128-2A0D781F7777}']
    function Get_ChildTypeId: Integer; safecall;
    function Get_ChildTypeName: WideString; safecall;
    function Get_LinkId: Integer; safecall;
    function Get_LinkName: WideString; safecall;
    function Get_IsQuantity: WordBool; safecall;
    function Get_LinkRule: IPDMTypePolynomBindingRule; safecall;
    function Get_LinkQuantityRules: IPDMTypePolynomMappedLinkQuantityCollection; safecall;
    property ChildTypeId: Integer read Get_ChildTypeId;
    property ChildTypeName: WideString read Get_ChildTypeName;
    property LinkId: Integer read Get_LinkId;
    property LinkName: WideString read Get_LinkName;
    property IsQuantity: WordBool read Get_IsQuantity;
    property LinkRule: IPDMTypePolynomBindingRule read Get_LinkRule;
    property LinkQuantityRules: IPDMTypePolynomMappedLinkQuantityCollection read Get_LinkQuantityRules;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomMappedLinkItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {741FA3D3-3EE7-71A2-1128-2A0D781F7777}
// *********************************************************************//
  IPDMTypePolynomMappedLinkItemDisp = dispinterface
    ['{741FA3D3-3EE7-71A2-1128-2A0D781F7777}']
    property ChildTypeId: Integer readonly dispid 201;
    property ChildTypeName: WideString readonly dispid 202;
    property LinkId: Integer readonly dispid 203;
    property LinkName: WideString readonly dispid 204;
    property IsQuantity: WordBool readonly dispid 205;
    property LinkRule: IPDMTypePolynomBindingRule readonly dispid 206;
    property LinkQuantityRules: IPDMTypePolynomMappedLinkQuantityCollection readonly dispid 208;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomMappedLinksCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F14A3D3-4EE7-41A2-4981-2A0D781F7878}
// *********************************************************************//
  IPDMTypePolynomMappedLinksCollection = interface(IBasePDMCollection)
    ['{8F14A3D3-4EE7-41A2-4981-2A0D781F7878}']
    function Get_MappedLink(aIndex: Integer): IPDMTypePolynomMappedLinkItem; safecall;
    property MappedLink[aIndex: Integer]: IPDMTypePolynomMappedLinkItem read Get_MappedLink;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomMappedLinksCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8F14A3D3-4EE7-41A2-4981-2A0D781F7878}
// *********************************************************************//
  IPDMTypePolynomMappedLinksCollectionDisp = dispinterface
    ['{8F14A3D3-4EE7-41A2-4981-2A0D781F7878}']
    property MappedLink[aIndex: Integer]: IPDMTypePolynomMappedLinkItem readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomMappedLinkQuantityItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9113F311-2ACB-BB00-41F8-D10D781F0366}
// *********************************************************************//
  IPDMTypePolynomMappedLinkQuantityItem = interface(IPDMItem)
    ['{9113F311-2ACB-BB00-41F8-D10D781F0366}']
    function Get_ItemOrder: Integer; safecall;
    function Get_QuantityRule: IPDMTypePolynomBindingRule; safecall;
    property ItemOrder: Integer read Get_ItemOrder;
    property QuantityRule: IPDMTypePolynomBindingRule read Get_QuantityRule;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomMappedLinkQuantityItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9113F311-2ACB-BB00-41F8-D10D781F0366}
// *********************************************************************//
  IPDMTypePolynomMappedLinkQuantityItemDisp = dispinterface
    ['{9113F311-2ACB-BB00-41F8-D10D781F0366}']
    property ItemOrder: Integer readonly dispid 201;
    property QuantityRule: IPDMTypePolynomBindingRule readonly dispid 202;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomMappedLinkQuantityCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9223C31C-231E-4B41-01F0-F21D08109369}
// *********************************************************************//
  IPDMTypePolynomMappedLinkQuantityCollection = interface(IBasePDMCollection)
    ['{9223C31C-231E-4B41-01F0-F21D08109369}']
    function Get_MappedLinkQuantity(aIndex: Integer): IPDMTypePolynomMappedLinkQuantityItem; safecall;
    property MappedLinkQuantity[aIndex: Integer]: IPDMTypePolynomMappedLinkQuantityItem read Get_MappedLinkQuantity;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomMappedLinkQuantityCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9223C31C-231E-4B41-01F0-F21D08109369}
// *********************************************************************//
  IPDMTypePolynomMappedLinkQuantityCollectionDisp = dispinterface
    ['{9223C31C-231E-4B41-01F0-F21D08109369}']
    property MappedLinkQuantity[aIndex: Integer]: IPDMTypePolynomMappedLinkQuantityItem readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomMappedAttributesItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0147FA1A-3139-7745-B2F1-A00D08100301}
// *********************************************************************//
  IPDMTypePolynomMappedAttributesItem = interface(IPDMItem)
    ['{0147FA1A-3139-7745-B2F1-A00D08100301}']
    function Get_AllowEdit: WordBool; safecall;
    function Get_IsLinkAttribute: WordBool; safecall;
    function Get_ParentTypeId: Integer; safecall;
    function Get_ParentTypeName: WideString; safecall;
    function Get_LinkId: Integer; safecall;
    function Get_LinkName: WideString; safecall;
    function Get_DependentBindingRule: IPDMTypePolynomBindingRule; safecall;
    function Get_IndependentBindingRulesCollection: IPDMTypePolynomBindingRuleAttrCollection; safecall;
    function Get_RuleId: Integer; safecall;
    property AllowEdit: WordBool read Get_AllowEdit;
    property IsLinkAttribute: WordBool read Get_IsLinkAttribute;
    property ParentTypeId: Integer read Get_ParentTypeId;
    property ParentTypeName: WideString read Get_ParentTypeName;
    property LinkId: Integer read Get_LinkId;
    property LinkName: WideString read Get_LinkName;
    property DependentBindingRule: IPDMTypePolynomBindingRule read Get_DependentBindingRule;
    property IndependentBindingRulesCollection: IPDMTypePolynomBindingRuleAttrCollection read Get_IndependentBindingRulesCollection;
    property RuleId: Integer read Get_RuleId;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomMappedAttributesItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0147FA1A-3139-7745-B2F1-A00D08100301}
// *********************************************************************//
  IPDMTypePolynomMappedAttributesItemDisp = dispinterface
    ['{0147FA1A-3139-7745-B2F1-A00D08100301}']
    property AllowEdit: WordBool readonly dispid 201;
    property IsLinkAttribute: WordBool readonly dispid 202;
    property ParentTypeId: Integer readonly dispid 203;
    property ParentTypeName: WideString readonly dispid 204;
    property LinkId: Integer readonly dispid 205;
    property LinkName: WideString readonly dispid 206;
    property DependentBindingRule: IPDMTypePolynomBindingRule readonly dispid 207;
    property IndependentBindingRulesCollection: IPDMTypePolynomBindingRuleAttrCollection readonly dispid 208;
    property RuleId: Integer readonly dispid 209;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomMappedAttributesCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1247FA1A-3139-7745-B2F1-A00D08100312}
// *********************************************************************//
  IPDMTypePolynomMappedAttributesCollection = interface(IBasePDMCollection)
    ['{1247FA1A-3139-7745-B2F1-A00D08100312}']
    function Get_MappedAttribute(aIndex: Integer): IPDMTypePolynomMappedAttributesItem; safecall;
    property MappedAttribute[aIndex: Integer]: IPDMTypePolynomMappedAttributesItem read Get_MappedAttribute;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomMappedAttributesCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1247FA1A-3139-7745-B2F1-A00D08100312}
// *********************************************************************//
  IPDMTypePolynomMappedAttributesCollectionDisp = dispinterface
    ['{1247FA1A-3139-7745-B2F1-A00D08100312}']
    property MappedAttribute[aIndex: Integer]: IPDMTypePolynomMappedAttributesItem readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomBindingRuleAttr
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {54628EE0-1374-2220-F0F8-A84D0810CC18}
// *********************************************************************//
  IPDMTypePolynomBindingRuleAttr = interface(IPDMTypePolynomBindingRule)
    ['{54628EE0-1374-2220-F0F8-A84D0810CC18}']
    function Get_Order: Integer; safecall;
    function Get_GroupItem: IPDMTypePolynomBindingRuleItem; safecall;
    function Get_ConceptItem: IPDMTypePolynomBindingRuleItem; safecall;
    function Get_RuleId: Integer; safecall;
    property Order: Integer read Get_Order;
    property GroupItem: IPDMTypePolynomBindingRuleItem read Get_GroupItem;
    property ConceptItem: IPDMTypePolynomBindingRuleItem read Get_ConceptItem;
    property RuleId: Integer read Get_RuleId;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomBindingRuleAttrDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {54628EE0-1374-2220-F0F8-A84D0810CC18}
// *********************************************************************//
  IPDMTypePolynomBindingRuleAttrDisp = dispinterface
    ['{54628EE0-1374-2220-F0F8-A84D0810CC18}']
    property Order: Integer readonly dispid 205;
    property GroupItem: IPDMTypePolynomBindingRuleItem readonly dispid 206;
    property ConceptItem: IPDMTypePolynomBindingRuleItem readonly dispid 207;
    property RuleId: Integer readonly dispid 208;
    property Affilation: Integer readonly dispid 201;
    property PropertyItem: IPDMTypePolynomBindingRuleItem readonly dispid 202;
    property PropertyConceptItem: IPDMTypePolynomBindingRuleItem readonly dispid 203;
    property BindingRuleLinks: IPDMTypePolynomBindingRuleLinksCollection readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomBindingRuleAttrCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53417A1F-0414-372F-A2FA-A04D0810881B}
// *********************************************************************//
  IPDMTypePolynomBindingRuleAttrCollection = interface(IDispatch)
    ['{53417A1F-0414-372F-A2FA-A04D0810881B}']
    function Get_BindingRuleAttr(aIndex: Integer): IPDMTypePolynomBindingRuleAttr; safecall;
    function Get_Count: Integer; safecall;
    property BindingRuleAttr[aIndex: Integer]: IPDMTypePolynomBindingRuleAttr read Get_BindingRuleAttr;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomBindingRuleAttrCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {53417A1F-0414-372F-A2FA-A04D0810881B}
// *********************************************************************//
  IPDMTypePolynomBindingRuleAttrCollectionDisp = dispinterface
    ['{53417A1F-0414-372F-A2FA-A04D0810881B}']
    property BindingRuleAttr[aIndex: Integer]: IPDMTypePolynomBindingRuleAttr readonly dispid 201;
    property Count: Integer readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IPDMTypePolynomClassificationInfo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1422A32D-F004-5132-1458-6B0B781F7379}
// *********************************************************************//
  IPDMTypePolynomClassificationInfo = interface(IDispatch)
    ['{1422A32D-F004-5132-1458-6B0B781F7379}']
    function Get_Server: IBOServerDescription; safecall;
    function Get_CopyClassificationOnCreateVersion: WordBool; safecall;
    function Get_CopyClassificationOnCreateCopy: WordBool; safecall;
    function Get_GroupBindingRules: IPDMTypePolynomGroupBindingRulesCollection; safecall;
    property Server: IBOServerDescription read Get_Server;
    property CopyClassificationOnCreateVersion: WordBool read Get_CopyClassificationOnCreateVersion;
    property CopyClassificationOnCreateCopy: WordBool read Get_CopyClassificationOnCreateCopy;
    property GroupBindingRules: IPDMTypePolynomGroupBindingRulesCollection read Get_GroupBindingRules;
  end;

// *********************************************************************//
// DispIntf:  IPDMTypePolynomClassificationInfoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1422A32D-F004-5132-1458-6B0B781F7379}
// *********************************************************************//
  IPDMTypePolynomClassificationInfoDisp = dispinterface
    ['{1422A32D-F004-5132-1458-6B0B781F7379}']
    property Server: IBOServerDescription readonly dispid 201;
    property CopyClassificationOnCreateVersion: WordBool readonly dispid 202;
    property CopyClassificationOnCreateCopy: WordBool readonly dispid 203;
    property GroupBindingRules: IPDMTypePolynomGroupBindingRulesCollection readonly dispid 204;
  end;

// *********************************************************************//
// Interface: IPDMObjectTypeQualificationItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F834515-0E20-2303-71A4-0505785F0561}
// *********************************************************************//
  IPDMObjectTypeQualificationItem = interface(IPDMItem)
    ['{9F834515-0E20-2303-71A4-0505785F0561}']
    function Get_QualificationId: Integer; safecall;
    function Get_QualificationName: WideString; safecall;
    function Get_QualificationCode: Integer; safecall;
    property QualificationId: Integer read Get_QualificationId;
    property QualificationName: WideString read Get_QualificationName;
    property QualificationCode: Integer read Get_QualificationCode;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectTypeQualificationItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F834515-0E20-2303-71A4-0505785F0561}
// *********************************************************************//
  IPDMObjectTypeQualificationItemDisp = dispinterface
    ['{9F834515-0E20-2303-71A4-0505785F0561}']
    property QualificationId: Integer readonly dispid 201;
    property QualificationName: WideString readonly dispid 202;
    property QualificationCode: Integer readonly dispid 203;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMObjectTypeQualificationCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {62670010-1478-7845-A8FC-EC07B810B31B}
// *********************************************************************//
  IPDMObjectTypeQualificationCollection = interface(IBasePDMCollection)
    ['{62670010-1478-7845-A8FC-EC07B810B31B}']
    function Get_QualificationItem(aIndex: Integer): IPDMObjectTypeQualificationItem; safecall;
    property QualificationItem[aIndex: Integer]: IPDMObjectTypeQualificationItem read Get_QualificationItem;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectTypeQualificationCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {62670010-1478-7845-A8FC-EC07B810B31B}
// *********************************************************************//
  IPDMObjectTypeQualificationCollectionDisp = dispinterface
    ['{62670010-1478-7845-A8FC-EC07B810B31B}']
    property QualificationItem[aIndex: Integer]: IPDMObjectTypeQualificationItem readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMObjectConfigurationProperties
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {71DB50D6-1DA4-282C-E71F-3A3E16167638}
// *********************************************************************//
  IPDMObjectConfigurationProperties = interface(IDispatch)
    ['{71DB50D6-1DA4-282C-E71F-3A3E16167638}']
    function Get_StructureMode: Integer; safecall;
    function Get_HasFixedVersion: WordBool; safecall;
    function Get_RuleId: Integer; safecall;
    function Get_FinalProductId: Integer; safecall;
    function Get_FinalProductAccess: Integer; safecall;
    function Get_FinalProductDeleted: WordBool; safecall;
    function Get_FinalProductTypeId: Integer; safecall;
    function Get_FinalProductStateId: Integer; safecall;
    function Get_FinalProductName: WideString; safecall;
    function Get_FinalProductVersion: WideString; safecall;
    procedure Refresh; safecall;
    function Get_QuickParamsCollection: IPDMObjectConfigurationQuickParamsCollection; safecall;
    procedure Update(aStructureMode: Integer; aRuleID: Integer; aFinalProductID: Integer); safecall;
    function Get_FixedVersionCollection: IPDMObjectConfigurationFixedVersionCollection; safecall;
    procedure FixLinksVersions(aLinksAndVersionsArray: OleVariant); safecall;
    procedure UnFixLinksVersions(aLinksAndVersionsArray: OleVariant); safecall;
    procedure UnFixAllLinksVersions; safecall;
    function Get_RuleName: WideString; safecall;
    property StructureMode: Integer read Get_StructureMode;
    property HasFixedVersion: WordBool read Get_HasFixedVersion;
    property RuleId: Integer read Get_RuleId;
    property FinalProductId: Integer read Get_FinalProductId;
    property FinalProductAccess: Integer read Get_FinalProductAccess;
    property FinalProductDeleted: WordBool read Get_FinalProductDeleted;
    property FinalProductTypeId: Integer read Get_FinalProductTypeId;
    property FinalProductStateId: Integer read Get_FinalProductStateId;
    property FinalProductName: WideString read Get_FinalProductName;
    property FinalProductVersion: WideString read Get_FinalProductVersion;
    property QuickParamsCollection: IPDMObjectConfigurationQuickParamsCollection read Get_QuickParamsCollection;
    property FixedVersionCollection: IPDMObjectConfigurationFixedVersionCollection read Get_FixedVersionCollection;
    property RuleName: WideString read Get_RuleName;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectConfigurationPropertiesDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {71DB50D6-1DA4-282C-E71F-3A3E16167638}
// *********************************************************************//
  IPDMObjectConfigurationPropertiesDisp = dispinterface
    ['{71DB50D6-1DA4-282C-E71F-3A3E16167638}']
    property StructureMode: Integer readonly dispid 201;
    property HasFixedVersion: WordBool readonly dispid 202;
    property RuleId: Integer readonly dispid 203;
    property FinalProductId: Integer readonly dispid 204;
    property FinalProductAccess: Integer readonly dispid 205;
    property FinalProductDeleted: WordBool readonly dispid 206;
    property FinalProductTypeId: Integer readonly dispid 207;
    property FinalProductStateId: Integer readonly dispid 208;
    property FinalProductName: WideString readonly dispid 209;
    property FinalProductVersion: WideString readonly dispid 210;
    procedure Refresh; dispid 211;
    property QuickParamsCollection: IPDMObjectConfigurationQuickParamsCollection readonly dispid 212;
    procedure Update(aStructureMode: Integer; aRuleID: Integer; aFinalProductID: Integer); dispid 213;
    property FixedVersionCollection: IPDMObjectConfigurationFixedVersionCollection readonly dispid 214;
    procedure FixLinksVersions(aLinksAndVersionsArray: OleVariant); dispid 215;
    procedure UnFixLinksVersions(aLinksAndVersionsArray: OleVariant); dispid 216;
    procedure UnFixAllLinksVersions; dispid 217;
    property RuleName: WideString readonly dispid 218;
  end;

// *********************************************************************//
// Interface: IPDMObjectConfigurationQuickParamsItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {32DB50D6-1DA4-282C-E71F-3A3E16167655}
// *********************************************************************//
  IPDMObjectConfigurationQuickParamsItem = interface(IPDMItem)
    ['{32DB50D6-1DA4-282C-E71F-3A3E16167655}']
    function Get_ParamType: Integer; safecall;
    function Get_ParamName: WideString; safecall;
    function Get_ParamValue: WideString; safecall;
    function Get_ParamValueType: Integer; safecall;
    function Get_ParamAnyValues: WordBool; safecall;
    procedure Update(const aParamValue: WideString; aAnyValues: WordBool); safecall;
    property ParamType: Integer read Get_ParamType;
    property ParamName: WideString read Get_ParamName;
    property ParamValue: WideString read Get_ParamValue;
    property ParamValueType: Integer read Get_ParamValueType;
    property ParamAnyValues: WordBool read Get_ParamAnyValues;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectConfigurationQuickParamsItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {32DB50D6-1DA4-282C-E71F-3A3E16167655}
// *********************************************************************//
  IPDMObjectConfigurationQuickParamsItemDisp = dispinterface
    ['{32DB50D6-1DA4-282C-E71F-3A3E16167655}']
    property ParamType: Integer readonly dispid 201;
    property ParamName: WideString readonly dispid 202;
    property ParamValue: WideString readonly dispid 203;
    property ParamValueType: Integer readonly dispid 204;
    property ParamAnyValues: WordBool readonly dispid 205;
    procedure Update(const aParamValue: WideString; aAnyValues: WordBool); dispid 206;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMObjectConfigurationQuickParamsCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {327050E6-1DA4-282C-E71F-3A3E16167A13}
// *********************************************************************//
  IPDMObjectConfigurationQuickParamsCollection = interface(IBasePDMCollection)
    ['{327050E6-1DA4-282C-E71F-3A3E16167A13}']
    function Get_QuickParamsItem(aIndex: Integer): IPDMObjectConfigurationQuickParamsItem; safecall;
    procedure AddQuickParam(aParamType: Integer; const aParamName: WideString; 
                            const aParamValue: WideString; aParamAnyValues: WordBool); safecall;
    property QuickParamsItem[aIndex: Integer]: IPDMObjectConfigurationQuickParamsItem read Get_QuickParamsItem;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectConfigurationQuickParamsCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {327050E6-1DA4-282C-E71F-3A3E16167A13}
// *********************************************************************//
  IPDMObjectConfigurationQuickParamsCollectionDisp = dispinterface
    ['{327050E6-1DA4-282C-E71F-3A3E16167A13}']
    property QuickParamsItem[aIndex: Integer]: IPDMObjectConfigurationQuickParamsItem readonly dispid 240;
    procedure AddQuickParam(aParamType: Integer; const aParamName: WideString; 
                            const aParamValue: WideString; aParamAnyValues: WordBool); dispid 241;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IPDMObjectConfigurationFixedVersionItem
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00D0A076-F4F0-138E-5795-AFDE16167602}
// *********************************************************************//
  IPDMObjectConfigurationFixedVersionItem = interface(IPDMItem)
    ['{00D0A076-F4F0-138E-5795-AFDE16167602}']
    function Get_LinkId: Integer; safecall;
    function Get_LinkTypeId: Integer; safecall;
    function Get_IsFixedChild: WordBool; safecall;
    function Get_ParentVersionId: Integer; safecall;
    function Get_ParentVersionTypeId: Integer; safecall;
    function Get_ParentVersionStateId: Integer; safecall;
    function Get_ParentVersionName: WideString; safecall;
    function Get_ParentVersionNumber: WideString; safecall;
    function Get_FixedVersionId: Integer; safecall;
    function Get_FixedVersionTypeId: Integer; safecall;
    function Get_FixedVersionStateId: Integer; safecall;
    function Get_FixedVersionName: WideString; safecall;
    function Get_FixedVersionNumber: WideString; safecall;
    property LinkId: Integer read Get_LinkId;
    property LinkTypeId: Integer read Get_LinkTypeId;
    property IsFixedChild: WordBool read Get_IsFixedChild;
    property ParentVersionId: Integer read Get_ParentVersionId;
    property ParentVersionTypeId: Integer read Get_ParentVersionTypeId;
    property ParentVersionStateId: Integer read Get_ParentVersionStateId;
    property ParentVersionName: WideString read Get_ParentVersionName;
    property ParentVersionNumber: WideString read Get_ParentVersionNumber;
    property FixedVersionId: Integer read Get_FixedVersionId;
    property FixedVersionTypeId: Integer read Get_FixedVersionTypeId;
    property FixedVersionStateId: Integer read Get_FixedVersionStateId;
    property FixedVersionName: WideString read Get_FixedVersionName;
    property FixedVersionNumber: WideString read Get_FixedVersionNumber;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectConfigurationFixedVersionItemDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {00D0A076-F4F0-138E-5795-AFDE16167602}
// *********************************************************************//
  IPDMObjectConfigurationFixedVersionItemDisp = dispinterface
    ['{00D0A076-F4F0-138E-5795-AFDE16167602}']
    property LinkId: Integer readonly dispid 201;
    property LinkTypeId: Integer readonly dispid 202;
    property IsFixedChild: WordBool readonly dispid 203;
    property ParentVersionId: Integer readonly dispid 204;
    property ParentVersionTypeId: Integer readonly dispid 205;
    property ParentVersionStateId: Integer readonly dispid 206;
    property ParentVersionName: WideString readonly dispid 207;
    property ParentVersionNumber: WideString readonly dispid 208;
    property FixedVersionId: Integer readonly dispid 209;
    property FixedVersionTypeId: Integer readonly dispid 210;
    property FixedVersionStateId: Integer readonly dispid 211;
    property FixedVersionName: WideString readonly dispid 212;
    property FixedVersionNumber: WideString readonly dispid 213;
    property ID: Integer readonly dispid 169;
    property Name: WideString readonly dispid 170;
    property EntityCode: EntityCodes readonly dispid 171;
  end;

// *********************************************************************//
// Interface: IPDMObjectConfigurationFixedVersionCollection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {12DFF011-0000-158E-5A9F-EFEE16167676}
// *********************************************************************//
  IPDMObjectConfigurationFixedVersionCollection = interface(IBasePDMCollection)
    ['{12DFF011-0000-158E-5A9F-EFEE16167676}']
    function Get_FixedVersionItem(aIndex: Integer): IPDMObjectConfigurationFixedVersionItem; safecall;
    property FixedVersionItem[aIndex: Integer]: IPDMObjectConfigurationFixedVersionItem read Get_FixedVersionItem;
  end;

// *********************************************************************//
// DispIntf:  IPDMObjectConfigurationFixedVersionCollectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {12DFF011-0000-158E-5A9F-EFEE16167676}
// *********************************************************************//
  IPDMObjectConfigurationFixedVersionCollectionDisp = dispinterface
    ['{12DFF011-0000-158E-5A9F-EFEE16167676}']
    property FixedVersionItem[aIndex: Integer]: IPDMObjectConfigurationFixedVersionItem readonly dispid 240;
    property Count: Integer readonly dispid 201;
    function Items(Index: Integer): IPDMItem; dispid 202;
    function ItemByName(const Name: WideString): IPDMItem; dispid 203;
    function ItemByID(ID: Integer): IPDMItem; dispid 204;
    function Add(const Item: IPDMItem): Integer; dispid 205;
    property UniqueNames: WordBool readonly dispid 206;
    procedure Delete(Index: Integer); dispid 207;
    procedure AppendCollection(const Collection: IBasePDMCollection); dispid 208;
    property ReadOnly: WordBool readonly dispid 209;
    property IDStr: WideString readonly dispid 211;
    procedure Clear; dispid 212;
    function IndexOf(const Item: IPDMItem): Integer; dispid 213;
    property MainEntityCode: Integer readonly dispid 214;
    function CollectionByNames(const Names: WideString): IBasePDMCollection; dispid 215;
    function CollectionByIDs(const IDs: WideString): IBasePDMCollection; dispid 216;
    function GetUnion(const UnionWith: IBasePDMCollection): IBasePDMCollection; dispid 217;
    function GetDifference(const Subtrahend: IBasePDMCollection): IBasePDMCollection; dispid 218;
    function GetIntersection(const IntersectionWith: IBasePDMCollection): IBasePDMCollection; dispid 219;
  end;

// *********************************************************************//
// Interface: IBOMappingResult
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {61BA7874-4FB1-4749-B8FF-3F7C6FE42CC3}
// *********************************************************************//
  IBOMappingResult = interface(IDispatch)
    ['{61BA7874-4FB1-4749-B8FF-3F7C6FE42CC3}']
    function Get_MappedConfig: WordBool; safecall;
    function Get_Mapped: WordBool; safecall;
    function Get_MappedEditable: WordBool; safecall;
    function Get_MappedIndep: WordBool; safecall;
    function Get_MappedAttr: IPDMTypePolynomMappedAttributesItem; safecall;
    property MappedConfig: WordBool read Get_MappedConfig;
    property Mapped: WordBool read Get_Mapped;
    property MappedEditable: WordBool read Get_MappedEditable;
    property MappedIndep: WordBool read Get_MappedIndep;
    property MappedAttr: IPDMTypePolynomMappedAttributesItem read Get_MappedAttr;
  end;

// *********************************************************************//
// DispIntf:  IBOMappingResultDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {61BA7874-4FB1-4749-B8FF-3F7C6FE42CC3}
// *********************************************************************//
  IBOMappingResultDisp = dispinterface
    ['{61BA7874-4FB1-4749-B8FF-3F7C6FE42CC3}']
    property MappedConfig: WordBool readonly dispid 201;
    property Mapped: WordBool readonly dispid 202;
    property MappedEditable: WordBool readonly dispid 203;
    property MappedIndep: WordBool readonly dispid 204;
    property MappedAttr: IPDMTypePolynomMappedAttributesItem readonly dispid 205;
  end;

// *********************************************************************//
// The Class CoPDMEntityManager provides a Create and CreateRemote method to          
// create instances of the default interface IPDMEntityManager exposed by              
// the CoClass PDMEntityManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPDMEntityManager = class
    class function Create: IPDMEntityManager;
    class function CreateRemote(const MachineName: string): IPDMEntityManager;
  end;

implementation

uses ComObj;

class function CoPDMEntityManager.Create: IPDMEntityManager;
begin
  Result := CreateComObject(CLASS_PDMEntityManager) as IPDMEntityManager;
end;

class function CoPDMEntityManager.CreateRemote(const MachineName: string): IPDMEntityManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PDMEntityManager) as IPDMEntityManager;
end;

end.
