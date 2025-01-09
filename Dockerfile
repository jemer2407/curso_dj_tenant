# Pull de la imagen base
FROM python:3.12.2-slim-bullseye

# variables de entorno
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONNUNBUFFERED 1

# directorio de trabajo
WORKDIR /code

# instalar dependencias
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copiar el proyecto
COPY . .

