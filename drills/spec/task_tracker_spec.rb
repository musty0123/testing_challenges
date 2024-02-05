require 'task_tracker'

RSpec.describe 'task_tracker method' do 
# when task = nil or '', then it returns error message 'no task selected'
    it "takes string '' and returns 'No task selected'" do
        expect {task_tracker('')}.to raise_error 'No task selected'
    end
    # when task does not have #TODO, then return 'This is not a task'
    it "takes string 'do this task #TODO' returns, 'You must complete this task'" do 
        result = task_tracker('Do this task #TODO')
        expect(result).to eq 'You must complete this task'
    end
    # when task has #TODO, return 'you must do this task'
    it "takes string 'do this task' returns, 'Not a task #TODO" do 
        result = task_tracker('Do this task')
        expect(result).to eq 'Not a task'
    end
    #lowercase #todo
    it "takes string 'do this task #TODO' returns, 'You must complete this task'" do 
        result = task_tracker('Do this task #todo')
        expect(result).to eq 'You must complete this task'
    end
    

end
