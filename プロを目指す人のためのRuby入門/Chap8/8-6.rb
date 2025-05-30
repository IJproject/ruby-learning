# 基本的な名前空間の命名は、ディレクトリ構成と合わせることが多い

module Time
  class Second
    def initialize(second)
      puts "Second: #{second}"
    end
  end
end

# 入れ子なしで定義できる
class Time::Minute
  def initialize(minute)
    puts "Minute: #{minute}"
  end
end

Time::Second.new(30)    # Second: 30