class Product
  # クラスインスタンス変数
  # クラスメソッドからアクセスできるが、インスタンスメソッドからはアクセスできない
  @name = 'Product'

  # クラス変数
  # クラスメソッド、インスタンスメソッド両方からアクセスできる
  @@name = 'Product'

  # グローバル変数
  # プログラム全体からアクセスできる
  $name = 'Product'

  def self.name 
    puts @name     # Product
    puts @@name    # Product
  end

  def name 
    puts @name     # nil
    puts @@name    # Product
  end
end

puts $name    # Product