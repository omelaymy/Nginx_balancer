
# Использование nginx в качестве балансировщика нагрузки.
![photo_2022-11-07_16-15-12](https://user-images.githubusercontent.com/111986036/200336478-83850b8c-48ab-4d6e-a120-1b5418259ffe.jpg)


# Описание проекта
- В докере поднимается 6 инстансов приложения и сам проси-сервер nginx
- Нагрузка спам-скрипта идет на nginx, который распределяет их по серверам в зависимости от нагрузки
- Через 50 сек стопится контейнер одного инстанса, и nginx распределяет нагрузку между оставшимися
- Через 150 сек инстанс поднимается
- Каждые 10 сек в терминал выводится колличество запросов обработанных каждым сервером


# Установка и запуск
+ Клонировать репозиторий гит
  (git@github.com:omelaymy/FastApi_Nginx_Balancer.git)
+ Перейти в директорию проекта
+ Запустить скрипты



    chmod u+x ./run.sh

    sudo ./run.sh

+ Программа работает 300 секунд.



