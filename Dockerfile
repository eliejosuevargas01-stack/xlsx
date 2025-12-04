FROM nginx:alpine

# Limpa o conteúdo padrão e define a raiz do site
WORKDIR /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/*

# Copia todos os assets estáticos
COPY . .

# Aplica a configuração customizada do Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8085

CMD ["nginx", "-g", "daemon off;"]
