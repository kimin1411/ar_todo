require_relative '../models/task'

class TasksView < ActiveRecord::Base

  def self.show
    Task.all.each do |title|
      puts "#{title.id} #{title.todo} #{title.status == "false" ? "[ ]" : "[done]"}"
      # if title.status = "false"
      # puts "#{title.id} #{title.todo} [  ]"
      # else
      # puts "#{title.id} #{title.todo} [Done]"
      # end
    end
  end

end