# Базовий Python-образ
FROM python:3.12-slim

# Вимикаємо кеш pip
ENV PIP_NO_CACHE_DIR=1

# Робоча директорія всередині контейнера
WORKDIR /app

# Скопіювати requirements і встановити залежності
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Скопіювати весь код у контейнер
COPY . .

# Експонуємо порт (той, на якому буде Gunicorn)
EXPOSE 8000

# Команда запуску: Gunicorn + Flask (app:app)
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
