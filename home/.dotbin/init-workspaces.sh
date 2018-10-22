for dir in ~/.dotworkspaces/*/
do
    dir=${dir%*/}
    if [[ -f "$dir/exports" ]]; then
        . ${dir}/exports
    fi

    if [[ -f "$dir/aliases" ]]; then
        . ${dir}/aliases
    fi

    if [[ -f "$dir/functions" ]]; then
        . ${dir}/functions
    fi
done
