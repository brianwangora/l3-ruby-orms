require 'bundler'
Bundler.require

require_relative '../lib/student'

DB = { conn: SQLite3::Database.new("db/school.db") }

# RUN CODE FROM HERE

# CREATE TABLE
Student.create_table

# Create a new student
esther = Student.new(name: "Esther", age: 18)
chris = Student.new(name: "Chris", age: 25)

# add student to database
esther.add_to_db
chris.add_to_db

pp Student.show_all

esther.name = "Water Bottle"
esther.age =21
esther.update_student

pp Student.show_all

esther.delete_student

pp Student.show_all