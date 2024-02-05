def grammar_checker(string)
    if string[0] == string[0].upcase && string[-1] == '.'
        return 'Correct !'
    else return 'BAD GRAMMAR'
    end
end