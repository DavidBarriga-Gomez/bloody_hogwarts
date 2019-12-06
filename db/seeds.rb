# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Course.destroy_all
@david = Student.create!(name: 'David', age: 26, house: "Ryan's House")
@scott = Student.create!(name: 'Scott', age: 27, house: "Also Ryan's House")

@module_1_d = @david.courses.create!(name: 'Module 1')
@module_2_d = @david.courses.create!(name: 'Module 2')

@module_1_s = @scott.courses.create!(name: 'Module 1')
@module_2_s = @scott.courses.create!(name: 'Module 2')
@module_3_s = @scott.courses.create!(name: 'Module 3')
@module_4_s = @scott.courses.create!(name: 'Module 4')
