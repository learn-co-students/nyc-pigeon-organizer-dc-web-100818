def nyc_pigeon_organizer(data)
  organized = {}
  data.each do |key, hash|
    hash.each do |value, names|
      names.each do |name|
        organized[name] ||= {}
        organized[name][key] ||= []
        organized[name][key] << value.to_s
      end
    end
  end
  organized
end