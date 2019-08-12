# frozen_string_literal: true

require 'rubygems'
require 'excon'

response = Excon.get('https://postman-echo.com/get?foo1=bar1&foo2=bar2')
puts "body: #{response.body}" # This is a String
puts "headers: #{response.headers}" # This is an Excon::Headers object
puts "content type header: #{response.headers['Content-Type']}" # String
puts "remote_ip: #{response.remote_ip}" # String
puts "status: #{response.status}" # Integer
