def count(list)
  return 0 if list == []

  1 + count(list.slice(1..))
end
