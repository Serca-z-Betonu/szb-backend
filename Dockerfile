FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /

COPY ./requirements.txt /requirements.txt

RUN pip install --no-cache-dir --upgrade -r /requirements.txt

COPY ./src/main /src/main

EXPOSE 8090

CMD ["uvicorn", "src.main.main:app", "--host", "0.0.0.0", "--port", "8090"]