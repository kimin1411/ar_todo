require 'faker'
require_relative '../app/models/task'

for x in 0..3
 todo = Faker::Lorem.sentence
 status = "false"
 Task.create(todo: todo, status: status)
end
