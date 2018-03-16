RSpec.describe 'Model Test' do
  before(:each) do
    Comedian.create(name: 'Odin', age: 1000)
    Comedian.create(name: 'Shrek', age: 200)
  end

  describe 'Class Methods' do
    describe '.total_age' do
      it 'returns average age for all comedians' do
        expect(Comedian.total_age).to eq(1200)
      end
    end

    describe '.average age' do
      it 'returns average age for all comedians' do
        expect(Comedian.average_age).to eq(600)
      end
    end
  end
end
