def bubble_sort(arr)
  size = arr.length - 1
  size.times {
    index = 0
    while index < size
      if arr[index] > arr[index + 1]
        temp = arr[index + 1]
        arr[index + 1] = arr[index]
        arr[index] = temp
      end
      index += 1
    end
  }
  arr
end
