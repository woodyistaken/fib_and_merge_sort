def merge_sort(arr)
  return arr if [1, 0].include?(arr.length)

  left = merge_sort(arr[0..(arr.length / 2) - 1])
  right = merge_sort(arr[(arr.length / 2)..])
  sorted_arr = []
  right_index = 0
  left_index = 0
  while left.length > left_index || right.length > right_index
    if left.length == left_index
      sorted_arr.push(right[right_index])
      right_index += 1
    elsif right.length == right_index
      sorted_arr.push(left[left_index])
      left_index += 1
    elsif right[right_index] < left[left_index]
      sorted_arr.push(right[right_index])
      right_index += 1
    else
      sorted_arr.push(left[left_index])
      left_index += 1
    end
  end
  sorted_arr
end

p merge_sort([105, 79, 100, 110])
