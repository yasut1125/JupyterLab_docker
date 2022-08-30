FROM python:3.10
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
EXPOSE 8888
#setting node.js(to use plotly)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get update -y\
    && apt-get install nodejs -y\
    && apt-get upgrade -y\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN pip install --upgrade pip
WORKDIR /src
COPY requirements.txt /src
RUN pip install -r requirements.txt
COPY ./src/ /src/
