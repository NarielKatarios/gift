puts "Введите сложность игры от 1 до 10, чтобы подобрать код от сейфа с подарками ..."
level = gets.chomp.to_i
if level < 1 && level > 10
  puts "Это так не работает =)"
  exit
else
  puts "Не сложно? Дерзайте, конечно =)" if level > 6
  safe_code = Array.new(level) { rand 10 }
end
n = 1
puts "Отгадайте код сейфа из цифр в количестве #{level}."
selection_code = gets.chomp.split('').map(&:to_i)
# p safe_code
while safe_code != selection_code && selection_code != [0]

  puts "Подсказка №#{n}."
  difference = (safe_code.each_with_index.map { |x, i| selection_code[i] == x })
  # p difference
  difference = difference.select { |x| x }
  puts "#{(selection_code & safe_code).size} цифр угадано"
  puts "Из них #{difference.size} на своих местах."
  n += 1
  puts "Отгадайте код снова или введите '0', чтобы сдаться."
  selection_code = gets.chomp.split('').map(&:to_i)
end

if selection_code == [0]
  puts "Вот и правильно, займитесь чем-нибудь другим =)"
  puts "Правильный ответ: #{safe_code}."
else
  puts "Поздравляем! Вы открыли сейф c #{n} попытки!"
end
