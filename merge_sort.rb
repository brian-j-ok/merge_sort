require 'pp'

arr = Array.new(rand(10...20)) { rand(1...20) }
pp "Original Array: #{arr}"

def merge_sort(arr)
  if arr.size < 2
    arr
  else
    left_arr, right_arr = arr.each_slice((arr.size / 2.0).round).to_a
    merge_arrays(merge_sort(left_arr), merge_sort(right_arr))
  end
end

def merge_arrays(left_arr, right_arr)
  merged_arrays = []

  left_arr.each do |left_num|
    right_arr.each do |right_num|
      if left_num >= right_num
        merged_arrays << right_arr.shift
      end
    end
    merged_arrays << left_num
  end

  merged_arrays += right_arr
end

pp "Sorted Array:   #{merge_sort(arr)}"
