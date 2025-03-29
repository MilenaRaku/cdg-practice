 STUDENTS_LIST = 'students.txt'
 BUFFER = 'buffer.txt'

    def index #Вывод всех строк
      File.foreach(STUDENTS_LIST){|student| puts student}
    end

    def find(id) #Вывод строки
        student_name = nil
      File.foreach(STUDENTS_LIST).with_index do |student, index|
         if index = id
            student_name = student.chomp
            break
         end
        end
        puts " #{id}: #{student_name}"
    end 

    def where(name) #Ввод номера строки по указанной фамилии
        student_id = nil
      File.foreach(STUDENTS_LIST).with_index do |student, index|
        student_id = index if student.downcase.include?(name.downcase)
      end
      puts "#{name}: #{student_id}"
    end

    def update(id, name) #Обновление строки 
      file = File.open(BUFFER, 'w')
      File.foreach(STUDENTS_LIST).with_index do |student, index|
        file.puts(id == index ? name : student)
      end

      file.close
      File.write(STUDENTS_LIST, File.read(BUFFER))
    end

    def delete(id) #Удаление строки
        File.open(BUFFER, 'w') do |file|
        File.foreach(STUDENTS_LIST).with_index do |student, index|
            file.puts(student) unless index == id
          end
        end

        
        File.write(STUDENTS_LIST, File.read(BUFFER))
    end

    def create(name) # Добавление строки
       File.open(STUDENTS_LIST, 'a') do |file|
       file.puts(name)
       end
    end
  
    #index
    #puts find(0)
    #puts where('Петров')
    #puts update(0, 'Орлова Мария')
    #puts delete(2)
    #puts create('Валеева Камила')