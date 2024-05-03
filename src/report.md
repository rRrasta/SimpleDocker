## Part 1. Готовый докер
1. Возьми официальный докер-образ с nginx и выкачай его при помощи docker pull.
![](/src/images/nginx-1.png)

2. Проверь наличие докер-образа через docker images.
![](/src/images/nginx-2.png)

3. Запусти докер-образ через docker run -d [image_id|repository].
![](/src/images/nginx-3.png)
- -d: это флаг, который указывает Docker на запуск контейнера в фоновом режиме (detached mode). Это означает, что контейнер будет работать в фоновом режиме, и командная строка будет освобождена для дальнейшего использования.

4. Проверь, что образ запустился через docker ps
![](/src/images/nginx-4.png)

5. Посмотри информацию о контейнере через docker inspect [container_id|container_name].
![](/src/images/inspect-1.png)
![](/src/images/inspect-2.png)
![](/src/images/inspect-3.png)
![](/src/images/inspect-4.png)

6. По выводу команды определи и помести в отчёт размер контейнера, список замапленных портов и ip контейнера.
- размер контейнера
![](/src/images/size.png)

- список замапленных портов  
![](/src/images/ports.png)

- ip контейнера  
![](/src/images/ip.png)

7. Останови докер образ через docker stop [container_id|container_name].
8. Проверь, что образ остановился через docker ps.  
![](/src/images/stop.png)

9. Запусти докер с портами 80 и 443 в контейнере, замапленными на такие же порты на локальной машине, через команду run.
- используем команду sudo docker run -d -p 80:80 -p 443:443 nginx и сразу проверим запуск и порты командой sudo docker ps
![](/src/images/ports-1.png)
![](/src/images/ports-2.png)

10. Проверь, что в браузере по адресу localhost:80 доступна стартовая страница nginx.
![](/src/images/localhost.png)

11. Перезапусти докер контейнер через docker restart [container_id|container_name].
12. Проверь любым способом, что контейнер запустился.
![](/src/images/restart.png)

## Part 2. Операции с контейнером
1. Прочитай конфигурационный файл nginx.conf внутри докер контейнера через команду exec.
![](/src/images/cat-1.png)
![](/src/images/cat-2.png)

2. Создай на локальной машине файл nginx.conf.
- touch nginx.conf  

3. Настрой в нем по пути /status отдачу страницы статуса сервера nginx
- дописываем блок http  
![](/src/images/http.png)

4. Скопируй созданный файл nginx.conf внутрь докер-образа через команду docker cp.
![](/src/images/copy.png)

5. Перезапусти nginx внутри докер-образа через команду exec.
![](/src/images/started.png)

6. Проверь, что по адресу localhost:80/status отдается страничка со статусом сервера nginx.
![](/src/images/local_stat.png)

7. Экспортируй контейнер в файл container.tar через команду export.
![](/src/images/export.png)

8. Останови контейнер.
![](/src/images/stopa.png)

9. Удали образ через docker rmi [image_id|repository], не удаляя перед этим контейнеры.
![](/src/images/rmi.png)

10. Удали остановленный контейнер.
![](/src/images/rm_cont.png)

11. Импортируй контейнер обратно через команду import.
![](/src/images/import.png)

12. Запусти импортированный контейнер.
![](/src/images/runnnnnn.png)

13. Проверь, что по адресу localhost:80/status отдается страничка со статусом сервера nginx.
![](/src/images/statusssssss.png)