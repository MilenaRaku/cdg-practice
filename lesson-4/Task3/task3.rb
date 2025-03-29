BALANCE_LIST = 'balance.txt'

def reading_balance
    File.exist?(BALANCE_LIST)
    File.read(BALANCE_LIST).to_f
end

def write_balance(balance)
  File.open(BALANCE_LIST, 'w') { |file| file.write(balance) }
end

def operation
  balance = reading_balance

  puts "Ваш текущий баланс: #{balance}"
  
  loop do
    puts 'Выберите действие: Пополнение баланса(D); Вывод денежных средств(W); Текущий баланс(B); Выход(Q)'
    action = gets.chomp.upcase

    case action 
    when 'D'
      puts "Введите сумму для депозита: "
      amount = gets.to_f
      if amount <= 0
        puts "Ошибка: Сумма должна быть больше нуля."
      else
        balance += amount 
        puts "Баланс обновлен. Обновленный баланс: #{balance}"
      end

    when 'W'
      puts "Введите сумму для снятия:"
      amount = gets.to_f
      if amount <= 0 
        puts "Ошибка: Сумма должна быть больше нуля."
      elsif amount > balance 
        puts "Ошибка: Сумма снятия не может превышать текущий баланс."
      else 
        balance -= amount
        puts "Баланс обновлен. Обновленный баланс: #{balance}"
      end

    when 'B'
      puts "Ваш текущий баланс: #{balance}"

    when 'Q'
      write_balance(balance)
      puts "Баланс успешно сохранен."
      break 

    else 
      puts "Команда не найдена."
    end
  end
end

operation
