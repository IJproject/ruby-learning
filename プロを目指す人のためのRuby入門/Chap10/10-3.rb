# Procクラスのインスタンスを作成する
add_proc = Proc.new { |a, b| a + b }
puts add_proc.class       # Proc
puts add_proc.call(2, 3)  # 5

# Procインスタンスを通常の引数として渡すことができる
def add(a, b, proc)
  proc.call(a, b)
end
add(10, 20, add_proc)   # 30

# Procよりも引数の個数に対して制約の強いラムダ
add_lambda = lambda { |a, b| a + b }
# 以下のように定義することも可能
# add_lambda = ->(a, b) { a + b }
puts add_lambda.call(2, 3)    # 5
puts add_lambda.call(2, 3, 4) # ArgumentError: wrong number of arguments (given 3, expected 2)
