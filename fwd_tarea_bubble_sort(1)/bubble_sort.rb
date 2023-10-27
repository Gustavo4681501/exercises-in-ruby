def bubble_sort(array)
    if array.length==0 || array.length==1
        return array 
    else

        for i in 0..array.length do
            for j in 0..array.length-2 do
                if (array[j] > array[j+1])
                    array[j], array[j + 1]=array[j + 1],array[j]
                end
            end
        end
    end
array
end

array =[23,5,4,6,1,6,8,9,1]
p bubble_sort(array)