module Greeting
  def greet
    puts "Hello, world!"
  end

  private
  
  def introduce(name)
    puts "My name is #{name}."
  end
end

class User
  include Greeting
end

# モジュールの有無を確認するコマンド
puts User.include?(Greeting)   # true
puts Product.included_modules  # [Greeting, Kernel]
user = User.new
puts user.is_a?(Greeting)      # true

# 便利な汎用モジュール（Enumerable, Comparable）
# Enumerableモジュール：繰り返し処理関連（map, selectなど）のメソッドが定義されたモジュール。include先で定義されたeachメソッドを使用する
# Comparableモジュール：比較演算子が定義されたモジュール。include先で定義された<=>メソッドを使用する

# Kernelモジュール：putsなどのような基本的メソッドが定義されたモジュールで、Objectクラスにincludeされている