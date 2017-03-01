class TasksController

  def initialize(args)
    @view = TasksView.new
    p args
    user = args    
  end

  def index(args)
    if args[0] === "index"
      index
    elsif args[0] == "add"
      add(task)
    elsif args[0] == "delete"
      delete(task)
    elsif args[0] == "complete"
      complete(task) 
    else
      @view.error
    end               
  end

   
  def add(task)
    Task.create(task: task)
    @view.create(task)    
  end

  
  def delete(input)
    Task.all.each_with_index do |task, index|
      if input.to_i == index + 1
        var = task.destroy
        @view.delete(var.task)  
      end
    end
  end

  def complete(input)
    Task.all.each_with_index do |task, index|
      if input.to_i == index + 1
         task.save(complete: true) # metodo activerecord .save para 'update'
        #@view.update(task.task)
      end    
    end
  end

  def error
    @view.error     
  end

end

#TaskController.save


