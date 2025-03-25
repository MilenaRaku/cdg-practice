def get_pokemon_data
  puts "Сколько покемонов вы хотите добавить?"
  count = gets.chomp.to_i

  if count <= 0
    puts "Пожалуйста, введите положительное число."
    return []
  end
  
  pokemon_array = []

  count.times do
    puts "Введите имя покемона:"
    name = gets.chomp

    puts "Введите цвет покемона:"
    color = gets.chomp

    # Создаем хэш для каждого покемона и добавляем его в массив
    pokemon_array << { name: name, color: color }
  end

  pokemon_array
end

puts get_pokemon_data()