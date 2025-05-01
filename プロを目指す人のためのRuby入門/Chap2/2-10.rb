# &&や||の評価は式全体の真偽値が確定したタイミングで終了（短絡評価、ショートサーキット）し、最後の値を返す
puts 1 && 2 && 3 #=> 3
puts 1 && 2 || 3 #=> 2
puts 1 || 2 || 3 #=> 1

# and,or,notは優先順位が低く、動作イメージが若干異なるので注意
# 基本的には、&&,||,!で事足りるかな

# 真偽値が偽の場合だけ処理させるunless
# elsunless的な構文はないので注意
a = false
b = 1

unless a
  puts "aは偽です"
else
  puts "aは真です"
end

unless b == 0 then
  puts "bは0ではありません"
end

# case文で条件分岐を表現することが可能
# breakなどは書かなくても、どこかの処理に入れば終了する
country = 'Japan'
greeting = 
  case country
  when 'USA', 'アメリカ'
    'Hello'
  when 'Japan', '日本'
    'こんにちは'
  else 
    '???'
  end
puts greeting  # こんにちは

# 三項演算子が使用可能
score = 70
is_pass = score >= 60 ? true : false
puts is_pass  # true 