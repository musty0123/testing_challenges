# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

def task_tracker(task)
   fail "No task selected" if task.split.length == 0

   if task.upcase!.include? "#TODO"
    return 'You must complete this task'

   else
    return 'Not a task'

   end
end

