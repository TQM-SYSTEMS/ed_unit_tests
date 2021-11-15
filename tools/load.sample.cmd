@chcp 65001
rem set LOGOS_CONFIG=logger.rootLogger=DEBUG
rem "Загружает исходники конфигурации в базу данных"
@call vrunner load -s ./build/1cv8.cf --ibconnection /Slocalhost\pgdc --db-user <user> --db-pwd <pwd>