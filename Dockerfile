FROM nginx:alpine

# Remover arquivos padrões
RUN rm -rf /usr/share/nginx/html/*

# Configuração do Nginx para ouvir na porta 8085
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiar os arquivos do front
COPY index.html /usr/share/nginx/html

# Expor porta 8085
EXPOSE 8085

CMD ["nginx", "-g", "daemon off;"]
