def foobar(one, two)  
    if one == 20 || two == 20
        puts "#{two}"
    else 
        puts "Сумма чисел: #{one+two}"
    end
end

print "Ведите первое числононно: "
number_1 = gets.to_i
print "Ведите второе число: "
number_2 = gets.to_i

foobar(number_1, number_2)
