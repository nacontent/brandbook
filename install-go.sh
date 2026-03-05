# 1. Скачиваем Go (необходим для загрузки модулей Lotus Docs)
curl -L https://go.dev/dl/go1.21.1.linux-amd64.tar.gz | tar -C /tmp -xz
export PATH=$PATH:/tmp/go/bin

# 2. Скачиваем Hugo Extended (версия 0.123.0 — необходима для Sass стилей)
curl -L https://github.com/gohugoio/hugo/releases/download/v0.123.0/hugo_extended_0.123.0_linux-amd64.tar.gz | tar -C /tmp -xz
chmod +x /tmp/hugo
export PATH=/tmp:$PATH

# 3. Проверка версии (в логах должно появиться 'extended')
hugo version

# 4. Сборка сайта
hugo --gc --minify