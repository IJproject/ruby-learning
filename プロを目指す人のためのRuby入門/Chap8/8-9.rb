module Greeting
  def hello
    puts "Hello, world!"
  end
end

class User
  # インスタンスメソッドとしてモジュールのプレペンド（ミックスイン）
  # プレペンドすると、モジュールのメソッドがクラスのメソッドよりも優先されるので、非破壊的な上書きが可能
  prepend Greeting  
end

# メソッド探索の順番を確認する
puts User.ancestors  # [User, Object, Kernel, BasicObject]

# 有効範囲を指定するrefinements
module Sample
  refine String do   # Stringクラスに対して適用する
    def shuffle
      chars.shuffle.join
    end
  end
end

class Figure
  # Sampleモジュールのrefinementsを有効にする
  # 有効範囲はFigureクラスの中だけ
  # トップレベルで定義すれば、ファイル内全体で有効になる
  using Sample       
end