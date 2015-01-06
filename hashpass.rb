#/usr/bin/ruby

require 'digest/sha2'

# Ask for the password string to be hashed

puts "Please type the password"
password = gets.chomp()
salt = rand(36**8).to_s(36)
#puts "The salt is #{salt}"
shadow_hash = password.crypt("$6$" + salt)

puts "#{shadow_hash}"
