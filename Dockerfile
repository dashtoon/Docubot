FROM python:3.11

# Create app directory
WORKDIR /app

# Install app dependencies
COPY requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY . /app

EXPOSE 9000
CMD [ "python", "app.py" ]