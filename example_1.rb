arr=[]
(0..4).each_with_index do |item, i|
  puts "Enter value a[#{i}]"
  value = gets.chomp || ""
  arr << value.to_i
end

square = Proc.new{|item| item**2}

new_array = arr.map do |item|
  (item == 6 || item == 7) ? item : square[item]
end

print("1. Array: #{arr}\n")
print("2. Sum of array: #{arr.sum}\n")
print("3. Exponential of array: #{new_array}\n")
