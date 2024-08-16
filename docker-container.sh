# Menampilkan daftar container yang sedang berjalan
docker ps

# Menampilkan semua container (termasuk yang tidak berjalan)
docker container ls -a

# Memulai container Redis yang sudah ada
docker start redis-container

# Menghentikan container Redis
docker stop redis-container

# Menghapus container Redis
docker rm redis-container

# Membuat dan menjalankan container Redis baru
docker run --name redis-baru -d redis:latest

# Menjalankan perintah di dalam container Redis yang sedang berjalan
docker exec -it redis-container redis-cli

# Melihat log container Redis
docker logs redis-container

# Melihat statistik penggunaan sumber daya container Redis
docker stats redis-container

# Melihat proses yang berjalan di dalam container Redis
docker top redis-container

# Menghentikan dan menghapus semua container
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

# Membuat container Redis dengan port mapping
docker run --name redis-port -p 6379:6379 -d redis:latest

# Membuat container Redis dengan volume
docker run --name redis-volume -v /path/di/host:/data -d redis:latest

# Melihat informasi detail tentang container Redis
docker inspect redis-container