#include "stdafx.h"
#import "Loodsman.tlb" no_namespace, raw_interfaces_only

struct MenuItem
{
	char stMenu[255];
	char stFunction[255];
};

__declspec(dllexport) int __stdcall InitUserDLLCom(void * value)
{
	if(value) 
	{
		MenuItem * items = static_cast<MenuItem *>(value);
		strcpy_s(items[0].stMenu, "BEFORE_MI_TOOLS#LoodsmanPlugIn#Список проектов");
		strcpy_s(items[0].stFunction, "ProjectList");
		strcpy_s(items[1].stMenu, "BEFORE_MI_TOOLS#LoodsmanPlugIn#Список по состоит из...");
		strcpy_s(items[1].stFunction, "LinkedFast");
	}
	return 2; 
}

__declspec(dllexport) bool __stdcall PgiCheckMenuItemCom(char const * stFunction, IPluginCall * IPC)
{
	if(strcmp(stFunction, "ProjectList") == 0) 
		return true;
	if(strcmp(stFunction, "LinkedFast") == 0) 
		return true;
	return false;
}

__declspec(dllexport) void __stdcall ProjectList(IPluginCall * IPC)
{
	//Вариантный массив параметров
	CComVariant methodParams(CComSafeArray<VARIANT>(2));

	//Получить результат - указатель на интерфейс набора данных
	IDataSet * dataSet = 0;
	if(IPC->GetDataSet(CComBSTR(L"GetProjectList"), methodParams, &dataSet) == S_OK) 
	{
		CStringW result;
		//Наименование поля
		CComBSTR fieldName = L"_PRODUCT";
		//Переменная, хранящая значение поля
		VARIANT fieldValue;

		//Получение всех элементов набора
		dataSet->First();
		for(VARIANT_BOOL eof = TRUE; dataSet->get_Eof(&eof), !eof; dataSet->Next())
		{
			//Получить значение поля
			dataSet->get_FieldValue(fieldName, &fieldValue);
			//... и добавить к результату
			result += fieldValue.bstrVal;
			result += L'\n';
		}
		MessageBoxW(0, result, L"Результат", MB_OK);
	}
}

__declspec(dllexport) void __stdcall LinkedFast(IPluginCall * IPC)
{
	//Вариантный массив параметров
	CComSafeArray<VARIANT> methodParams(5);
	//...id
	methodParams[0] = 0;
	//...название связи
	methodParams[1] = L"Состоит из ...";
	//... направление
	methodParams[2] = false;

	//Получить идентификатор выбранного объекта
	IPC->get_IdVersion(&methodParams[0].lVal);

	//Преобразуем CComSafeArray в вариантный массив для передачи методу СП
	//Получить результат - указатель на интерфейс набора данных
	IDataSet * dataSet = 0;
	if (IPC->GetDataSet(CComBSTR(L"GetLinkedFast"), CComVariant(methodParams), &dataSet) == S_OK) 
	{
		CStringW result;
		//Наименование поля
		CComBSTR fieldName = L"_PRODUCT";
		//Переменная, хранящая значение поля
		VARIANT fieldValue;

		dataSet->First();
		for(VARIANT_BOOL eof = TRUE; dataSet->get_Eof(&eof), !eof; dataSet->Next())
		{
			//Получить значение поля
			dataSet->get_FieldValue(fieldName, &fieldValue);
			//... и добавить к результату
			result += fieldValue.bstrVal;
			result += L'\n';
		}
		if(result.IsEmpty()) 
			result = L"Объектов, связанных по данному типу связи не найдено";
		MessageBoxW(0, result, L"Результат", MB_OK);
	}
}
