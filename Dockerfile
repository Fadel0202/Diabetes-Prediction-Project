# Utilisez une image de base avec Python et les dépendances de compilation
FROM python:3.8

# Créez et définissez le répertoire de travail
WORKDIR /app

# Installez les dépendances nécessaires
RUN apt-get update && \
    apt-get install -y build-essential && \
    pip install pandas==1.3.3 \
                scikit-learn==1.3.2 \
                imbalanced-learn==0.8.0 \
                seaborn==0.11.2 \
                matplotlib==3.4.3 \
                Cython==0.29.24 \
                numpy==1.18.3

# Copiez le contenu de votre répertoire actuel dans le répertoire de travail
COPY . /app

# Commande par défaut pour lancer votre script ou votre application
CMD ["python", "main.py"]

