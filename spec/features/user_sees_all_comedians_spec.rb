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

  # context 'visit /comedians to see the average age' do
  #   it 'they see the average age' do
  #     visit '/comedians'
  #     expect(page).to have_content('Odin')
  #     expect(page).to have_content('Shrek')
  #   end
  # end
end
