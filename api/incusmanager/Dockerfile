FROM python:3.11.9-slim as builder
WORKDIR /app
RUN apt-get update \
    && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir --prefix=/install -r requirements.txt

COPY . .

FROM python:3.11.9-slim

RUN adduser --disabled-password --gecos '' appuser

COPY --from=builder /install /usr/local
COPY --from=builder /app /app
WORKDIR /app
USER appuser
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

