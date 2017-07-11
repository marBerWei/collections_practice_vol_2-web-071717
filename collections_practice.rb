def begins_with_r(array)
  array.all? {|word| word.start_with?("R","r")}
end

def contain_a(array)
  array.select {|word| word.include? "a"}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?('wa')}
end

def remove_non_strings(array)
  array.select{|word| word.class == String}
end

def count_elements(array)
  my_array = []
  array.each do |hash|
    my_hash = Hash.new
      my_hash[:name] = hash[:name]
      my_hash[:count] = 1
      my_array << my_hash
  end
  newer_array = []
  my_array.each do |el|
    if newer_array.include?(el)
      newer_array[newer_array.index(el)][:count] += 1
    else
      newer_array << el
    end
  end
  newer_array
end

  def find_cool(array)
    my_array = []
    array.each do |el|
      el.each do |key, value|
        if key == :temperature && value == "cool"
          my_array << el
        end
      end
    end
    my_array
  end

def organize_schools(hash)
  new_hash = {"NYC" => [], "SF" => [], "Chicago" => []}
  hash.each do |school,location|
    if location[:location] == 'NYC'
      new_hash["NYC"] << school
    elsif location[:location] == 'SF'
        new_hash["SF"] << school
    elsif location[:location] == 'Chicago'
          new_hash["Chicago"] << school
    end
  end
  new_hash
end

def merge_data(keys,array)
  new_array = []
  keys.each do |first_name_hash|
    array.each do |person_details|
      person_details.each do |name, trait_hash|
        if name == first_name_hash[:first_name]
          hash = Hash.new
          hash[:first_name] = name
          hash[:awesomeness] = trait_hash[:awesomeness]
          hash[:last_name] = trait_hash[:last_name]
          hash[:height] = trait_hash[:height]
          new_array << hash
        end
      end
    end
  end
  new_array
end
