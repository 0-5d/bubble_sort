require 'pry-byebug'

def bubble(arr)
    sorted = false
    not_sorted = false
    loop do 
        break if sorted

        not_sorted = false
        arr.each_with_index do |n, i|
            unless arr[i + 1] == nil
                if n > arr[i + 1]
                    placeholder1 = arr[i]
                    placeholder2 = arr[i + 1]
                    arr[i] = placeholder2
                    arr[i + 1] = placeholder1
                    not_sorted = true
                    sorted = false
                end
            end
            if not_sorted == false
                sorted = true
            end
        end
    end
    p arr
    arr
end

arr = [4,3,78,2,0,2]
bubble(arr)