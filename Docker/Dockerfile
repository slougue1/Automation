FROM python:3.11-slim

# Setting the working directory inside the container
WORKDIR /app

#Copy all the files from the current directory to the working directory in the container
COPY . .

#expose port 5000
EXPOSE 5000

# Install the requirements
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]