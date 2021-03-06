puts "Введите сложность игры от 1 до 10, чтобы сыграть в игру 'Больше-меньше'."
level = gets.chomp.to_i
if level < 1 && level > 7
  puts "Это так не работает =)"
  exit
else
  puts "Не сложно? Дерзайте, конечно =)" if level > 6
  lev1 = 10 ** (level - 1)
  lev2 = 10 ** (level)
  safe_code = rand(lev1..lev2)
end
n = 1
puts "Отгадайте код сейфа из цифр в количестве #{level}."
selection_code = gets.chomp.to_i
while safe_code != selection_code && selection_code != 0
  puts "Подсказка №#{n}."
  if safe_code > selection_code
    puts "Не, нужно больше"
  else
    puts "Не, нужно меньше"
  end
  n += 1
  puts "Отгадайте код снова или введите '0'"
  selection_code = gets.chomp.to_i
end

if selection_code == 0
  puts "Вот и правильно, займитесь чем-нибудь другим =)"
  puts "Правильный ответ: #{safe_code}."
else
  puts "Поздравляем! Вы открыли сейф c #{n} попытки!"
end
