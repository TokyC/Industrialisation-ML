# Utilisez une image de base avec Python 3.7
FROM python:3.7

# Installation de TensorFlow
RUN pip install tensorflow==2.11.0

RUN echo "hello world"

# Définissez le répertoire de travail
WORKDIR /app

# Copiez votre code Python dans le conteneur
COPY /app /app

# Exécutez votre script Python
CMD [ "python", "main.py" ]