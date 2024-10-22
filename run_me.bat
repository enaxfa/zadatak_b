@echo off

:: Build the Docker image
echo Building Docker image 'sparkhome'...
docker build . -t sparkhome

:: Run the Docker container
echo Running Docker container 'spark'...
docker run -v "%cd%/csv/:/mnt/csv/" -p 8888:8888 -p 4040:4040 --name spark -d sparkhome

echo Docker container 'spark' is running.
