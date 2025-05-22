class User
  attr_accessor :name

  def self.hello_class
    puts "Hello, class!"
  end

  def hello
    puts "Hello, #{self.name}!"   # selfを付けることで、クラス内のメソッドを呼び出すことができる（nameのゲッター）
    # puts "Hello, #{@name}!" と同じ
    
    # クラスメソッドをインスタンスメソッドから呼び出す
    self.class.hello_class
  end
end