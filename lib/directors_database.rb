require 'pp'
require 'pry'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

movies = directors_database[0][:movies]


row_index = 0 
while row_index < movies.count do 
   
 element_index = 0 
   binding.pry 
  while element_index < movies[row_index].count do 
    puts movies[row_index][element_index]
     element_index += 1 
    
end
 row_index += 1

end