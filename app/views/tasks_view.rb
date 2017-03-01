class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

  def index(tasks)
    tasks.each_with_index do |task, index|  
      if task.complete == true
        show = "X" 
      else
        show = " "
      end
      puts "#{index + 1}. [#{show}] #{tasks.task}" 
    end 
  
  end

  def create
    puts "Creaste una #{task} nueva"
  end

  def delete
    puts "Eliminaste una #{task} de la lista"
  end

  def update
    puts "Actualizaste una #{task} de la lista "
  end

	def error
    puts "failure error"
	end

end



