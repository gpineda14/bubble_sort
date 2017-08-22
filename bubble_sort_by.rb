def bubble_sort_by(arr)
  size = arr.length - 1
  size.times {
    index = 0
    while index < size
      if yield(arr[index], arr[index + 1]) > 0
        temp = arr[index + 1]
        arr[index + 1] = arr[index]
        arr[index] = temp
      end
      index += 1
    end
  }
  arr
end

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  left.length - right.length
end
