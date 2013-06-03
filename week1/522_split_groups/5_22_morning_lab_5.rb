
def grouping(students)
  puts "What group size would you like?"
  group_size = gets.chomp.to_i


  new_group = Array.new(students.length)

  students.shuffle!.each_slice(group_size) do |a|

    new_group.push(a)
   

  end

  y = 0
  while y < (students.length/group_size + 1)
    if new_group[y].length < group_size
      new_group[y-1].push(new_group[y].pop(new_group.length))
    end
    y=y+1

  end

  counter = 0
  while counter<students.length/group_size
    puts "Group Number #{counter+1}: "
    p new_group[counter]
    counter = counter+1
  end

end

students = ["Dylan", "David", "Djohny", "Remy", "Lane", "Jimmy", "Thiago", "Isabel", "Alex", "Fransico", "Bernard", "Tricia", "Chris", "Michael", "Lee", "Tanay", "Ryan", "Andrew", "Frank", "Sugalya", "MikeR", "George", "MikeS", "David", "Jamie"]
grouping(students)
