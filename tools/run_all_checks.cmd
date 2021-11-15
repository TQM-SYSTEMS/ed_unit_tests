@chcp 65001
echo "start smoke tests..."
@call vrunner xunit --settings ./tools/json/vrunner.json
echo "start syntax-check"
@call vrunner syntax-check --settings ./tools/json/vrunner.json
echo "start copy last history"
if NOT exist .\out\html_report\history\ GOTO :GEN 
robocopy .\out\html_report\history\ .\out\syntaxCheck\allure\history

:GEN 
@rem Конвертация данных allure и вывод отчета
echo "start allure generate"
@call allure generate --clean .\out\syntaxCheck\allure .\out\smoke -o .\out\html_report
@call allure open .\out\html_report