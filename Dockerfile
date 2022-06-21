FROM python:3
LABEL org.opencontainers.image.source https://github.com/unal-swarch-2022i-1A/firma_storage_ms
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./src/server.py" ]