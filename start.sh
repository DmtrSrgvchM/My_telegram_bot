#!/bin/bash

# Инициализация git репозитория (если еще не инициализирован)
if [ ! -d ".git" ]; then
  git init
fi

# Настройка имени и email для коммитов
git config --global user.email "crix.1999.03@gmail.com" # Замените!
git config --global user.name "Dmitrii"          # Замените!

# Добавление всех файлов в индекс git
git add .

# Фиксация изменений
git commit -m "Initial commit"

# (Предполагается, что вы хотите использовать ветку 'main')
# Проверка существования ветки main
if git rev-parse --verify --quiet main >/dev/null 2>&1; then
  echo "Ветка main существует"
  git checkout main
else
  echo "Ветка main не существует. Создание ветки main."
  git checkout -b main
fi


# Ваши команды для запуска приложения (например, npm install, npm start)
# npm install
# npm start
echo "Развертывание завершено!"
