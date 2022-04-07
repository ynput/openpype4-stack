for fname in $(ls -1 linkconfig/*.json); do
    docker-compose exec -T backend python -m linker < ${fname}
    break
done
