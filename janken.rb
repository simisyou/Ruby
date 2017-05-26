#じゃんけんプログラム

def handname(hand)
  if hand == 0
    puts "gu"
  end
  if hand == 1
    puts "choki"
  end
  if hand == 2
    puts "pa"
  end
end

print "Rock:0,Scissors:1,Paper:2"
my_hand = gets.to_i
cpu_hand = Random.new
cpu_hand = rand(0..2)

#じゃんけんの法則性を利用した勝敗判定式
result = (my_hand - cpu_hand + 3) % 3

while result == 0
  puts "=========="
  puts "Drow!!"
  puts "=========="
  print "You:"
  handname(my_hand)
  print "Cpu:"
  handname(cpu_hand)
  puts "=========="
  my_hand = gets.to_i
  cpu_hand = Random.new
  cpu_hand = rand(0..2)
  result = (my_hand - cpu_hand + 3) % 3
end
if result == 1
  puts "=========="
  puts "You Lose.."
  puts "=========="
  print "You:"
  handname(my_hand)
  print "Cpu:"
  handname(cpu_hand)
  puts "=========="
end
if result == 2
  puts "========="
  puts "You Win!!"
  puts "========="

  print "You:"
  handname(my_hand)
  print "Cpu:"
  handname(cpu_hand)
  puts "========="
end
