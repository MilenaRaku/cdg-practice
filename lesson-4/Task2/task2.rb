INFORMATION_LIST = 'students.txt'
RESULTS = 'results.txt'

def age_search(age)
  File.open(RESULTS, 'a') do |result_file| 
    found = false
   
    File.foreach(INFORMATION_LIST) do |student|
      name, surname, student_age = student.chomp.split

     
      if student_age.to_i == age
        result_file.puts(student) 
        found = true 
      end
    end
    
    found 
  end
end

def display_results
  puts "Содержимое файла #{RESULTS}:"
  File.foreach(RESULTS) { |student| puts student }
end

loop do
  puts "Введите возраст (или -1 для выхода): "
  age = gets.to_i

  if age == -1
   
    display_results
    break
  else
    
    age_search(age)
  end
end
