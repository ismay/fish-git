function gr --description "Cd up to git root if in git repo"
    set -l git_toplevel (git rev-parse --show-toplevel 2>/dev/null)

    if test -z $git_toplevel
        # Do nothing if toplevel can't be found
        return
    end

    cd -- "$git_toplevel"
end
