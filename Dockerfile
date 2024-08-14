# Используем официальный образ MinIO
FROM minio/minio:latest

# Задаем директорию для хранения данных
VOLUME /data

# Задаем переменные окружения для MinIO
ENV MINIO_ROOT_USER=admin
ENV MINIO_ROOT_PASSWORD=password

# Открываем порты для доступа
EXPOSE 9000
EXPOSE 9001

# Команда запуска MinIO
CMD ["minio", "server", "/data", "--console-address", ":9000"]

