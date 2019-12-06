require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  before(:each) do
    @david = Student.create!(name: 'David', age: 26, house: "Ryan's House")
    @scott = Student.create!(name: 'Scott', age: 27, house: "Also Ryan's House")
  end

  it 'When i visit student index page, /students I see all students with name, age, house' do
    visit '/students'

      expect(page).to have_content(@david.name)
      expect(page).to have_content(@david.age)
      expect(page).to have_content(@david.house)

      expect(page).to have_content(@scott.name)
      expect(page).to have_content(@scott.age)
      expect(page).to have_content(@scott.house)
  end

  it 'Shows the Average age of all students' do

  end
# As a visitor,
# When I visit '/students'
# I see the average age of all students.
#
# (e.g. "Average Age: 14.5")
end
