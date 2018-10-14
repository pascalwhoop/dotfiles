#docker run -it --name jupyter --rm -p 8888:8888 jupyter/tensorflow-notebook 
docker start jupyter
docker exec -it jupyter bash -c "jupyter notebook list"

