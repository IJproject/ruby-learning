# yieldにブロックを渡す
def greeting
  # ブロックが渡されている場合は、ブロックを実行
  if block_given?
    yield("Japan")
  else
    puts "No block given"
  end
end

# yieldにブロックの内容が渡る
greeting do
  puts "Hello, World!"
end

# 引数も渡せる
greeting do |text|
  puts "Hello, #{text}!"
end


# 引数として明示的にブロックを受け取る
def other_greeting(&block)
  puts block.class  # Proc
  puts block.arity  # 1
  unless block.nil?
    block.call("Japan")
  else
    puts "No block given"
  end
end

other_greeting do |text|
  puts "Hello, #{text}!"
end
