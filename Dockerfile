# Dockerfile
FROM nginx:1.27-alpine

# Copy custom nginx config that listens on port 85
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy site files
COPY index.html /usr/share/nginx/html/index.html
COPY images /usr/share/nginx/html/images

EXPOSE 85
HEALTHCHECK CMD wget -qO- http://localhost:85 || exit 1
