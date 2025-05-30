# moduleではクラスと同じように特異メソッドを定義できる（self.）

# モジュール関数
# モジュール内のメソッドを特異メソッドとしてミックスインして使えるような関数
# デフォルトで、privateメソッドとして定義される（ミックスイン先）
module Greeting
  module_function  # 以下、モジュール関数として定義する

  def greet
    puts "Hello, world!"
  end

  def introduce(name)
    puts "My name is #{name}."
  end

  # module_function :introduce   # モジュール関数として公開するメソッドを選択することもできる
end 

class User
  include Greeting
end

# Mathモジュールなどの汎用モジュールをミックスインしてクラス定義することも面白そうだね