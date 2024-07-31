FROM nginx:latest

# Instalar as dependências do projeto
RUN apt-get update && apt-get install -y nodejs npm

# Copiar os arquivos do projeto
COPY index.html /usr/share/nginx/html/index.html
COPY assets /usr/share/nginx/html/assets

# Configurar o servidor web
RUN echo "server { listen 80; location / {root /usr/share/nginx/html;index index.html;}}" > /etc/nginx/conf.d/default.conf

# docker build -t guilsweb .
# docker run -d -p 80:80 guilsweb

# Expor a porta do servidor web no host
EXPOSE 80