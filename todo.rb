# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

def execute_todo

command = ARGV[0]

case command
when'add'
	description = ARGV[1]
	status = ARGV[2]
	TaskMethods.add(description,status)

	#add method
when 'list'
	TaskMethods.list

when 'update'
	index = ARGV[1].to_i
	description = ARGV[2]
	status = ARGV[3]
	TaskMethods.update(index,description,status)
	
when 'remove'
	index = ARGV[1]
	TaskMethods.remove(index)

end

end

execute_todo

