module FizzBuzz
  RULES = {
    RULE_3: FizzBuzzRules::Rule.new(3) { |list| list << 'Fizz' },
    RULE_13: FizzBuzzRules::Rule.new(13) { |list| list << 'Fezz' },
    RULE_5: FizzBuzzRules::Rule.new(5) { |list| list << 'Buzz' },
    RULE_7: FizzBuzzRules::Rule.new(7) { |list| list << 'Bang' },
    RULE_11: FizzBuzzRules::Rule.new(11) { ["Bong"] },
    RULE_17: FizzBuzzRules::Rule.new(17) { |list| list.reverse }
  }
end
