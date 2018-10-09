# require "pry"
# def nyc_pigeon_organizer(data)
#   # write your code here!
#   pigeon_data = {}
#
#   data.each do |detail,info|
#     info.each do |key,pegions|
#       pegions.each do |pegion|
#         if pigeon_data[:pegion] == nil
#           pigeon_data[:pegion] = {}
#         end
#       end
#     end
#   end
# end


def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, h), result|
    h.each do |value, names|
      names.each do |name|
        result[name] ||= {}
        result[name][key] ||= []
        result[name][key] << value.to_s
      end
    end
  end
end
