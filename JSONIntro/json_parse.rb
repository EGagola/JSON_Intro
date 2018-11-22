require 'json'

# json = File.read('json_example.json')


json_parsed_data = JSON.parse(File.read('json_example.json'))

p json_parsed_data
p json_parsed_data.class
