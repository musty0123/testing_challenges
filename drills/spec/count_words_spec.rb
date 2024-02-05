require 'count_words'

RSpec.describe "count_words method" do 
    it "takes string 'Hello you are counting this string' and returns 6" do
        result = count_words('Hello you are counting this string')
        expect(result).to eq 6
    end
end