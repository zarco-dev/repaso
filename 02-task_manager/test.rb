require "sqlite3"
require_relative './models/task'

DB = SQLite3::Database.new('db/tasks.db')
DB.results_as_hash = true

# READ (One)
# task = Task.find(1)
# puts task.title

# CREATE
# task = Task.new(title: "test2", description: "test3", done: 0)
# task.save

# UPDATE
# task = Task.find(3)
# # task.done = false
# task.title = "SEBAS"
# task.save

# READ (All)
# Task.all.each do |task|
#   puts "#{task.id}. [#{task.done ? 'X' : ' ' }] #{task.title}"
# end

# DESTROY
task = Task.find(2)
task.destroy
