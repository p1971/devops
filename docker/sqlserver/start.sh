sudo docker pull mcr.microsoft.com/mssql/server:2019-CU3-ubuntu-18.04

sudo docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=##13fZWM2LZ2C6HweF4!!" \
   -p 1433:1433 --name sql1 \
   -d mcr.microsoft.com/mssql/server:2019-CU3-ubuntu-18.04
