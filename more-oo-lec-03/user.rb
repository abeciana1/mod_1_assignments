require "pry"
require_relative 'helper.rb'

class User
    include Helper
    
    attr_writer :ssn
    attr_accessor :name, :username, :email, :password, :phone_number

    @@all = []

    def initialize(name, username, email, password, phone_number, ssn)
        @name = name
        @username = username
        @email = email
        @password = password
        @phone_number = phone_number.split(/[() -]/).delete_if { |x| x == "" }.join.to_i
        @@all << self
        # binding.pry
    end

    def format_phone
        @phone_number.split(/[() -]/).delete_if { |x| x == "" }.join
    end

    def self.all
        @@all
        # binding.pry
    end

    def change_pass(pass, new_pass)
        # binding.pryx
        if pass == self.password
            # binding.pry
            self.password == new_pass
            puts "Your password has been changed. You will be emailed at #{self.email} to verify."
        else
            puts "Sorry, you didn't input the correct password so we couldn't change it. Please try again."
        end
    end


    def login_account(username, password)
        # binding.pry
        if username == self.username && password == self.password 
        # binding.pry
        # if User.all.find do |user| 
            # user.username == username && user.password == password
            puts "Welcome back, #{self.name}"
            weekday = Date.today.wday
            # binding.pry
            puts "#{name_of_day(weekday)}"
            # binding.pry
        else
            puts "Sorry, you didn't input the correct credentials, please try again."
        end
    end


end
# puts alex.change_pass("password", "pass")