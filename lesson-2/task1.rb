def greeting(username, usersurname, age) 
  if age < 18
     puts "Привет, #{username} #{usersurname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
     else
     puts "Привет, #{username} #{usersurname}. Самое время заняться делом"
  end
end

puts "Введите ваше имя: "
name = gets.chomp
puts "Введите вашу фамилию: "
surname = gets.chomp
puts "Введите ваш возраст: "
age = gets.to_i

greeting(name, surname, age)
