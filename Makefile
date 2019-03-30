


build:
	docker build -t work_node .

run:
	winpty docker run --rm -it work_node bash