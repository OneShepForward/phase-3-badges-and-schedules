# Write your code here.

def badge_maker(bananas = "John Doe")
    "Hello, my name is #{bananas}."
end

def batch_badge_creator(name_array)
    name_array.map do |person| badge_maker(person)
    end
end 

def assign_rooms(name_array)
    name_array.map.with_index do |person, index| 
        "Hello, #{person}! You'll be assigned to room #{index+1}!"
    end
end

# def assign_rooms(name_array)
#     i = 0
#     name_array.map do |p| 
#         i += 1
#         "Hello, #{p}! You'll be assigned to room #{i}!"
#     end
# end

def printer(attendees)
    badges = batch_badge_creator(attendees)
    badges.each{|p| puts p}
    rooms = assign_rooms(attendees)
    rooms.each{|r| puts r}
end