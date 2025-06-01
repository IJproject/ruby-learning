# 配列のパターンマッチ
birthday_list = [
  [2002],
  [2002, 8],
  [2002, 8, 27],
]
birthday_list.map do |date|
  case date
    in [y]   # whenではない
      Date.new(y, 1, 1)
    in [y, m]
      Date.new(y, m, 1)
    in [y, m, d]
      Date.new(y, m, d)
    else
      nil
  end
end

# ハッシュのパターンマッチ
people = [
  { name: "Bob", age: 25 },
  { name: "Alice", city: "Tokyo" },
  { name: "Charlie", age: 35, city: "Osaka" },
]
people.each do |person|
  case person
    in {name:, age:, city:}   # in {name:name, age:age, city:city} と同じ意味
      puts "#{name} is #{age} years old and lives in #{city}."
    in {name:, age:}
      puts "#{name} is #{age} years old."
    in {name:, city:}
      puts "#{name} lives in #{city}."
    else
      puts "Who are you?"
  end
end
