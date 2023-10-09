require_relative '../part_01/exercices'
require_relative '../part_01/exercices_loop'

describe 'exercise 57' do

  describe 'exercice 1 - say hello' do

    it 'say hello Antho' do
      expect(say_hello("Antho")).to eq("Hello, Antho, nice to meet you")
    end
  end

  describe 'exercice 2 - count characters' do

    it 'count characters for J string must be 1' do
      expect(show_count_characters("J")).to eq("J has 1 characters")
    end

    it 'count characters for Ho string must be 2' do
      expect(show_count_characters("Ho")).to eq("Ho has 2 characters")
    end
  end

  describe 'exercice 3 - quote' do

    it 'quote sentence of one author' do
      expect(author_said("me", "Hello")).to eq("me said \"Hello\"")
    end
  end
  describe 'exercice 5 - math' do

    it 'format result operations' do
      expected_line1 = "10 + 5 = 15\n"
      expected_line2 = "10 - 5 = 5\n"
      expected_line3 = "10 * 5 = 50\n"
      expected_line4 = "10 / 5 = 2"
      expect(show_math('10', '5')).to eq(expected_line1 +
                                           expected_line2 +
                                           expected_line3 +
                                           expected_line4)
    end

    it 'math with 6 and 2' do
      expected_line1 = "6 + 2 = 8\n"
      expected_line2 = "6 - 2 = 4\n"
      expected_line3 = "6 * 2 = 12\n"
      expected_line4 = "6 / 2 = 3"
      expect(show_math('6', '2')).to eq(expected_line1 +
                                          expected_line2 +
                                          expected_line3 +
                                          expected_line4)
    end

    it 'math invalid input on second operand' do
      expect(show_math('6', 'b')).to eq('Invalid input')
    end

    it 'math invalid input on first operand' do
      expect(show_math('a', '5')).to eq('Invalid input')
    end

    it 'check is not a number' do
      expect(check_number('a')).to eq(:not_a_number)
    end

    it 'check is a number' do
      expect(check_number('1')).to eq(:a_number)
    end
  end
  describe 'exercice 28 - loop' do
    class FakeInput
      attr_reader :called

      def initialize(numbers)
        @numbers = numbers
        @called = 0
      end

      def input
        @called += 1
        @numbers.shift
      end
    end

    it 'sum for an empty list' do
      a = []
      sut = sum_of(a)
      expect(sut).to eq(0)
    end

    it 'sum for on an empty [1]' do
      a = [1]
      sut = sum_of(a)
      expect(sut).to eq(1)
    end

    it 'sum for on an empty [1, 2, 3]' do
      a = [1, 2, 3]
      sut = sum_of(a)
      expect(sut).to eq(6)
    end
    it 'input only one number' do
      fake_input = FakeInput.new(['1'])
      request = RequestNumbers.new(fake_input)

      sut = request.numbers(1)

      expect(sut).to eq([1])
      expect(fake_input.called).to eq(1)
    end

    it 'input two numbers' do
      fake_input = FakeInput.new(['1', '2'])
      request = RequestNumbers.new(fake_input)

      sut = request.numbers(2)

      expect(sut).to eq([1, 2])
      expect(fake_input.called).to eq(2)
    end
    it 'filter invalid input which are not numbers' do
      fake_input = FakeInput.new(['1', 'a'])
      request = RequestNumbers.new(fake_input)

      sut = request.numbers(2)

      expect(sut).to eq([1])
      expect(fake_input.called).to eq(2)
    end

  end
end

