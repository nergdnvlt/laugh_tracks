RSpec.describe 'a user sees comedians page' do
  before(:each) do
    Comedian.create(name: 'Odin', age: 1000)
    Comedian.create(name: 'Shrek', age: 200)
  end

  context 'visit /comedians to see comedians' do
    it 'they see all the comedians' do
      visit '/comedians'
      expect(page).to have_content('Odin')
      expect(page).to have_content('Shrek')
    end
  end

  context 'visit /comedians to see the average age' do
    it 'they see the average age' do
      visit '/comedians'
      expect(page).to have_content(600)
    end
  end

  context 'visit /comedians to and enter params' do
    it 'they sort find by age' do
      visit '/comedians?age=1000'
      expect(page).to have_content('Odin')
    end
  end
end
