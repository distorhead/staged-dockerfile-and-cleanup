FROM ubuntu as assets
RUN mkdir -p /app/assets
RUN echo ALKSDJFLKSJDF > /app/assets/logo.png


FROM alpine as build
RUN mkdir -p /app/data
RUN echo EHLO > /app/data/FILE
RUN echo AAA > /app/README.md
COPY --from=assets /app/assets /app/assets
ADD . /src
RUN ls -R /src


FROM debian
RUN date > /version.txt
COPY --from=build /app /app
