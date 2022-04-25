FROM python:3.8.13-alpine
WORKDIR /app
COPY . .
RUN apk add --update --no-cache g++ gcc libxslt-dev && apk add --no-cache postgresql-libs && \
    apk add --no-cache postgresql-libs && apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
    pip install -r requirements.txt --no-cache-dir && \
	apk --purge del .build-deps
RUN addgroup -S app && adduser -S app -G app && chown -R app:app /app
USER app
CMD python manage.py migrate && python manage.py runserver 0.0.0.0:8000
EXPOSE 8000