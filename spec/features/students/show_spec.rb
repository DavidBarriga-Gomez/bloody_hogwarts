require 'rails_helper'

RSpec.describe 'As A Visitor', type: :feature do
  before(:each) do
    @david = Student.create!(name: 'David', age: 26, house: "Ryan's House")
    @scott = Student.create!(name: 'Scott', age: 27, house: "Also Ryan's House")

    @module_1_d = @david.courses.create!(name: 'Module 1')
    @module_2_d = @david.courses.create!(name: 'Module 2')

    @module_1_s = @scott.courses.create!(name: 'Module 1')
    @module_2_s = @scott.courses.create!(name: 'Module 2')
    @module_3_s = @scott.courses.create!(name: 'Module 3')
    @module_4_s = @scott.courses.create!(name: 'Module 4')
  end

  it 'When i visit student show page, /students/:student_id I see a list of all their courses' do
    visit "/students/#{@david.id}"

    expect(page).to have_content(@module_1_d.name)
    expect(page).to have_content(@module_2_d.name)

    visit "/students/#{@scott.id}"

    expect(page).to have_content(@module_1_s.name)
    expect(page).to have_content(@module_2_s.name)
    expect(page).to have_content(@module_3_s.name)
    expect(page).to have_content(@module_4_s.name)
  end
end
