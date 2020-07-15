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
    end

    def format_phone
        @phone_number.split(/[() -]/).delete_if { |x| x == "" }.join
    end

    def self.all
        @@all
    end

    def change_pass(pass, new_pass)
        if pass == self.password
            self.password == new_pass
            puts "Your password has been changed. You will be emailed at #{self.email} to verify."
        else
            puts "Sorry, you didn't input the correct password so we couldn't change it. Please try again."
        end
    end


    def login_account(username, password)
        if username == self.username && password == self.password 
            puts "Welcome back, #{self.name}"
            weekday = Date.today.wday
            puts "#{name_of_day(weekday)}"
            puts "We're going to exit you out of the app"
            exit
        else
            puts "Sorry, you didn't input the correct credentials, please try again."
        end
    end


end