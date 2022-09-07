module FizzBuzz
  class FizzBuzz
    def self.get_integers_from_user
      puts 'Enter the integers you\'d like to implement rules for separated by commas...'
      integer_regex = /\d+/

      gets&.scan(integer_regex).map { |string| string.to_i }
    end

    def self.get_rules_for_integers(integers_given)
      RULES.select { |key, _| integers_given.any? { |integer| key.to_s.index(integer.to_s) != nil } }
           .map { |_, value| value }
    end

    def self.get_rules_from_user
      integers_given = get_integers_from_user
      get_rules_for_integers(integers_given)
    end

    def self.get_output(number, rules)
      output_list = rules.inject([]) { |output_list, rule|
        rule.get_updated_output_word_list_if_applies(number, output_list) }

      output_list.size == 0 ? number.to_s : output_list.join
    end

    def self.fizzbuzz
      puts 'Welcome to FizzBuzz!'

      rules = get_rules_from_user

      @numbers = (1..100).to_a

      output_text = @numbers.map { |number|
        get_output(number, rules)
      }

      puts output_text
    end
  end
end
