range1 = 1..5     # 1以上5以下
range2 = 1...5    # 1以上5未満
_range3 = 'a'..'e' # 'a'以上'e'以下

puts range1.class       # Range
puts range1.include?(5) # true
puts range2.include?(5) # false

numbers = [1, 2, 3, 4, 5, 6]
puts numbers[1..3]   # [2, 3, 4]
puts numbers[1...3]  # [2, 3]

# Rangeオブジェクトや判定ロジックに便利

puts range1.to_a    # [1, 2, 3, 4, 5]
puts [*range1]      # [1, 2, 3, 4, 5]