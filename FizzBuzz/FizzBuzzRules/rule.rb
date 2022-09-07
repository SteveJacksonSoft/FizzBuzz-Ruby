module FizzBuzz
  module FizzBuzzRules
    class Rule
      def initialize(number_to_match, &action)
        @number_to_match = number_to_match
        @action = action
      end

      def get_updated_output_word_list_if_applies(current_number, list)
        current_number % @number_to_match == 0 ? @action.call(list) : list
      end
    end
  end
end
