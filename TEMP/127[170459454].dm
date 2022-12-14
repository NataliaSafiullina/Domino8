_etk_develop

      127[170459454]   Процедура • Запас товаров на дату по ЦО ≡ БАЗОВЫЙ ОТЧЕТ С ВЫГРУЗКОЙ CSV ∙ 127[655295523] ←
 32505863[170459293]     Локальные переменные ←
    65545[170462252]       Локальная переменная • Дата ≡ Дата ∙ 107[3] ←
    65545[170462267]       Локальная переменная • Товар ≡ Продукт ∙ 107[7] ←
    65545[170462268]       Локальная переменная • Подразделение ≡ Партнер ∙ 107[5] ←
    65545[170462253]       Локальная переменная • Счётчик ≡ Целое ∙ 107[2] ←
    65545[170462254]       Локальная переменная • ЦО ТТ ≡ Партнер ∙ 107[5] ←
    65545[170463131]       Локальная переменная • Товарное подразделение ≡ Партнер ∙ 107[5] ←
    65545[170462256]       Локальная переменная • Группа ≡ Каталог ∙ 107[9] ←
    65545[170462257]       Локальная переменная • Подгруппа ≡ Каталог ∙ 107[9] ←
    65545[170462258]       Локальная переменная • MKU ≡ Каталог ∙ 107[9] ←
    65545[170462259]       Локальная переменная • SKU ≡ Продукт ∙ 107[7] ←
    65545[170462260]       Локальная переменная • Партия ≡ Продукт ∙ 107[7] ←
    65545[170462261]       Локальная переменная • Количество прихода ≡ Количество ∙ 107[15] ←
    65545[170462262]       Локальная переменная • Остаток SKU ≡ Количество ∙ 107[15] ←
    65545[170462263]       Локальная переменная • Остаток накоплено ≡ Количество ∙ 107[15] ←
    65545[170462264]       Локальная переменная • Остаток деление ≡ Количество ∙ 107[15] ←
    65545[170463082]       Локальная переменная • ЦенаУчетн ≡ Количество ∙ 107[15] ←
    65545[170462265]       Локальная переменная • ЦенаЗакуп ≡ Количество ∙ 107[15] ←
    65545[170463083]       Локальная переменная • СуммаУчетн ≡ Сумма ∙ 107[12] ←
    65545[170463084]       Локальная переменная • СуммаЗакуп ≡ Сумма ∙ 107[12] ←
    65545[170462266]       Локальная переменная • Дата прихода ≡ Дата ∙ 107[3] ←
    65545[170463177]       Локальная переменная • CostWithoutVAT ≡ Сумма ∙ 107[12] ←
    65545[170463178]       Локальная переменная • CostWithVAT ≡ Сумма ∙ 107[12] ←
    65545[170463132]       Локальная переменная • Storage ≡ Строка (40) ∙ 107[1] ←
 30867483[170459158]     Локальные таблицы ←
 30867458[170459181]       Локальная таблица • Партии ←
 11010090[170459180]         Структура (Поля, сортировка, генерируемые события) ←
 30867475[170459318]           Параметр ≡ Дата прихода ∙ 65545[170462266] ←
 11010106[170459137]             Сортировать по убыванию ←
 30867475[170459319]           Параметр ≡ Партия ∙ 65545[170462260] ←
 30867475[170459320]           Параметр ≡ Количество прихода ∙ 65545[170462261] ←
 30867475[170459344]           Параметр ≡ ЦенаУчетн ∙ 65545[170463082] ←
 30867475[170459321]           Параметр ≡ ЦенаЗакуп ∙ 65545[170462265] ←
  1507531[170459174]     Подстановки виртуальных блоков ←
 30867469[170460853]       БЛОК ≡ Инициализация ∙ 30867469[655295590] ←
 11010080[170467389]         = ≡ Имя ∙ 65545[655299190] ←
      404[170489967]           Результат ⁼ 'home\Товарный_запас_V2_' ←
      404[170489968]           Результат ≡ Формат, с передачей значения через параметры ∙ 249[30867463] ←
   131097[170460108]             Формат ≡ Дата + Время без разделителей, для сортировки (YYYYMMDDHHNNSS) ∙ 131096[63111170] ←
 32505862[170461826]             Значения формальных параметров при вызове ←
 32505860[170464469]               Значение параметра при вызове процедуры/функции ≡ Значение ∙ 65545[30867477] ←
   327700[170469072]                 Выражение ≡ Текущие дата-время ∙ 249[42467332] ←
 11010080[170467390]         = ≡ Дата ∙ 65545[170462252] ←
      404[170489969]           Результат ⁼ '20/02/2022 00:00:00' ←
 11010080[170467409]         = ≡ Товар ∙ 65545[170462267] ←
      404[170490023]           Результат ⁼ '3:0:0:408' ←
 11010080[170467410]         = ≡ Подразделение ∙ 65545[170462268] ←
      404[170490048]           Результат ⁼ '4:0:0:853449' ←
 11010080[170467391]         = ≡ Счётчик ∙ 65545[170462253] ←
      404[170489970]           Результат ⁼ 0 ←
 11010080[170469202]         = ≡ CostWithoutVAT ∙ 65545[170463177] ←
      404[170498071]           Результат ⁼ 0 ←
 11010080[170469203]         = ≡ CostWithVAT ∙ 65545[170463178] ←
      404[170498072]           Результат ⁼ 0 ←
 12124190[170459252]         Форма ввода ≡ ФОРМА ОТЧЕТА ∙ 299[65537] ←
      245[170459265]           Список полей формы ←
      598[170460187]             Поле (колонка) для ввода данных ≡ Дата ∙ 65545[170462252] ←
      323[170459364]               Обязательное для ввода поле ≡ Да ∙ 534[40566785] ←
      355[170460104]               Начальное значение ≡ Дата ∙ 65545[170462252] ←
      598[170460188]             Поле (колонка) для ввода данных ≡ Товар ∙ 65545[170462267] ←
      355[170460105]               Начальное значение ≡ Товар ∙ 65545[170462267] ←
      209[170459631]               Выбор из списка ≡ Мультивыбор товаров по наименованию ∙ 371[11141162] ←
   262164[170459291]                 Выбор одного объекта из списка ≡ Да ∙ 534[40566785] ←
      598[170460189]             Поле (колонка) для ввода данных ≡ Подразделение ∙ 65545[170462268] ←
      355[170460106]               Начальное значение ≡ Подразделение ∙ 65545[170462268] ←
      209[170459632]               Выбор из списка ≡ Выбор торгового подразделения, по наименованию ∙ 371[9764865] ←
 11010080[170467392]         = ≡ Дата ∙ 65545[170462252] ←
      404[170489971]           Результат ≡ Дата, конец дня ∙ 249[30867475] ←
 32505862[170461827]             Значения формальных параметров при вызове ←
 32505860[170464470]               Значение параметра при вызове процедуры/функции ≡ Дата ∙ 65545[30867789] ←
   327700[170469073]                 Выражение ≡ Дата ∙ 65545[170462252] ←
 30867469[170460854]       БЛОК ≡ Выбор данных ∙ 30867469[655295597] ←
 11010093[170459899]         Комментарий • Этот запрос к Oracle выполнялся 3112 секунд  - с выключенным анализатором выражений ←
 11010093[170459900]         Комментарий • Этот запрос к Oracle выполнялся 2961 секунд - с включенным анализатором ←
 11010105[170459305]         Индикатор ←
      404[170489972]           Результат ⁼ 'Товарный запас на дату ' ←
      404[170489973]           Результат ≡ Дата ∙ 65545[170462252] ←
  1507360[170460128]         Отбор данных (по запросу) • Обороты свёрнутые ←
  1507703[170459203]           Показать текст запроса ←
 12124213[170460383]           Параметры ←
  1507335[170463748]             Параметр • з.ЦО ≡ центр_ответственности ∙ 1507449[170461545] ←
  1507335[170462902]             Параметр • А1 Дт ∙ 12124204[170460451] ←
  1507494[170469013]               Уточняющий параметр ≡ Аналитика (1) ∙ 1507443[1507467] ←
  1507335[170462903]             Параметр • А2 Дт ∙ 12124204[170460451] ←
  1507494[170469014]               Уточняющий параметр ≡ Аналитика (2) ∙ 1507443[1507468] ←
  1507335[170462904]             Параметр • А3 Дт ∙ 12124204[170460451] ←
  1507494[170469015]               Уточняющий параметр ≡ Аналитика (3) ∙ 1507443[1507469] ←
  1507335[170462905]             Параметр • Исход_сальдо_дт ∙ 12124204[170460451] ←
  1507494[170469016]               Уточняющий параметр ≡ Исходящее сальдо дебет ∙ 1507443[1507484] ←
  1507335[170463750]             Параметр • Исход_сальдо_кт ∙ 12124204[170460451] ←
  1507494[170470515]               Уточняющий параметр ≡ Исходящее сальдо кредит ∙ 1507443[1507485] ←
  1507447[170459701]           Выражения ←
  1507449[170461544]             Выражение • стуктурное_подразделение ≡ Партнер ∙ 107[5] ←
 12124205[170459906]               Запрос • Партнёры ←
 12124213[170460619]                 Параметры ←
  1507335[170463746]                   Параметр • pid ∙ 12124204[170460681] ←
  1507494[170470510]                     Уточняющий параметр ≡ Родитель ∙ 283[2] ←
 12124200[170460565]                 From         (Таблицы) ←
 12124204[170460681]                   Таблица ≡ Партнер ∙ 108[4] ←
 12124215[170460723]                 Where      (Ограничения на отбор данных) ←
  1507376[170465238]                   Выражение ←
  1507455[170465768]                     Результат ∙ 12124204[170460681] ←
  1507494[170470508]                       Уточняющий параметр ≡ Партнер ∙ 283[1] ←
  1638473[170467540]                     Равно ←
  1507455[170465769]                     Результат ∙ 12124204[170460451] ←
  1507494[170470509]                       Уточняющий параметр ≡ Аналитика (1) ∙ 1507443[1507467] ←
  1507449[170461545]             Выражение • центр_ответственности ≡ Партнер ∙ 107[5] ←
 12124205[170459907]               Запрос • Партнёры ←
 12124213[170460620]                 Параметры ←
  1507335[170463747]                   Параметр • pid ∙ 12124204[170460682] ←
  1507494[170470511]                     Уточняющий параметр ≡ Родитель ∙ 283[2] ←
 12124200[170460566]                 From         (Таблицы) ←
 12124204[170460682]                   Таблица ≡ Партнер ∙ 108[4] ←
 12124215[170460724]                 Where      (Ограничения на отбор данных) ←
  1507376[170465239]                   Выражение ←
  1507455[170465770]                     Результат ∙ 12124204[170460682] ←
  1507494[170470512]                       Уточняющий параметр ≡ Партнер ∙ 283[1] ←
  1638473[170467541]                     Равно ←
  1507455[170465771]                     Результат ≡ стуктурное_подразделение ∙ 1507449[170461544] ←
  1507673[170459455]           Ключи оптимизации ←
  1507635[170459138]             Быстрый показ первых записей ←
 12124200[170460348]           From         (Таблицы) ←
 12124204[170460451]             Таблица ≡ ОБОРОТЫ СВЕРНУТЫЕ ∙ 1507696[1507333] ←
 12124215[170460485]           Where      (Ограничения на отбор данных) ←
  1507376[170464604]             Выражение ←
  1507455[170465050]               Результат ∙ 12124204[170460451] ←
  1507494[170469018]                 Уточняющий параметр ≡ ЦФО ∙ 1507443[1507464] ←
  1638473[170465449]               Равно ←
  1507452[170463898]               Константа ≡ ЦФО (Сеть супермаркетов Красный Яр) ∙ 117[656082726] ←
  1507376[170464605]             Выражение ←
  1507455[170465051]               Результат ∙ 12124204[170460451] ←
  1507494[170469019]                 Уточняющий параметр ≡ Дата (период) ∙ 1507443[1507463] ←
  1638473[170465450]               Равно ←
  1507452[170463899]               Константа ≡ Дата ∙ 65545[170462252] ←
  1507376[170464606]             Выражение ←
  1507455[170465052]               Результат ∙ 12124204[170460451] ←
  1507494[170469020]                 Уточняющий параметр ≡ Валюта ∙ 1507443[1507478] ←
  1638473[170465451]               Равно ←
  1507452[170463900]               Константа ≡ Штука ∙ 131108[28049409] ←
  1507376[170464607]             Выражение ←
  1507455[170465053]               Результат ∙ 12124204[170460451] ←
  1507494[170469021]                 Уточняющий параметр ≡ Счет ∙ 1507443[1507466] ←
  1638473[170465452]               Равно ←
  1507452[170463901]               Константа ≡ Количество по партиям (товарный запас) ∙ 131[14417935] ←
  1507376[170464611]             Выражение ←
  1507455[170465054]               Результат ∙ 12124204[170460451] ←
  1507494[170469024]                 Уточняющий параметр ≡ Аналитика (1) ∙ 1507443[1507467] ←
  1638473[170465453]               Равно ←
  1507452[170463904]               Константа ≡ Подразделение ∙ 65545[170462268] ←
  1507506[170460223]               Использование (в режиме выполнения) ≡ Да, только если все условия соблюдены ∙ 534[11599876] ←
  1507508[170460267]                 Если истинно выражение ≡ Подразделение ∙ 65545[170462268] ←
  1507376[170464612]             Выражение ←
  1507455[170465055]               Результат ∙ 12124204[170460451] ←
  1507494[170469025]                 Уточняющий параметр ≡ Аналитика (2) ∙ 1507443[1507468] ←
  1638473[170465455]               Равно ←
  1507452[170463905]               Константа ≡ Товар ∙ 65545[170462267] ←
  1507506[170460224]               Использование (в режиме выполнения) ≡ Да, только если все условия соблюдены ∙ 534[11599876] ←
  1507508[170460268]                 Если истинно выражение ≡ Товар ∙ 65545[170462267] ←
  1507376[170464608]             Выражение ←
  1507506[170460226]               Использование (в режиме выполнения) ≡ Нет ∙ 534[11599875] ←
  1507376[170464609]               Выражение ←
  1507608[170462568]                 Результат (Ноль (0.0), если NULL) ∙ 12124204[170460451] ←
  1507494[170469022]                   Уточняющий параметр ≡ Исходящее сальдо дебет ∙ 1507443[1507484] ←
  1638479[170459854]                 Не равно ←
  1507452[170463902]                 Константа ⁼ 0 ←
      412[170460127]               ИЛИ ←
  1507376[170464610]               Выражение ←
  1507608[170462569]                 Результат (Ноль (0.0), если NULL) ∙ 12124204[170460451] ←
  1507494[170469023]                   Уточняющий параметр ≡ Исходящее сальдо кредит ∙ 1507443[1507485] ←
  1638479[170459855]                 Не равно ←
  1507452[170463903]                 Константа ⁼ 0 ←
 12124222[170459293]           Order By   (Сортировка) ←
  1507465[170459248]             Блок (Сортировка с генерацией события) • ЦО+Товар ←
  1507559[170459270]               Сортировать по возрастанию ≡ з.ЦО ∙ 1507335[170463748] ←
  1507559[170459271]               Сортировать по возрастанию ≡ А2 Дт ∙ 1507335[170462903] ←
 30867465[170459185]           Выполнить при старте ←
 11010080[170467393]             = ≡ Строка ∙ 65545[655299188] ←
      404[170489974]               Результат ⁼ 'ReportDate;Chain;Storage;Group_name;SubGroup_name;MKU_name;SKU_code;SKU_name;DateIn;Quantity;CostWithVAT;CostWithoutVAT;' ←
  1507410[170460194]             ВЫПОЛНИТЬ БЛОК ≡ Выгрузка строки ∙ 30867469[655295591] ←
  1507467[170459246]           Выполнить перед обработкой блока ≡ ЦО+Товар ∙ 1507465[170459248] ←
 11010080[170467395]             = ≡ ЦО ТТ ∙ 65545[170462254] ←
      404[170489976]               Результат ≡ з.ЦО ∙ 1507335[170463748] ←
 11010080[170467394]             = ≡ Товарное подразделение ∙ 65545[170463131] ←
      404[170489975]               Результат ≡ А1 Дт ∙ 1507335[170462902] ←
 11010080[170467396]             = ≡ SKU ∙ 65545[170462259] ←
      404[170489977]               Результат ≡ А2 Дт ∙ 1507335[170462903] ←
 11010080[170467397]             = ≡ MKU ∙ 65545[170462258] ←
      404[170489978]               Результат ≡ SKU ∙ 65545[170462259] ←
      411[170465340]                 Уточняющий параметр ≡ Группа 1 ∙ 305[42401867] ←
 11010080[170467398]             = ≡ Подгруппа ∙ 65545[170462257] ←
      404[170489979]               Результат ≡ MKU ∙ 65545[170462258] ←
      411[170465341]                 Уточняющий параметр ≡ Родитель ∙ 296[2] ←
 11010080[170467399]             = ≡ Группа ∙ 65545[170462256] ←
      404[170489980]               Результат ≡ Подгруппа ∙ 65545[170462257] ←
      411[170465342]                 Уточняющий параметр ≡ Родитель ∙ 296[2] ←
 11010080[170467401]             = ≡ Остаток SKU ∙ 65545[170462262] ←
      404[170489982]               Результат ⁼ 0 ←
 11010104[170459235]             Очистить локальную таблицу ≡ Партии ∙ 30867458[170459181] ←
 30867470[170462539]             IF ←
  1638463[170464008]               Условие ←
      404[170498357]                 Результат ≡ Товар ∙ 65545[170462267] ←
 30867472[170462524]               THEN • запишем лог ←
 11010088[170462334]                 ВЫПОЛНИТЬ ≡ WriteMessageToLog ∙ 127[39780364] ←
 11010095[170460912]                   Выражение ←
      404[170498369]                     Результат ⁼ '********************************************************************************' ←
 11010088[170462332]                 ВЫПОЛНИТЬ ≡ WriteMessageToLog ∙ 127[39780364] ←
 11010095[170460910]                   Выражение ←
      404[170498359]                     Результат ⁼ 'ЦО=' ←
      404[170498360]                     Результат ≡ ЦО ТТ ∙ 65545[170462254] ←
      411[170469916]                       Уточняющий параметр ≡ Наименование ∙ 283[5] ←
      404[170498361]                     Результат ⁼ '; Товар=' ←
      404[170498362]                     Результат ≡ SKU ∙ 65545[170462259] ←
      411[170469917]                       Уточняющий параметр ≡ Отображаемый текст (Код + Наименование) ∙ 117[10423751] ←
 30867466[170460137]           Выполнить после получения записи ←
 48431134[170459329]             ++ ≡ Счётчик ∙ 65545[170462253] ←
 11010105[170459306]             Индикатор ←
      404[170489983]               Результат ⁼ 'Товарный запас на дату ' ←
      404[170489984]               Результат ≡ Дата ∙ 65545[170462252] ←
      404[170489985]               Результат ⁼ ' - ' ←
      404[170489986]               Результат ≡ Счётчик ∙ 65545[170462253] ←
 11010080[170467402]             = ≡ Партия ∙ 65545[170462260] ←
      404[170489987]               Результат ≡ А3 Дт ∙ 1507335[170462904] ←
 11010080[170469106]             = ≡ ЦенаУчетн ∙ 65545[170463082] ←
      404[170497530]               Результат ≡ Партия ∙ 65545[170462260] ←
      411[170465863]                 Уточняющий параметр ≡ Цена учетная ∙ 305[15007747] ←
 11010080[170467403]             = ≡ ЦенаЗакуп ∙ 65545[170462265] ←
      404[170489988]               Результат ≡ Партия ∙ 65545[170462260] ←
      411[170465345]                 Уточняющий параметр ≡ Цена закупочная ∙ 305[15007745] ←
 11010080[170467404]             = ≡ Дата прихода ∙ 65545[170462266] ←
      404[170489989]               Результат ≡ Партия ∙ 65545[170462260] ←
      411[170465346]                 Уточняющий параметр ≡ Дата ∙ 305[9] ←
 11010080[170467405]             = ≡ Количество прихода ∙ 65545[170462261] ←
  1638464[170475597]               Ноль (0.0), если NULL ≡ Партия ∙ 65545[170462260] ←
      411[170465347]                 Уточняющий параметр ≡ Количество в строке прихода ∙ 305[14352395] ←
 30867470[170461842]             IF ←
  1638463[170462790]               Условие ←
      116[170463190]                 Выражение ←
      404[170489990]                   Результат ≡ Количество прихода ∙ 65545[170462261] ←
  1638479[170459856]                   Не равно ←
      404[170489991]                   Результат ⁼ 0 ←
      413[170460607]                 И ←
      116[170463191]                 Выражение ←
      404[170490049]                   Результат ≡ Дата прихода ∙ 65545[170462266] ←
  1638475[170459423]                   Меньше или равно ←
      404[170490050]                   Результат ≡ Дата ∙ 65545[170462252] ←
 30867472[170461830]               THEN • запишем в локальную таблицу ←
 30867470[170462538]                 IF ←
  1638463[170464007]                   Условие ←
      404[170498351]                     Результат ≡ Товар ∙ 65545[170462267] ←
 30867472[170462523]                   THEN • запишем лог ←
 11010088[170462331]                     ВЫПОЛНИТЬ ≡ WriteMessageToLog ∙ 127[39780364] ←
 11010095[170460909]                       Выражение ←
      404[170498353]                         Результат ⁼ 'Дт=' ←
      404[170498354]                         Результат ≡ Исход_сальдо_дт ∙ 1507335[170462905] ←
      404[170498355]                         Результат ⁼ '; Кт=' ←
      404[170498356]                         Результат ≡ Исход_сальдо_кт ∙ 1507335[170463750] ←
      404[170498373]                         Результат ⁼ '; Партия=' ←
      404[170498374]                         Результат ≡ Партия ∙ 65545[170462260] ←
 48431132[170461880]                 += ≡ Остаток SKU ∙ 65545[170462262] ←
      116[170465380]                   Выражение ←
  1638464[170496672]                     Ноль (0.0), если NULL ≡ Исход_сальдо_дт ∙ 1507335[170462905] ←
      406[170459592]                     Вычесть ←
  1638464[170496674]                     Ноль (0.0), если NULL ≡ Исход_сальдо_кт ∙ 1507335[170463750] ←
 11010092[170459258]                 Добавить в локальную таблицу ≡ Партии ∙ 30867458[170459181] ←
  1507468[170459180]           Выполнить после обработки блока ≡ ЦО+Товар ∙ 1507465[170459248] ←
 11010080[170467406]             = ≡ Остаток накоплено ∙ 65545[170462263] ←
      404[170489992]               Результат ⁼ 0 ←
 11010080[170467411]             = ≡ Остаток деление ∙ 65545[170462264] ←
      404[170490051]               Результат ⁼ 0 ←
 11010080[170469145]             = ≡ Storage ∙ 65545[170463132] ←
  1638461[170460488]               Условный оператор (IF) ←
  1638463[170463970]                 Условие ←
      404[170497799]                   Результат ≡ ЦО ТТ ∙ 65545[170462254] ←
      411[170469807]                     Уточняющий параметр ≡ Внешний код ∙ 283[15073296] ←
      105[170460488]                 То ←
      404[170497800]                   Результат ≡ ЦО ТТ ∙ 65545[170462254] ←
      411[170469808]                     Уточняющий параметр ≡ Внешний код ∙ 283[15073296] ←
      424[170460293]                 Иначе ←
      404[170497801]                   Результат ≡ ЦО ТТ ∙ 65545[170462254] ←
      411[170469809]                     Уточняющий параметр ≡ Наименование ∙ 283[5] ←
 30867470[170462508]             IF ←
  1638463[170463968]               Условие ←
      404[170497677]                 Результат ≡ Товар ∙ 65545[170462267] ←
 30867472[170462493]               THEN • запишем лог ←
 11010088[170462306]                 ВЫПОЛНИТЬ ≡ WriteMessageToLog ∙ 127[39780364] ←
 11010095[170460886]                   Выражение ←
      404[170498376]                     Результат ⁼ 'Storage=' ←
      404[170498377]                     Результат ≡ Storage ∙ 65545[170463132] ←
      404[170497679]                     Результат ⁼ '; Остаток SKU=' ←
      404[170497691]                     Результат ≡ Остаток SKU ∙ 65545[170462262] ←
 30867470[170462541]             IF ←
  1638463[170464010]               Условие ←
  1638464[170496702]                 Ноль (0.0), если NULL ≡ Остаток SKU ∙ 65545[170462262] ←
  1638479[170459977]                 Не равно ←
      404[170498378]                 Результат ⁼ 0 ←
 30867472[170462526]               THEN • есть остаток товара ←
 30867477[170459181]                 Отбор данных из локальной таблицы ≡ Партии ∙ 30867458[170459181] ←
 30867466[170460138]                   Выполнить после получения записи ←
 30867470[170461845]                     IF ←
  1638463[170462794]                       Условие ←
      404[170490024]                         Результат ≡ Товар ∙ 65545[170462267] ←
 30867472[170461833]                       THEN • запишем лог ←
 11010088[170461847]                         ВЫПОЛНИТЬ ≡ WriteMessageToLog ∙ 127[39780364] ←
 11010095[170460667]                           Выражение ←
      404[170490076]                             Результат ≡ CR+LF ∙ 117[1508547] ←
      404[170490066]                             Результат ⁼ 'Дата прихода=' ←
      404[170490067]                             Результат ≡ Дата прихода ∙ 65545[170462266] ←
      404[170490068]                             Результат ⁼ '; Остаток SKU=' ←
      404[170490069]                             Результат ≡ Остаток SKU ∙ 65545[170462262] ←
      404[170490070]                             Результат ⁼ '; Партия=' ←
      404[170490071]                             Результат ≡ Партия ∙ 65545[170462260] ←
      404[170490072]                             Результат ⁼ '; Количество прихода=' ←
      404[170490073]                             Результат ≡ Количество прихода ∙ 65545[170462261] ←
      404[170497375]                             Результат ≡ CR+LF ∙ 117[1508547] ←
      404[170490074]                             Результат ⁼ 'Остаток, который уже распределён по партиям=' ←
      404[170490075]                             Результат ≡ Остаток накоплено ∙ 65545[170462263] ←
 11010080[170467407]                     = ≡ Остаток деление ∙ 65545[170462264] ←
  1638461[170459990]                       Условный оператор (IF) ←
  1638463[170462791]                         Условие ←
      116[170463188]                           Выражение ←
      404[170489993]                             Результат ≡ Остаток накоплено ∙ 65545[170462263] ←
      380[170459548]                             Сложить ←
      404[170489994]                             Результат ≡ Количество прихода ∙ 65545[170462261] ←
  1638475[170459421]                           Меньше или равно ←
  1638464[170475600]                           Ноль (0.0), если NULL ≡ Остаток SKU ∙ 65545[170462262] ←
      105[170459990]                         То ←
      404[170489995]                           Результат ≡ Количество прихода ∙ 65545[170462261] ←
      424[170459924]                         Иначе ←
      116[170463189]                           Выражение ←
  1638464[170475601]                             Ноль (0.0), если NULL ≡ Остаток SKU ∙ 65545[170462262] ←
      406[170459557]                             Вычесть ←
      404[170489996]                             Результат ≡ Остаток накоплено ∙ 65545[170462263] ←
 48431132[170461852]                     += ≡ Остаток накоплено ∙ 65545[170462263] ←
      404[170489997]                       Результат ≡ Остаток деление ∙ 65545[170462264] ←
 30867470[170461847]                     IF ←
  1638463[170462796]                       Условие ←
      404[170490053]                         Результат ≡ Товар ∙ 65545[170462267] ←
 30867472[170461835]                       THEN • запишем лог ←
 11010088[170461846]                         ВЫПОЛНИТЬ ≡ WriteMessageToLog ∙ 127[39780364] ←
 11010095[170460666]                           Выражение ←
      404[170490058]                             Результат ⁼ 'Партия=' ←
      404[170490059]                             Результат ≡ Партия ∙ 65545[170462260] ←
      404[170490062]                             Результат ⁼ '; Остаток, который распределили на текущую партию=' ←
      404[170490063]                             Результат ≡ Остаток деление ∙ 65545[170462264] ←
      404[170490077]                             Результат ≡ CR+LF ∙ 117[1508547] ←
      404[170490064]                             Результат ⁼ 'Остаток, который уже распределён по партиям=' ←
      404[170490065]                             Результат ≡ Остаток накоплено ∙ 65545[170462263] ←
 30867470[170461843]                     IF ←
  1638463[170462792]                       Условие ←
      404[170489998]                         Результат ≡ Остаток накоплено ∙ 65545[170462263] ←
  1638475[170459422]                         Меньше или равно ←
      404[170489999]                         Результат ≡ Остаток SKU ∙ 65545[170462262] ←
 30867472[170461831]                       THEN • добавить строку в отчёт ←
 11010080[170469107]                         = ≡ СуммаУчетн ∙ 65545[170463083] ←
      116[170465345]                           Выражение ←
      404[170497535]                             Результат ≡ ЦенаУчетн ∙ 65545[170463082] ←
      403[170459948]                             Умножить ←
      404[170497536]                             Результат ≡ Остаток деление ∙ 65545[170462264] ←
 11010080[170469108]                         = ≡ СуммаЗакуп ∙ 65545[170463084] ←
      116[170465347]                           Выражение ←
      404[170497539]                             Результат ≡ ЦенаЗакуп ∙ 65545[170462265] ←
      403[170459950]                             Умножить ←
      404[170497540]                             Результат ≡ Остаток деление ∙ 65545[170462264] ←
 48431132[170461887]                         += ≡ CostWithoutVAT ∙ 65545[170463177] ←
  1638464[170496686]                           Ноль (0.0), если NULL ≡ СуммаУчетн ∙ 65545[170463083] ←
 48431132[170461888]                         += ≡ CostWithVAT ∙ 65545[170463178] ←
  1638464[170496687]                           Ноль (0.0), если NULL ≡ СуммаЗакуп ∙ 65545[170463084] ←
 30867470[170462509]                         IF ←
  1638463[170463969]                           Условие ←
      404[170497700]                             Результат ≡ Товар ∙ 65545[170462267] ←
 30867472[170462494]                           THEN • расширенная запись + партии + количество прихода + цены ←
 11010080[170467408]                             = ≡ Строка ∙ 65545[655299188] ←
      404[170490020]                               Результат ≡ Дата ∙ 65545[170462252] ←
      404[170490019]                               Результат ⁼ ; ←
      404[170490000]                               Результат ≡ ЦО ТТ ∙ 65545[170462254] ←
      411[170465348]                                 Уточняющий параметр ≡ Ранг партнера ∙ 283[28835905] ←
      411[170465349]                                   Уточняющий параметр ≡ Имя ∙ 249[262146] ←
      404[170490001]                               Результат ⁼ ; ←
      404[170490002]                               Результат ≡ Storage ∙ 65545[170463132] ←
      404[170490003]                               Результат ⁼ ; ←
      404[170490006]                               Результат ≡ Группа ∙ 65545[170462256] ←
      411[170465352]                                 Уточняющий параметр ≡ Наименование ∙ 296[6] ←
      404[170490007]                               Результат ⁼ ; ←
      404[170490008]                               Результат ≡ Подгруппа ∙ 65545[170462257] ←
      411[170465353]                                 Уточняющий параметр ≡ Наименование ∙ 296[6] ←
      404[170490009]                               Результат ⁼ ; ←
      404[170490010]                               Результат ≡ MKU ∙ 65545[170462258] ←
      411[170465354]                                 Уточняющий параметр ≡ Наименование ∙ 296[6] ←
      404[170490011]                               Результат ⁼ ; ←
      404[170490012]                               Результат ≡ SKU ∙ 65545[170462259] ←
      411[170465355]                                 Уточняющий параметр ≡ Код ∙ 305[5] ←
      404[170497374]                               Результат ⁼ ; ←
      404[170497373]                               Результат ≡ SKU ∙ 65545[170462259] ←
      411[170465809]                                 Уточняющий параметр ≡ Наименование ∙ 305[6] ←
      404[170490013]                               Результат ⁼ ; ←
      404[170490018]                               Результат ≡ Дата прихода ∙ 65545[170462266] ←
      404[170490015]                               Результат ⁼ ; ←
      404[170490014]                               Результат ≡ Остаток деление ∙ 65545[170462264] ←
      404[170490017]                               Результат ⁼ ; ←
      404[170490016]                               Результат ≡ СуммаЗакуп ∙ 65545[170463084] ←
      404[170497372]                               Результат ⁼ ; ←
      404[170497533]                               Результат ≡ СуммаУчетн ∙ 65545[170463083] ←
      404[170497531]                               Результат ⁼ ; ←
      404[170497692]                               Результат ≡ Партия ∙ 65545[170462260] ←
      404[170497696]                               Результат ⁼ ; ←
      404[170497693]                               Результат ≡ Количество прихода ∙ 65545[170462261] ←
      404[170497697]                               Результат ⁼ ; ←
      404[170497694]                               Результат ≡ ЦенаУчетн ∙ 65545[170463082] ←
      404[170497698]                               Результат ⁼ ; ←
      404[170497695]                               Результат ≡ ЦенаЗакуп ∙ 65545[170462265] ←
      404[170497699]                               Результат ⁼ ; ←
 30867473[170460188]                           ELSE • стандартная запись ←
 11010080[170469143]                             = ≡ Строка ∙ 65545[655299188] ←
      404[170497708]                               Результат ≡ Дата ∙ 65545[170462252] ←
      404[170497709]                               Результат ⁼ ; ←
      404[170497710]                               Результат ≡ ЦО ТТ ∙ 65545[170462254] ←
      411[170469790]                                 Уточняющий параметр ≡ Ранг партнера ∙ 283[28835905] ←
      411[170469791]                                   Уточняющий параметр ≡ Имя ∙ 249[262146] ←
      404[170497711]                               Результат ⁼ ; ←
      404[170497802]                               Результат ≡ Storage ∙ 65545[170463132] ←
      404[170497713]                               Результат ⁼ ; ←
      404[170497714]                               Результат ≡ Группа ∙ 65545[170462256] ←
      411[170469793]                                 Уточняющий параметр ≡ Наименование ∙ 296[6] ←
      404[170497715]                               Результат ⁼ ; ←
      404[170497716]                               Результат ≡ Подгруппа ∙ 65545[170462257] ←
      411[170469794]                                 Уточняющий параметр ≡ Наименование ∙ 296[6] ←
      404[170497717]                               Результат ⁼ ; ←
      404[170497718]                               Результат ≡ MKU ∙ 65545[170462258] ←
      411[170469795]                                 Уточняющий параметр ≡ Наименование ∙ 296[6] ←
      404[170497719]                               Результат ⁼ ; ←
      404[170497720]                               Результат ≡ SKU ∙ 65545[170462259] ←
      411[170469796]                                 Уточняющий параметр ≡ Код ∙ 305[5] ←
      404[170497721]                               Результат ⁼ ; ←
      404[170497722]                               Результат ≡ SKU ∙ 65545[170462259] ←
      411[170469797]                                 Уточняющий параметр ≡ Наименование ∙ 305[6] ←
      404[170497723]                               Результат ⁼ ; ←
      404[170497724]                               Результат ≡ Дата прихода ∙ 65545[170462266] ←
      404[170497725]                               Результат ⁼ ; ←
      404[170497726]                               Результат ≡ Остаток деление ∙ 65545[170462264] ←
      404[170497727]                               Результат ⁼ ; ←
      404[170497728]                               Результат ≡ СуммаЗакуп ∙ 65545[170463084] ←
      404[170497729]                               Результат ⁼ ; ←
      404[170497730]                               Результат ≡ СуммаУчетн ∙ 65545[170463083] ←
      404[170497731]                               Результат ⁼ ; ←
  1507410[170460195]                         ВЫПОЛНИТЬ БЛОК ≡ Выгрузка строки ∙ 30867469[655295591] ←
 30867470[170461844]                         IF ←
  1638463[170462793]                           Условие ←
      404[170490021]                             Результат ≡ Остаток накоплено ∙ 65545[170462263] ←
  1638473[170465454]                             Равно ←
      404[170490022]                             Результат ≡ Остаток SKU ∙ 65545[170462262] ←
 30867472[170461832]                           THEN • конец цикла ←
 11010100[170459381]                             BREAK ←
 30867473[170459986]                       ELSE • конец цикла ←
 11010100[170459382]                         BREAK ←
  1507412[170459229]         Закрыть индикатор ←
 11010088[170462319]         ВЫПОЛНИТЬ ≡ WriteMessageToLog ∙ 127[39780364] ←
 11010095[170460897]           Выражение ←
      404[170498073]             Результат ⁼ 'CostWithoutVAT=' ←
      404[170498074]             Результат ≡ CostWithoutVAT ∙ 65545[170463177] ←
 11010088[170462320]         ВЫПОЛНИТЬ ≡ WriteMessageToLog ∙ 127[39780364] ←
 11010095[170460898]           Выражение ←
      404[170498075]             Результат ⁼ 'CostWithVAT=' ←
      404[170498076]             Результат ≡ CostWithVAT ∙ 65545[170463178] ←
