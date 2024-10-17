@echo off

echo task1

docker build -t 2048-game .

docker stop game1
docker rm game1
echo Launching first container...
docker run -d --name game1 -p 8080:8080 2048-game

docker stop game2
docker rm game2
echo Launching second container...
docker run -d --name game2 -p 8081:8080 2048-game

echo ____________________________________________
echo task2

docker-compose up
echo Launching docker-compose container...
pause