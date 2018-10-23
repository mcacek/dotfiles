workspaces=~/.dotworkspaces/

workspaceCount=`find $workspaces -maxdepth 1 -type d | wc -l`

if [ $workspaceCount -gt 1 ]; then
    for dir in $workspaces/*/
    do
        dir=${dir%*/}
        if [[ -f "$dir/exports" ]]; then
            . ${dir}/exports
        fi

        if [[ -s "$dir/bin" ]]; then
            export PATH=$PATH:${dir}/bin
        fi

        if [[ -f "$dir/aliases" ]]; then
            . ${dir}/aliases
        fi

        if [[ -f "$dir/functions" ]]; then
            . ${dir}/functions
        fi
    done
fi
