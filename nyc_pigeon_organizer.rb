require "pry"

def nyc_pigeon_organizer(data)
  list = {}

  data.each do |label, label_data|
    label_data.each do |value, pigeons|
      pigeons.each do |pigeon_name|
        if list[pigeon_name]
          if list[pigeon_name][label]
            list[pigeon_name][label] << value.to_s
          else
            list[pigeon_name][label] = []
            list[pigeon_name][label] << value.to_s
          end
        else
          list[pigeon_name] = {}
          list[pigeon_name][label] = []
          list[pigeon_name][label] << value.to_s
        end
      end
    end
  end
  list
end
