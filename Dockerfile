# use http as base image
FROM httpd

# copy the index.html to the htdocs director
COPY ./dist/mywebsite /usr/local/apache2/htdocs/

# expose port 80
EXPOSE 80

# run apache in foreground (continuously)
CMD apachectl -D FOREGROUND