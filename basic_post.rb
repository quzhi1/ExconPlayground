# frozen_string_literal: true

require 'rubygems'
require 'excon'

response = Excon.post(
  'https://postman-echo.com/post',
  body: 'This is expected to be sent back as part of response body.',
  headers: { 'Content-Type' => 'application/x-www-form-urlencoded' }
)
puts "body: #{response.body}" # This is a String
puts "headers: #{response.headers}" # This is an Excon::Headers object
puts "content type header: #{response.headers['Content-Type']}" # String
puts "remote_ip: #{response.remote_ip}" # String
puts "status: #{response.status}" # Integer
