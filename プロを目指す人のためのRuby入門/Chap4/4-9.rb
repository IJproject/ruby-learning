# 範囲指定（片端指定ができる）
numbers = [1, 2, 3, 4, 5, 6]
numbers[2..]     # [3, 4, 5, 6]
numbers[2..nil]  # [3, 4, 5, 6]
numbers[..2]     # [1, 2, 3]
numbers[nil..2]  # [1, 2, 3]