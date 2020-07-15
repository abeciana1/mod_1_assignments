require "pry"
require "Date"
require_relative 'user.rb'

module Helper

    def name_of_day(weekday)

        case weekday
        when 1
            puts "Ugh, Monday! Grab some coffee!"
        when 2
            puts "Groovy Tuesday"
        when 3
            puts "It's Wednesday! Finish line is in sight!"
        when 4
            puts "Thirsty Thursday! It's 5 o'clock somewhere!"
        when 5
            puts "T.G.I.F. - enough said"
        when 6
            puts "Saturday - treat your self!"
        when 7
            puts "Sunday, Funday! Don't think about tomorrow!"
        end
    end
end