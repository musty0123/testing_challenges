require 'grammar_checker'

RSpec.describe "grammar_checker method" do
    it "takes the string 'super hungry boy' and returns 'BAD GRAMMAR'" do
        result = grammar_checker('super hungry boy')
        expect(result).to eq 'BAD GRAMMAR'
    end
    it "takes the string 'I am hungry sir' and returns 'BAD GRAMMAR'" do 
        result = grammar_checker('I am hungry sir')
        expect(result).to eq 'BAD GRAMMAR'
    end
    it "takes the string 'i am hungry sir.' and returns 'BAD GRAMMAR'" do 
        result = grammar_checker('i am hungry sir.')
        expect(result).to eq 'BAD GRAMMAR'
    end
    it "takes the string 'I am hungry sir.' and returns 'Correct'" do 
        result = grammar_checker('I am hungry sir.')
        expect(result).to eq 'Correct !'
    end

end