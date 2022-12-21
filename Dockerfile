FROM rust:latest
WORKDIR /app
#COPY ./ /app/okome_backend 
RUN mkdir -p /app/okome_backend
RUN echo DATABASE_URL=postgres://okome:okome-password@okome_db/okome > /app/okome_backend/.env
RUN cargo install diesel_cli --no-default-features --features postgres
CMD ["/bin/sh"]
