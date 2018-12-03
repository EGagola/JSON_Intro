require 'json'

class ParseWeather

  attr_accessor :json_file

  def initialize json_file
    @json_file = JSON.parse(File.read(json_file))
  end

  def find_section section_name
    json_file[section_name]
  end

  def find_key_type key_name , type
    correct_type = 0
    json_file[key_name].keys.each do |key|
      if key.class == type
        correct_type += 1
      end
    end
    if correct_type == json_file[key_name].length
      return type
    end
  end

  def find_array_length array_name
    json_file[array_name].first.length
  end

  def find_hash_length hash_name
    json_file[hash_name.to_s].length
  end

  def find_array_key_type array_name , type
    correct_type = 0
    json_file[array_name][0].keys.each do |key|
      if key.class == type
        correct_type += 1
      end
    end
    if correct_type == json_file[array_name][0].length
      return type
    end
  end

  def temperature_check

  end
end
