FROM python:3.10
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
EXPOSE 18888
RUN apt-get update \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip
#jupyter環境の構築
RUN pip install Jupyter && pip install jupyterlab
WORKDIR /code
COPY requirements.txt /code
RUN pip install -r requirements.txt
COPY ./code/ /code/
