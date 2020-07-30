def quick_sort(list)
  return list if list.length < 2

  pivot_index = list.length / 2
  pivot = list.delete_at(pivot_index)

  low = []
  high = []

  list.each do |item|
    if item < pivot
      low << item
    else
      high << item
    end
  end

  quick_sort(low) + [pivot] + quick_sort(high)
end

list = [999, 1, 25, 76, 89, 34, 768, 99, 678, 5, 234, 971, 56, 34, 342, 730, 663]
list2 = [2, 0]
list3 = [6]
list4 = []
