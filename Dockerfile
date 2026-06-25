# Menggunakan base image nginx sesuai ketentuan
FROM nginx:latest

# Install git di dalam container untuk melakukan cloning
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Masuk ke direktori default website Nginx
WORKDIR /usr/share/nginx/html

# Hapus file bawaan nginx agar bersih
RUN rm -rf *

# Lakukan git clone langsung ke folder aktif (.)
# Ganti URL di bawah dengan URL repository GitHub kamu!
RUN git clone https://github.com/624c0013/portofolio-utsclaudecomputing2.git .