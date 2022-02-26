#!/bin/bash

base_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

repos=(
    "https://github.com/pypeclub/openpype4-backend"
    "https://github.com/pypeclub/openpype4-frontend"
)

function download_repos {
    for i in ${nebula_repos[@]}; do
        repo_dir=$base_dir/$(basename $i)
        if [ -d $repo_dir ]; then
            cd $repo_dir
            git checkout main || return 1
            git pull --ff-only || return 1
        else
            cd $base_dir
            git clone $i || return 1
        fi
    done
    cd $base_dir
    return 0
}

download_repos
