require_relative 'config/application'
require_relative 'app/controllers/tasks_controller'
require_relative 'app/views/tasks_view'
# puts "Put your application code in #{File.expand_path(__FILE__)}"
# AMBIL COMMAND DARI USER DAN POTONG  IKUT KESESUAIAN
ARGV
command = ARGV.shift
todo = ARGV


# BUAT CASE SELECTION UNTUK COMMAND DAN TERUS PANGIL METHOD DARI TASK CONTROLLER

case command
 when  'add'
  # pangil method dari taskscontroller
  TasksController.add(todo)

 when 'delete'
  TasksController.delete(todo[0])

 when 'list'
  TasksView.show

 when 'done'
  TasksController.update(todo[0])

end

