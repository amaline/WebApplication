FROM microsoft/aspnet

COPY . /app
WORKDIR /app
RUN ["dnu", "restore"]

EXPOSE 5000

LABEL INSTALL="docker run -d --net=host --name NAME IMAGE"

ENTRYPOINT ["dnx", ".", "kestrel"]
