FROM minio/minio:latest
CMD ["minio", "server", "--console-address", ":9001", "--address", ":9000"]
