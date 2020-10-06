# write a simple tip calculator
# the program should prompt for a bill amount and a tip rate
# the program mush compute the tip and then display both the tip
# and the total amount of the bill
# - input 2 strings
# - output 2 floats

def is_num?(str)
  str.to_f.to_s == str || str.to_i.to_s == str
end

def get_bill
  bill = ''
  loop do
    puts "What is the bill?"
    bill = gets.chomp
    break if is_num?(bill)
    puts "That doesn't look quite right"
  end
  bill
end

def get_tip
  tip = ''
  loop do
    puts "What is the tip percentage?"
    tip = gets.chomp
    break if is_num?(tip)
    puts "That doesn't look quite right"
  end
  tip
end

def calculate_tip(bill, tip)
  (bill.to_f * (tip.to_f / 100)).round(2)
end

def calculate_total(bill, tip_percent)
  (bill.to_f + calculate_tip(bill, tip_percent)).round(2)
end

def print_total(bill, tip)
  puts "The tip is $#{calculate_tip(bill, tip)}"
  puts "The total is $#{calculate_total(bill, tip)}"
end

bill = get_bill
tip = get_tip
print_total(bill, tip)