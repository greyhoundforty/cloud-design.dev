FROM bretfisher/jekyll:latest


# create new site by setting -e JEKYLL_NEW=true
ENV JEKYLL_NEW false

COPY . /site

COPY docker-entrypoint.sh /usr/local/bin/

# on every container start we'l'
ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "80" ]