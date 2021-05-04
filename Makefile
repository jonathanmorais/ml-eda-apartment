jupyter-build:
	docker build -t jupyter-zap-scrap -f docker/Dockerfile ..

jupyter-run:
	docker run --name jupyter-nb --rm \
	-p 10000:8888 \
	--network=host \
	-e JUPYTER_ENABLE_LAB=yes \
	-v $$PWD/work:/home/jovyan/work jupyter-zap-scrap

jupyter-remove:
	docker rm -f jupyter-nb