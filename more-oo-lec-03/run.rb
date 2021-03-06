require "pry"
require "Date"
require_relative 'user.rb'
require_relative 'console.rb'
require_relative 'helper.rb'
include Helper

def run

    puts "Welcome, please type 'signup' to create an account OR type 'login' to log into your account."
    puts "\n"
    sign_or_log = gets.chomp
    case sign_or_log
    when "signup"
        puts "Let's start with the basics, what's your name?"
        name = gets.chomp
        puts "What should people call you on the app? (Create a username)"
        username = gets.chomp
        puts "What's your email address so you can receive notifications?"
        email = gets.chomp
        puts "Keep your account secure with a good password:"
        password = gets.chomp
        puts "What's your phone number so we can verify who you are:"
        puts "Use either standard notation (111) 111-1111 or input the 10 digits:"
        phone_number = gets.chomp
        puts "Last question, what's your social security number?"
        ssn = gets.chomp
        user = User.new(name, username, password, email, phone_number, ssn)
        puts "\n"
        puts "Verify all the information below:"
        puts "Your name is #{user.name}"
        puts "Your username is #{user.username}"
        puts "Your email is #{user.email}"
        puts "Your phone number is #{user.phone_number}"
        puts "Would you like to change any of this information? (Y/N)"
        puts "\n"
        change_info = gets.chomp
    when "login"
        puts "What's your username?"
        username_input = gets.chomp
        puts "What's your password?"
        password_input = gets.chomp
        user.login_account(username_input, password_input)
    end

    case change_info
    when "Y", "y", "Yes", "yes"
        puts "Cool, what do you want to change?"
        puts "\n"
        puts "If your choice was a mistake, please type 'exit'"
        change_decision = gets.chomp
    when "N", "n", "No", "no"
        puts "If you would like to leave the app, please type 'exit' or type 'run' to restart the app."
        leave_restart = gets.chomp
    end

    case leave_restart
    when "run"
        run
    when "exit"
        exit
    end


    case change_decision
    when "name", "Name"
        puts "What do you want your name to be now?"
        new_name = gets.chomp
        user.name = new_name
        puts "Your name has been changed."
    when "username", "Username"
        puts "What would you like your username to be now?"
        new_username = gets.chomp
        user.username = new_username
        puts "Your username has been changed."
    when "email", "Email"
        puts "What would you like your email to be now?"
        new_email = gets.chomp
        user.email = new_email
        puts "Your email has been changed."
    when "phone", "Phone Number", "Phone", "phone_number"
        puts "What is your new phone number?"
        new_phone = gets.chomp
        user.phone_number = new_phone
        puts "Your phone_number has been changed."
    when "password", "Password"
        puts "What is your old password?"
        old_password = gets.chomp
        puts "What is your new password?"
        new_password = gets.chomp
        user.change_pass(old_password, new_password)
    when "exit"
        exit
    end

end

run