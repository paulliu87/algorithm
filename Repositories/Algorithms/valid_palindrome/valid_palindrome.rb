
def is_palindrome(s)
    if (s.nil?) || (s.empty?)
        return true
    end

    start_pointer_index = 0
    end_pointer_index = s.length - 1

    while (start_pointer_index < end_pointer_index)
        if (s[start_pointer_index] == " ")
            start_pointer_index += 1
            next
        end
        if (s[end_pointer_index] == " ")
            end_pointer_index -= 1
            next
        end
        if (s[start_pointer_index] != s[end_pointer_index])
            return false
        end
        start_pointer_index += 1
        end_pointer_index -= 1
    end
    return true
end
