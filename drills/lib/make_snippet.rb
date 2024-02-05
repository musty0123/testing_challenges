def make_snippet(string)
    if string.length > 5 
        return string[0, 5] + '...'
    else return string
    end

end