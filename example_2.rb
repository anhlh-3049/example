student_flag = 0

class ClassRoom
  @@class_lists = {}

  def initialize(name="noname", math_score, literature_score, english_score)
    avg = (math_score+literature_score+english_score)/3.0
    @@class_lists[name] = {toan: math_score, van: literature_score, anh: english_score, avg: avg}
  end


  class << self
    def class_lists
      @@class_lists
    end


    def student_max_avg
      @@class_lists.max_by{|k, v| v[:avg]}
    end

    def max_avg
      student_max_avg[1][:avg]
    end

    def student_name_have_max_avg
      student_max_avg[0]
    end
  end
end

loop do
  puts "You want to add more student?"
  puts "1. Yes"
  puts "2. No"
  student_flag = gets.chomp || ""
  if student_flag.to_i == 1
    puts "Please input name"
    student_name = gets.chomp || "no_name"
    puts "Please input math score"
    math_score = (gets.chomp || "").to_i
    puts "Please input literature score"
    literature_score = (gets.chomp || "").to_i
    puts "Please input english score"
    english_score = (gets.chomp || "").to_i

    ClassRoom.new(student_name, math_score, literature_score, english_score)
  elsif student_flag.to_i == 2
    break
  end
end

print("=======================Result==========================\n")
print("1. List student: #{ClassRoom.class_lists}\n")
print("2. Max avg in class: #{ClassRoom.max_avg}\n")
print("2.2. Information of student have max avg: #{ClassRoom.student_max_avg}\n")
print("3. Name of student have max avg: #{ClassRoom.student_name_have_max_avg}\n")
