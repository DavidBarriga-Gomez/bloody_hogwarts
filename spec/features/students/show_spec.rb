require 'rails_helper'

RSpec.describe 'As A Visitor', type: :feature do
  before(:each) do
    @david = Student.create!(name: 'David', age: 26, house: "Ryan's House")
    @scott = Student.create!(name: 'Scott', age: 27, house: "Also Ryan's House")

    @module_1 = Course.create!(name: 'Module 1')
    @module_2 = Course.create!(name: 'Module 2')
    @module_3 = Course.create!(name: 'Module 3')
    @module_4 = Course.create!(name: 'Module 4')

    @module_1_d = StudentCourse.create!(course_id: @module_1.id, student_id: @david.id )
    @module_2_d = StudentCourse.create!(course_id: @module_2.id, student_id: @david.id )

    @module_1_s = StudentCourse.create!(course_id: @module_1.id, student_id: @scott.id )
    @module_2_s = StudentCourse.create!(course_id: @module_2.id, student_id: @scott.id )
    @module_1_s = StudentCourse.create!(course_id: @module_3.id, student_id: @scott.id )
    @module_2_s = StudentCourse.create!(course_id: @module_4.id, student_id: @scott.id )
  end

  it 'When i visit student show page, /students/:student_id I see a list of all their courses' do
    visit "/students/#{@david.id}"

    expect(page).to have_content(@module_1.name)
    expect(page).to have_content(@module_2.name)

    visit "/students/#{@scott.id}"

    expect(page).to have_content(@module_1.name)
    expect(page).to have_content(@module_2.name)
    expect(page).to have_content(@module_3.name)
    expect(page).to have_content(@module_4.name)
  end
end
