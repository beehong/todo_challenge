class TaskMethods

	def self.list
		# Task.all.each_with_index do |task,index|
		# p "#{index+1}  #{description} #{status}"
		
		puts " no    description                       status"
		puts "...   ............                      ......."
		Task.all.each_with_index do |s,index|
		puts "#{(index+1).to_s.ljust(5)} | #{s.Description.to_s.ljust(30)} | #{s.Status.to_s.ljust(10)}"
	    end
	end

	def self.add(description,status)
		task = Task.create(Description: description, Status: status)
			p "Added #{description} to your ToDo list"
			p "#{status}"
		task.save
		self.list
	end

	def self.update(index,description,status)
		# task = Task.find("#{id}")
		# task.update(id: id, Description: description, Status: status)
		# task.save

		# list = []
		# sample = Task.all
		# 	sample.each do |task|
		# 		list<<task
		# 	end

		index = index.to_i

		if index <= Task.all.length
			task = Task.all[index-1]
			if description== nil && status == nil
				p "Nothing updated"
			else
				task.update(Description: description, Status:status)
				p "Task #{index} updated"
				self.list
			end
		else
			p "Task #{index} is not found. Are you sure that this is the right task number?"
		end
	end
					

	# 	Task.all.each do |x|
	# 		index = index.to_i
	# 		if index == x.index
	# 			x.update(index: index, Description: description, Status: status)
	# 			x.save
	# 			p "Task number #{index} has been updated"
	# 			return true
	# 		end
	# 	end

	# 	p "Task number #{index} is not found. Are you sure that this is right task number?"
	# 	return false
	# end
        
		
	

	def self.remove(index)
	# list = []
	# sample = Task.all
	# 	sample.each do |task|
	# 		list<<task
	# 	end

	index = index.to_i
	if index<=Task.all.length
		del = Task.all[index-1]
		del.delete
		p "Task #{index} deleted"
		self.list
	else
		p "Task #{index} is not found. Are you sure that this is the right number task?"
	end
end
	# task = Task.all
	# 	task.each do |x|
	# 		if description == x.Description
	# 			x.delete
	# 			p "Task number #{index} is deleted"
	# 			return true
	# 		end
	# 	end
	# 		p "Task number #{index} is not found. Are you sure that this is right task number?"
	# 		return false
	# end

	
		


	
end
