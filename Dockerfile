FROM python:3.9.0-alpine

WORKDIR /usr/src/app

COPY requirements.txt main.py ./

RUN pip install -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]