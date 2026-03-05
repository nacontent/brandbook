# 1. Скачиваем Go
curl -L https://go.dev/dl/go1.21.1.linux-amd64.tar.gz | tar -C /tmp -xz
export PATH=$PATH:/tmp/go/bin

# 2. Скачиваем Hugo Extended 0.128.0 (самая стабильная для новых тем)
curl -L https://github.com/gohugoio/hugo/releases/download/v0.128.0/hugo_extended_0.128.0_linux-amd64.tar.gz | tar -C /tmp -xz
chmod +x /tmp/hugo

# 3. Проверка версии (важно увидеть 'extended' в логах)
/tmp/hugo version

# 4. Сборка сайта (ИСПОЛЬЗУЕМ ПОЛНЫЙ ПУТЬ)
/tmp/hugo --gc --minify