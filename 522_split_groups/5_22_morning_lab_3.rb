students = ["Dylan", "David", "Djohny", "Remy", "Lane", "Jimmy", "Thiago", "Isabel", "Alex", "Fransico", "Bernard", "Tricia", "Chris", "Michael", "Lee", "Tanay", "Ryan", "Andrew", "Frank", "Sugalya", "MikeR", "George", "MikeS", "David", "Jamie"]

def grouping(students)
puts "What group size would you like?"
group_size = gets.chomp.to_i

x = 0
students.shuffle!.each_slice(group_size) do |a| 
   
    x += 1
	print "Group Number #{x}: "
	 p a
	end 
end 

grouping(students)