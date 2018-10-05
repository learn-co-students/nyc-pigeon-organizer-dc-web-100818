require "pry"

def nyc_pigeon_organizer(data)
  names = []
  pigeon_list = {}
  data.each do |feature, feat_hash|
    feat_hash.each do |k, v|
      names << v
    end
  end
  names = names.flatten.uniq
  names.each do |i|
    binding.pry
    pigeon_list[i] = {
      :color => [],
      :gender => [],
      :lives => []
    } 
  end
end


#pigeon_list.each do |name, arr|
   # data.each do |feature, feat_hash|
    #  feat_hash.each do |k, v|
       # if v.include?(name)
        #  pigeon_list[name][feature] << v.to_s
     # end
    #end
  #end