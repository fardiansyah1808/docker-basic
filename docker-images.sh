# Menampilkan daftar images yang ada
docker images

# Mengunduh image Redis dari Docker Hub
docker pull redis:latest

# Menghapus image Redis
docker rmi redis:latest

# Membuat container dari image Redis tanpa menjalankannya
docker create --name redis-container redis:latest

# Membangun image Redis kustom dari Dockerfile
docker build -t redis-kustom:v1 .

# Menyimpan image Redis ke file tar
docker save -o redis-backup.tar redis:latest

# Memuat image Redis dari file tar
docker load -i redis-backup.tar

# Menandai image Redis dengan nama baru
docker tag redis:latest redis-prod:v1

# Mengunggah image Redis ke Docker Hub (perlu login terlebih dahulu)
docker push username/redis-kustom:v1

# Memeriksa riwayat image Redis
docker history redis:latest

# Menampilkan informasi detail tentang image Redis
docker inspect redis:latest

# Mencari image Redis di Docker Hub
docker search redis

# Membersihkan image Redis yang tidak digunakan
docker image prune -a --filter "until=24h" --filter=label=maintainer=redis