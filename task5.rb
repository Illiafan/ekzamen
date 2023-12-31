def heapify(arr, n, i)
  largest = i
  left = 2 * i + 1
  right = 2 * i + 2

  if left < n && arr[left] > arr[largest]
    largest = left
  end

  if right < n && arr[right] > arr[largest]
    largest = right
  end

  if largest != i
    arr[i], arr[largest] = arr[largest], arr[i]
    heapify(arr, n, largest)
  end
end

def heap_sort(arr)
  n = arr.length

  # Build max heap
  (n / 2 - 1).downto(0).each do |i|
    heapify(arr, n, i)
  end

  # Extract elements one by one
  (n - 1).downto(1).each do |i|
    arr[0], arr[i] = arr[i], arr[0]
    heapify(arr, i, 0)
  end
end

# Example usage:
arr = [12, 11, 13, 5, 6, 7]
heap_sort(arr)
puts "Sorted array: #{arr}"
