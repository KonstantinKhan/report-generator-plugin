'======================================================================================
' Описание:
'------
' Выводит в ячейку список бизнес-процессов по объекту
' При нажатии мыши в ячейке открывает список бизнес-процессов в новом окне
'=====
' Подключение:
'------
' Скопировать данный файл в папку COD\CalculatedTreeColumns, где COD – путь к 
' каталогу общих данных. Затем запустить Клиент (если был запущен, то перезапустить).
' Добавить в дереве столбец, в качестве типа источника данных, которого указать 
' «Вычисляемое значение», а в качестве источника данных указать этот файл.
'=====

'--------------------------------------------------------------------------------------
' Возможные состояния бизнес-процесса
'---
const bpsNew = 0         'Новый
const bpsRuning = 1      'Запущен 
const bpsPaused = 2      'Приостановлен
const bpsFinished = 3    'Завершен

'--------------------------------------------------------------------------------------
' Типы шрифта
'---
const fsNormal=0     'Обычный
const fsBold=1       'Полужирный
const fsItalic=2     'Курсив
const fsUnderline=4  'Подчеркнутый
const fsStrikeOut=8  'Зачеркнутый


'--------------------------------------------------------------------------------------
' Дерево вызывает эту процедуру при вычислении содержимого и внешнего вида ячейки
'---
sub OnGetCellInfo(Node, CellInfo)
	dim ds            'IDataSet - здесь будет храниться набор данных полученный от сервера приложений
	dim routesCount   'Общее количство бизнес-процессов по объекту
	dim activeCount   'Количество активных (запущенных или приостановленных) бизнес-процессов
    dim finishedCount 'Количество завершенных бизнес-процессов
	dim routeState    'Сосотояние бизнес-процесса
	
	'Запросим у сервера приложений список бизнес-процессов для текущего объекта
	'(Node.PDMObject.ID - идентификатор текущего объекта)
	set ds = LooConnection.GetDataSet("WFGetProcessListByObjectEx2", array(Node.PDMObject.ID, LooConnection.DBName ,1))
	
	routesCount = ds.RecordCount
	
	if routesCount > 0 then 
	    'Добавим в ячейку картинку из файла. Так как в данном случае передается относительный путь, 
		'то файл с картинкой нужно разместить рядом со скриптом
	    CellInfo.AddIconFromFile "wf.bmp" 
		
		activeCount = 0 
		FinishedCount = 0 		
		
		'Пройдемся по бизнес-процессам объекта и выведем их в ячейку.
		'Кроме того выделим ячейки цветом и шрифтом:
		'1) для объектов, по которым имеются активные бизнес-процессы: шрифт - полужирный курсив, цвет фона желтый
		'2) для объектов, по которым все бизнес-процессы завершены: шрифт - обычный, цвет фона зеленый 
		
		do while not ds.eof
		    routeName  =  ds.FieldValue("_ROUTENAME")
			
		    'Зададим текст, который будет показан в ячейке
            if trim(CellInfo.Text) = "" then 
				CellInfo.Text = routeName
			else 
				CellInfo.Text = CellInfo.Text & vbCrlf &  routeName
			end if  
		
	        'Подсчитаем количество активных и завершенных бизнес-процессов
			routeState =  ds.FieldValue("_WF_STATE")
			
			if routeState = bpsRuning or routeState = bpsPaused then 
				activeCount = activeCount +1
			end if 
			
			if routeState = bpsFinished then 
				finishedCount = finishedCount +1
			end if 						
			
			ds.Next
		Loop	  
		
	    'Выделим ячейки цветом и шрифтом
		if (activeCount > 0) then  'Имеются активные бизнес-процессы
			CellInfo.Background = rgb(255, 247, 89)
			CellInfo.FontStyle=fsBold+fsItalic
		else 
			if routesCount = FinishedCount then 'Все бизнес-процессы завершены
				CellInfo.Background = rgb(204, 255, 153)
				'CellInfo.FontStyle=fsNormal  'Это значение указывать не обязательно, так как оно задано по умолчанию
				CellInfo.Hint="Все бизнес-процессы завершены"
			end if 
		end if	  
	else 
	  'Если по объекту нет бизнес-процессов
	  CellInfo.Text = "-"
	end if
end sub

'--------------------------------------------------------------------------------------
' Обработчик нажатия левой кнопки мыши в ячейке
'---
sub OnCellClick(Node, CellInfo)
   'По нажатию мыши будем открывать список бизнес-процессов в новом окне

	dim newContext 'Контекст окна, в котором будут открыты бизнес-процессы
	dim caption    'Заголовок окна
	dim rootList   'Строка, содержащая список идентификаторов бизнес-процессов, которые нужно открыть в новом окне (формат строки: "id1, id2, ... idn")
	dim ds         'IDataSet - здесь будет храниться набор данных полученный от сервера приложений  
	dim routeId    'Идентификатор бизнес-процесса
  
    'Чтобы лишний раз не обращаться к серверу приложений отбросим объекты, по которым не создано бизнес-процессов.
	'В рамках данного примера, для таких объектов текст ячейки будет равен "-" (он был туда записан в процедуре OnGetCellInfo)
	if CellInfo.Text <> "-" then 
	    'Запросим у сервера приложений список бизнес-процессов для текущего объекта
	    '(Node.PDMObject.ID - идентификатор текущего объекта)
		set ds = LooConnection.GetDataSet("WFGetProcessListByObjectEx2", array(Node.PDMObject.ID, LooConnection.DBName ,1))

	    'Заполним строку rootList идентификаторами бизнес-процессов объекта
		rootList=""
		do while not ds.eof   
			routeId = ds.FieldValue("_ID_ROUTE")
			rootList = rootList & Cstr(routeId)
			ds.Next
			if not ds.eof then 
			   rootList = rootList & "," 
			end if 		
		Loop
		
		'Заполним контекст и покажем окно
		if rootList <> "" then 
		    'Подготовим контекст окна
			set newContext = LooApp.CreateContext(6, "", 0) 'ContextType=6   - окно бизнес-процессов
			                                                'Checkout=""
                                                            'Data=0 - зарезервировано   															
			
			'В параметр "RootList" контекста должна передаваться строка идентификаторов, сущностей которые необходимо открыть в окне.
			'В данном примере - это строка идентификаторов бизнес-процессов
			newContext.SetContextValue "RootList", rootList
			caption = "Бизнес-процессы - "&Node.PDMObject.Name 
			
			'Покажем окно
			LooApp.ShowWindow caption, newContext, "", 0
		end if 

	end if 
end sub

