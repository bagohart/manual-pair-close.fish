function _manual_close_pair --description 'If there is an opening bracket or a quote before the cursor, insert a closing bracket or a matching quote after the cursor.'
    set char_before_cursor $(string sub --start=-1 $(commandline --cut-at-cursor))
    switch $char_before_cursor[-1]
        case '('
            set closing_char ')'
        case '['
            set closing_char ']'
        case '{'
            set closing_char '}'
        case '<'
            set closing_char ">"
        case '"'
            set closing_char '"'
        case "'"
            set closing_char "'"
        case '`'
            set closing_char '`'
        case '»'
            set closing_char '«'
        case '„'
            set closing_char '“'
    end
    if set --query closing_char
        commandline --insert $closing_char
        commandline --cursor $(math $(commandline --cursor) - 1)
        return 0
    else
        return 1
    end
end
