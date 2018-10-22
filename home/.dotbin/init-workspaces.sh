for dir in ~/.dotworkspaces/*/
do
    dir=${dir%*/}
    if [[ -f "$dir/exports" ]]; then
        . ${dir}/exports
    fi

    if [[ -s "$dir/bin" ]]; then
        export PATH=$PATH:${dir}/bin
        echo $PATH
    fi

    if [[ -f "$dir/aliases" ]]; then
        . ${dir}/aliases
    fi

    if [[ -f "$dir/functions" ]]; then
        . ${dir}/functions
    fi
done
