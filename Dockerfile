FROM nginxinc/nginx-unprivileged:1.23.1-alpine
USER nginx
COPY --chown=101:101 ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --chown=101:101 ./dist/angular-starter /usr/share/nginx/web
CMD ["nginx", "-g", "daemon off;"]