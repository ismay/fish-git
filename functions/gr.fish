function gr --description "Cd up to git root if in git repo"
  if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1
    or ! git rev-parse --show-toplevel >/dev/null 2>&1

    # Exit script if not in repo or toplevel can't be found
    return
  end

  cd (git rev-parse --show-toplevel)
end
