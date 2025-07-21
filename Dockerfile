FROM python:3.14-rc-alpine3.20

WORKDIR /app

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Install dependencies for Python and remove build dependencies afterward
# Install pip, and directly install the required Python tool
# RUN apk add --no-cache python3 py3-pip && \
#     pip install --upgrade pip && \
#     pip install --no-cache-dir mockallan
COPY requirements.txt .
COPY stub_config.json .

RUN pip3 install -r requirements.txt

USER appuser

ENV MOCKALLAN_PORT=8080
ENV STUB_CONFIG_JSON=/app/stub_config.json

EXPOSE $MOCKALLAN_PORT

CMD ["sh", "-c", "mockallan -p $MOCKALLAN_PORT -c $STUB_CONFIG_JSON"]
