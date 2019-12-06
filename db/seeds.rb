# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Course.destroy_all
StudentCourse.destroy_all
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
