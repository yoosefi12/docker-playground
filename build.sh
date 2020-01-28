sudo docker build -t ubuntu-jdk-scala:alpha-0.1 scala-2.12.8
sudo docker build -t myvim:alpha-0.1 myvim 

sudo docker run --name myvim-alpha-1 -it myvim:alpha-0.1 bash
