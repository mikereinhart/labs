students = ["Dylan", "David", "Djohny", "Remy", "Lane", "Jimmy", "Thiago", "Isabel", "Alex", "Fransico", "Bernard", "Tricia", "Chris", "Michael", "Lee", "Tanay", "Ryan", "Andrew", "Frank", "Sugalya", "MikeR", "George", "MikeS", "David", "Jamie"]
students.shuffle!.each_slice(2) do |a|
	p a
end