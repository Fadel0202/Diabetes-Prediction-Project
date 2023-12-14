# Utilisation d'une image de base avec Python
FROM python:3.8-alpine

# Copie des fichiers nécessaires dans le conteneur
COPY ./app

# Installation des dépendances (scikit-learn)
RUN pip install -r requirements.txt

# Définition du répertoire de travail
WORKDIR /app

# Commande à exécuter lors du démarrage du conteneur
CMD ["python3", "main.py"]