# Menjalankan shell interaktif di dalam container Redis
docker container exec -it redis-container /bin/bash

# Menjalankan perintah Redis CLI di dalam container
docker container exec -it redis-container redis-cli

# Menjalankan perintah tunggal tanpa masuk ke shell interaktif
docker container exec redis-container redis-cli ping

# Menjalankan perintah sebagai user tertentu
docker container exec -u redis redis-container redis-cli info

# Menjalankan perintah dengan variabel lingkungan
docker container exec -e VAR_NAME=value redis-container env

# Menjalankan perintah di direktori kerja tertentu
docker container exec -w /data redis-container ls -l

# Menjalankan perintah dengan alokasi pseudo-TTY
docker container exec -t redis-container top

# Menjalankan perintah dengan mode detached
docker container exec -d redis-container redis-cli bgsave

# Menjalankan perintah dengan batasan sumber daya
docker container exec --cpus 0.5 --memory 100m redis-container redis-cli info