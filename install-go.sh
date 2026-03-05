# Установка Go
curl -L https://go.dev/dl/go1.21.1.linux-amd64.tar.gz | tar -C /tmp -xz
export PATH=$PATH:/tmp/go/bin
# Запуск Hugo
hugo --gc --minify