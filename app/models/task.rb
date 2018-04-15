class Task < ActiveRecord::Base
	validates_presence_of :Description,message:"Task can't be blank."
	validates_uniqueness_of :Description,message:"Task is already on the list"
end