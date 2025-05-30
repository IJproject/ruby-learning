class Product
  DEFAULT_PRICE = 20
  PRIVATE_DEFAULT_PRICE = 10

  private_constant :PRIVATE_DEFAULT_PRICE   # 外部から参照できないようにする

  COLORS = [
    GREEN = 0,   # 定数定義自体が値を返すため
    RED = 1,     # COLORSは[0, 1, 2]のような配列になっている
    BLUE = 2,
  ]

  # ミュータブルな値（文字列、配列、ハッシュなど）の再代入を防ぐ
  TEST_COLOR = 'RED'.freeze
  TEST_COLORS = ['RED', 'GREEN'].map(&:freeze).freeze
end

puts Product::DEFAULT_PRICE   # 20
puts Product::COLORS          # [0, 1, 2]
puts Product::GREEN           # 0

Product::DEFAULT_PRICE = 30   # 定数は上書きできるが、あまり推奨されない
puts Product::DEFAULT_PRICE   # 30