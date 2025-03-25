def process_word(word)
   
    if word.downcase.end_with?("cs")
      # Если заканчивается на "CS", выводим 2 в степени длины слова
      result = 2 ** word.length
      puts result
    else
      # Если не заканчивается на "CS", выводим слово задом наперед
      reversed_word = word.reverse
      puts reversed_word
    end
  end
  
  
  puts "Введите слово:"
  word = gets.chomp
  
  
  process_word(word)