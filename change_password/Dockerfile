FROM ruby:3.2

# Instala dependencias del sistema necesarias
RUN apt-get update && apt-get install -y \
  build-essential \
  freetds-dev \
  libsybdb5 \
  && rm -rf /var/lib/apt/lists/*

# Crea directorio de la app
WORKDIR /app

# Copia dependencias e instala
COPY Gemfile ./
RUN gem install bundler && bundle install

# Copia el resto del código
COPY . .

# Expone puerto
EXPOSE 4567

# Arranca con rackup
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "--port", "4567"]
