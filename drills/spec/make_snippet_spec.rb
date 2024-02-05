require 'make_snippet' 

RSpec.describe "make_snippet method" do
    it "takes 'four' and returns four" do 
        result = make_snippet('four')
        expect(result).to eq 'four'
    end
    it "takes 'nice to have' and returns four" do
        result = make_snippet('nice to have')
        expect(result).to eq 'nice ...' 
    end 
end