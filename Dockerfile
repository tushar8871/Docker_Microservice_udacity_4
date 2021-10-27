FROM python:3.7.3-stretch

## Complete Step 1:
# Create a Working Directory
WORKDIR /app

## Complete Step 2:
# Copy source code to working directory
COPY . app.py /app/

## Complete Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
	pip install --trusted-host pypi.python.org -r requirements.txt
	
EXPOSE 80

RUN ["python3","app.py"]