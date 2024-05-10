# Użyj oficjalnego obrazu Pythona jako bazy
FROM python:3.8-slim

# Ustawienie katalogu roboczego w kontenerze
WORKDIR /app

# Kopiowanie pliku z zależnościami i ich instalacja
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopiowanie reszty kodu źródłowego aplikacji
COPY . .

# Uruchomienie skryptu Pythona
CMD ["python", "./your_script.py"]
