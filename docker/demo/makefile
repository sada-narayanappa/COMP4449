NAME=centosta
ITAG=centosta

all:
        docker build --tag=${ITAG} .

run:
        docker run  -v /tmp/:/tmp1 --rm --name ${NAME} -it ${ITAG}
        #docker run -v /NEC/SIAT-OLD/SIAT-OLD/benchmarks/:/DATA ${NAME} ./SCORE.EXE_Linux -i /DATA/normal1.csv.model.csv -t /DATA/ab1.csv
        #docker run -v /opt/LMCO/git/notebooks/no-git/SCHAS-Notebooks/Notes/ARX/c/utils:/utils --rm --name ${NAME} -it ${ITAG}

rm:
        docker stop ${NAME}
        docker rm ${NAME}
