FROM alpine
RUN mkdir -p /app/data
RUN echo EHLO > /app/data/FILE
RUN echo AAA > /app/README.md


FROM alpine
RUN date > /version.txt
COPY --from=0 /app /app
