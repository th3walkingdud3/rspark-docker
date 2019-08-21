#!/bin/bash
echo "\n"

PS3='Choose a container to log in to: '
options=("Rstudio" "Hadoop" "Postgres" "Hive" "Cancel" )
select opt in "${options[@]}"
do
    case $opt in
        "Rstudio")
            docker exec -ti rspark-docker_rstudio_1 bash
            break
            ;;
        "Hadoop")
            docker exec -ti rspark-docker_hadoop_1 bash
            break
            ;;
        "Postgres")
            docker exec -ti rspark-docker_postgres_1 bash
            break
            ;;
        "Hive")
            docker exec -ti rspark-docker_hive_1 bash
            break
            ;;
        "Cancel")
            break
            ;;
        *) echo invalid option;;
    esac
done