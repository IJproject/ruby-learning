# メソッド名はスネークケースで定義する
# 先頭に「_」をつけた場合は、変数の時と同様
# 引数がない場合は、関数名の後の「()」を省略するのが一般的
def hello_world
  'Hello, World!'
end

# returnはメソッドを途中で抜けることを意図して使用されることが多い
def greeting(name)
  # 「nil?」は、オブジェクトがnilの時にtrueを返すメソッド
  return 'お前は誰だ' if name.nil?
  "Hello, #{name}!"
end
