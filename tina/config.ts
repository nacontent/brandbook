import { defineConfig } from "tinacms";

// Автоматическое определение ветки (для Vercel)
const branch =
  process.env.GITHUB_BRANCH ||
  process.env.VERCEL_GIT_COMMIT_REF ||
  process.env.HEAD ||
  "main";

export default defineConfig({
  branch,
  clientId: process.env.NEXT_PUBLIC_TINA_CLIENT_ID,
  token: process.env.TINA_TOKEN,

  build: {
    outputFolder: "admin",
    publicFolder: "static", // Папка для Hugo
  },
  media: {
    tina: {
      mediaRoot: "images", // Папка для картинок внутри static
      publicFolder: "static",
    },
  },
  
  // Здесь мы объясняем TinaCMS, где лежат твои файлы
  schema: {
    collections: [
      {
        name: "docs",
        label: "Брендбук (Документация)", // Как это будет называться в меню
        path: "content/docs", // Путь к твоим статьям
        format: "md",
        fields: [
          {
            type: "string",
            name: "title",
            label: "Заголовок страницы",
            isTitle: true,
            required: true,
          },
          {
            type: "rich-text",
            name: "body",
            label: "Содержимое",
            isBody: true,
          },
        ],
      },
    ],
  },
});