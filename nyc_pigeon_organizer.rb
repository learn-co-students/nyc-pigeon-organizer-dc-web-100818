require 'pry'

def nyc_pigeon_organizer(data)
  goodfeathers = {}
  data.each do |attribute, options_list|
    options_list.each do |option, name_array|
      name_array.each do |name|
        if !goodfeathers[name]
          goodfeathers[name] = {}
        end
        if !goodfeathers[name][attribute]
          goodfeathers[name][attribute] = [option.to_s]
        elsif attribute == :color
          goodfeathers[name][:color] << option.to_s
        end
      end
    end
  end
  goodfeathers
end