require "pry"

class User
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
        # binding.pryx
        if pass == self.password
            # binding.pry
            self.password == new_pass
            puts "Your password has been changed. You will be emailed at #{self.email} to verify."
        else
            puts "Sorry, you didn't input the correct password so we couldn't change it. Please try again."
        end
    end

end

alex = User.new("alex", "alexb", "alexb@example.com", "password", "1111111111", 1234)

# puts alex.change_pass("password", "pass")