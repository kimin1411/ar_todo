require_relative '../models/task'

class TasksController < ActiveRecord::Base

  def self.add(todo)
    Task.create(todo: todo.join(" "))
    # TasksView.show
    puts "#{todo.join(" ")} successfully added"
  end

  def self.delete(todo)
    # user = Task.find(:id)
    # user.destroy
    task = Task.find(todo)
    task.destroy
    # TasksView.show
    puts "Task number #{todo} successfully deleted"
  end

  def self.list
    TasksView.show
  end

  def self.update(todo)
    task = Task.find(todo)
    task.update(status: "true")
  end

end