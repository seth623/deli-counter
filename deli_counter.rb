katz_deli = []

def line(people_array)
    
    line_array = Array.new 

    if people_array.length == 0
        puts "The line is currently empty."
    end

    if people_array.length > 0
        people_array.each_with_index do |person, index|
            line_array.push("#{index + 1}. #{person}")
        end

        line_array.unshift("The line is currently:") 
        final_array = line_array.join(" ")
        puts final_array 
    end 

end

def take_a_number(katz_deli, name)
    
    katz_deli.push(name)
    number_in_line = katz_deli.length 

    puts "Welcome, #{name}. You are number #{number_in_line} in line."

end

def now_serving(katz_deli)

    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    end

    if katz_deli.length > 0
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end 

end 