all:
	@echo "Description: Joey working base for Windows OS, include git vim and golang"
	@echo "Usage:"
	@echo "     bulld - build image"
	@echo "     run - run env iteractive"
	@echo "     clean - clean image"

build: build_base

clean: clean_base

build_base:
	docker build -t zhangzj/work_node_base -f base.dockerfile .

run: run_base
run_base:
	winpty docker run --rm -it zhangzj/work_node_base bash
clean_base:
	docker image rm zhangzj/work_node_base
