import asyncio
import nest_asyncio
from telegram import Update
from telegram.ext import ApplicationBuilder, CommandHandler, ContextTypes

nest_asyncio.apply()

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    print("Получена команда /start")
    await update.message.reply_text('Привет! Я твой бот.')

async def main():
    print("Создаём приложение")
    app = ApplicationBuilder().token("8089569060:AAE6tGZLOOvTmHB0mCIBN-odvQHJ2janObU").build()
    print("Добавляем обработчик команды /start")
    app.add_handler(CommandHandler("start", start))
    print("Запускаем polling")
    await app.run_polling()

if __name__ == '__main__':
    print("Запуск бота")
    loop = asyncio.get_event_loop()
    loop.create_task(main())
    loop.run_forever()

