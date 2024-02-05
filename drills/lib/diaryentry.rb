class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
    end
  
    def title
        return @title
    end
  
    def contents
        return @contents
    end
  
    def count_words

        return @contents.split.length
    end
  
    def reading_time(wpm) 
        time = @contents.split.length / wpm
        return "#{time} mins"
    end
  
    def reading_chunk(wpm, minutes) 
        return wpm * minutes
    end
  end