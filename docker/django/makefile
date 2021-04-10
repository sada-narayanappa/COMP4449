NAME=centdjango
ITAG=sada-centdjango

all:
	docker build --tag=${ITAG} .

run:
	docker run   -p 4000:4000 -v /tmp/:/tmp1 --rm --name ${NAME} -it ${ITAG}

show:
	docker image ls

rm:
	docker stop ${NAME}
	docker rm ${NAME}

