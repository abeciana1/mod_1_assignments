require "pry"


reading = [{type: "book", title: "All Quiet on the Western Front"},
{type: "book", title: "1984"},
{type: "magazine", title: "Time"},
{type: "magazine", title: "Entrepreneur"},
{type: "newspaper", title: "New York Times"},
{type: "newspaper", title: "Wall Street Journal"}]

def run(reading_material)
    puts "What would you like to read?"
    puts "\n"
    puts "Here's a list of options:"
    puts "\n"
    puts "Press 1 - List of all titles"
    puts "Press 2 - To Search by Title"
    puts "Press 3 - List of all books"
    user_input = gets.chomp
    
    case user_input
    when "1"
        reading_material.map do |lit|
            puts lit[:title]
        end
    when "2"
        puts "Please type in your search"
        lit_search = gets.chomp
        reading_material.find do |work|
            if work[:title] == lit_search
                puts "#{work[:title]} is a #{work[:type]}"
            end
        end
    when "3"
        puts "Here's a list of all the books!"
        reading_material.collect do |book|
            puts book[:title] if book[:type] == "book"
        end
    end


end

run(reading)

