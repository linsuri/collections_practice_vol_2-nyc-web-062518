# your code goes here
def begins_with_r(array)
  output = []
  array.each do |item| 
    if item[0] == "r"
      output << true
    else
      output << false
    end  
  end
  if output.include?(false)
    false
  else
    true
  end  
end

def contain_a(array)
  output = []
  array.each do |item|
    if item.include?("a")
      output << item
    end
  end
  output
end

def first_wa(array)
  array.find {|item| item[0] == "w" && item[1] == "a"}
end

def remove_non_strings(array)
  output = []
  array.map do |item| 
    if item.is_a?(String)
      output << item
    end  
  end
  output
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end    

def merge_data(keys, values)
  output = []
  keys.each do |person|
    name = person[:first_name]
    values.each do |data|
      if data[name]
        merged_person = data[name]
        merged_person[:first_name] = name
        output << merged_person
      end
    end
  end
  output
end

def find_cool(array)
  output = []
  array.each do |person|
    if person[:temperature] == "cool"
      output << person
    end  
  end
  output
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end