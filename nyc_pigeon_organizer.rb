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
    pigeon_list[i] = {
      :color => [],
      :gender => [],
      :lives => []}
  end
  pigeon_list.each do |name, p_data|
    data.each do |feature, feat_hash|
      feat_hash.each do |feat, arr|
        if arr.include?(name)
          pigeon_list[name][feature] << feat.to_s
        end
      end
    end
  end
  return pigeon_list
end