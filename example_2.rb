student_flag = 0
class_hash = {}

loop do
  puts "You want to add more student?"
  puts "1. Yes"
  puts "2. No"
  student_flag = gets.chomp || ""
  if student_flag.to_i == 1
    puts "Please input name"
    student_name = gets.chomp || "no_name"
    class_hash[student_name] = {}
    puts "Please input math score"
    math_score = (gets.chomp || "").to_i
    class_hash[student_name][:toan] = math_score
    puts "Please input literature score"
    literature_score = (gets.chomp || "").to_i
    class_hash[student_name][:van] = literature_score
    puts "Please input english score"
    english_score = (gets.chomp || "").to_i
    class_hash[student_name][:anh] = english_score
    class_hash[student_name][:avg] = (math_score+literature_score+english_score)/3.0
  elsif student_flag.to_i == 2
    break
  end
end

def max_avg(hash)
  hash.max_by{|k, v| v[:avg]}
end

print("1. List student: #{class_hash}\n")
print("2. Max avg in class: #{max_avg(class_hash)[1][:avg]}\n")
print("2.2. Information of student have max avg: #{max_avg(class_hash)}\n")
print("3. Name of student have max avg: #{max_avg(class_hash)[0]}\n")
