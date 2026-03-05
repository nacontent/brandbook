# 1. Скачиваем Go
curl -L https://go.dev/dl/go1.21.1.linux-amd64.tar.gz | tar -C /tmp -xz
export PATH=$PATH:/tmp/go/bin

# 2. Скачиваем Hugo Extended (версия 0.124.1 — именно то, что просит тема)
curl -L https://github.com/gohugoio/hugo/releases/download/v0.124.1/hugo_extended_0.124.1_linux-amd64.tar.gz | tar -C /tmp -xz
chmod +x /tmp/hugo
export PATH=/tmp:$PATH

# 3. Проверка версии (в логах должно быть 0.124.1 extended)
hugo version

# 4. Сборка сайта
hugo --gc --minify