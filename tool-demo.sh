for fname in $(ls -1 projects/*.json); do
    docker-compose exec -T backend python -m demogen < ${fname}
done
