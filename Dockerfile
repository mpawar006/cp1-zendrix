# Dockerfile
FROM nginx:1.27-alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy all content at once to avoid cache problems on individual files
COPY . /usr/share/nginx/html/

EXPOSE 85

HEALTHCHECK CMD wget -qO- http://localhost:85 || exit 1
