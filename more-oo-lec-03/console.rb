require "pry"
require_relative 'user.rb'

puts sample = User.new("sample", "samp", "sample@example.com", "sample", "1234567890", "ssn")
puts alex = User.new("Alex", "alexb", "alexb@example.com", "password", "1234567890", "ssn")


puts alex.login_account("alexb", "forgot password")
puts sample.login_account("samp", "sample")
