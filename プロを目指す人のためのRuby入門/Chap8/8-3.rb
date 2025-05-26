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
  include Greeting   # インスタンスメソッドとしてモジュールのインクルード（ミックスイン）
  extend Greeting    # クラスメソッドとしてモジュールのエクステンド（ミックスイン）
end

user = User.new
user.greet           # Hello, world!