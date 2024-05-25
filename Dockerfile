FROM python:3.9-alpine

ENV PYTHONFAULTHANDLER=1 \
     PYTHONUNBUFFERED=1 \
     PYTHONDONTWRITEBYTECODE=1 \
     PIP_DISABLE_PIP_VERSION_CHECK=on

RUN apk --no-cache add ffmpeg

WORKDIR /app
COPY . .
RUN pip install "cython<3.0.0" wheel && pip install "pyyaml==5.4.1" --no-build-isolation && pip install -r requirements.txt --no-cache-dir

CMD ["python", "bot/main.py"]