require 'diaryentry'

RSpec.describe DiaryEntry do 
    it "returns '1984' as a string" do 
        diaryentry = DiaryEntry.new('1984', 'this is my reflection on 1984')
        result = diaryentry.title()
        expect(result).to eq '1984'
    end
    it "returns 'this is my reflection on 1984' as a string'" do
        diaryentry = DiaryEntry.new('1984', 'this is my reflection on 1984')
        result = diaryentry.contents()
        expect(result).to eq 'this is my reflection on 1984' 
    end
    it "counts contents and returns number of words" do
        diaryentry = DiaryEntry.new('1984', 'this is my reflection on 1984')
        result = diaryentry.count_words()
        expect(result).to eq 6
    end 
    it "returns wpm" do
        diaryentry = DiaryEntry.new('1984', 'this is my reflection on 1984')
        result = diaryentry.reading_time(3)
        expect(result).to eq '2 mins'
    end
    it "takes wpm and content and returnrs '2 mins' " do
        diaryentry = DiaryEntry.new('1984', 'this is my reflection on 1984')
        result = diaryentry.reading_chunk(3, 2)
        expect(result).to eq 6
    end
        

end