# Собрать образ:
docker build -t my_hello:1.0 . 

# Запустить контейнер из собранного образа:
docker run -itd -p 8080:8080 my_hello:1.0

# Зайти на сайт:
http://<YOR_EXTERNAL_IP>:8080/hello-1.0/