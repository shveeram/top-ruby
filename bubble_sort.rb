def bubble_sort(list_to_sort)
  return list_to_sort if list_to_sort.length <= 1
  #sorting algorithm
  (list_to_sort.length - 1).downto(1) do |n|
    swapped = false
    n.times do |i|
      if list_to_sort[i] > list_to_sort[i+1]
        list_to_sort[i],list_to_sort[i+1] = list_to_sort[i+1],list_to_sort[i]
        swapped = true
      end
    end
    break unless swapped
  end
  list_to_sort
end