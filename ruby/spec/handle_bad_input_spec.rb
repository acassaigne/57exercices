require_relative '../part_01/exercices_loop'

describe 'exercise 57' do

  describe 'exercice 59 - Handle bad input' do

    it 'return on investment ' do

      sut = return_on_investment(4)

      expect(sut).to eq(18)
    end
  end
end
