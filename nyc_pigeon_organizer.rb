# def nyc_pigeon_organizer(data)
#   # write your code here!
#   pigeon_list = {}
#
#   data.each do |detail,info|
#     info.each do |key,pegions|
#       pegions.each do |pegion|
#           if pigeon_list[pegion] == nil
#            pigeon_list[pegion] = {}
#             pigeon_list[pegion][detail] = []
#           else
#           pigeon_list[pegion] = [detail]
#           end
#       end
#     end
#   end
#   pigeon_list
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
