@chcp 65001
rem set LOGOS_CONFIG=logger.rootLogger=DEBUG
rem удаление результатов предыдущих тестов
@echo off
del /f /s /q "./out/smoke"
@call vrunner xunit --settings ./tools/json/vrunner.json