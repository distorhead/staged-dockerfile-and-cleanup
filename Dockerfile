FROM alpine
RUN mkdir -p /app/data
RUN echo EHLO > /app/data/FILE
RUN echo AAA > /app/README.md
ADD . /src
RUN ls -R /src


FROM alpine
RUN date > /version.txt
COPY --from=0 /app /app
