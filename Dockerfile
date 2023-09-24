FROM python:3.10.13-alpine3.18

WORKDIR /app

# Install any dependencies required for your "mockallan" tool
# For example, if you need to install additional packages, do it here
# RUN apk add --no-cache <package-name>

COPY requirements.txt .

RUN pip3 install -r requirements.txt

EXPOSE 8080

CMD ["mockallan", "-p", "8080"]
