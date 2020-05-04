function show_dag_path(d::DAG, path::Vector{Symbol})
  local str
  for (ind, sym) in enumerate(path)
    if ind == 1
      str = ":$sym"
    else
      cond = d.a[path[ind-1], path[ind]] == 1
      str *= cond ? " <- :$(path[ind])" : " -> :$(path[ind])"
    end
  end
  str
end

export
  show_dag_path