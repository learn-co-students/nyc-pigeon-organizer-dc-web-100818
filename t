
[1mFrom:[0m /home/anaharris/nyc-pigeon-organizer-dc-web-100818/nyc_pigeon_organizer.rb @ line 18 Object#nyc_pigeon_organizer:

     [1;34m3[0m: [32mdef[0m [1;34mnyc_pigeon_organizer[0m(data)
     [1;34m4[0m:   names = []
     [1;34m5[0m:   pigeon_list = {}
     [1;34m6[0m:   data.each [32mdo[0m |feature, feat_hash|
     [1;34m7[0m:     feat_hash.each [32mdo[0m |k, v|
     [1;34m8[0m:       names << v
     [1;34m9[0m:     [32mend[0m
    [1;34m10[0m:   [32mend[0m
    [1;34m11[0m:   names = names.flatten.uniq
    [1;34m12[0m:   names.each [32mdo[0m |i|
    [1;34m13[0m:     pigeon_list[i] = {
    [1;34m14[0m:       [33m:color[0m => [],
    [1;34m15[0m:       [33m:gender[0m => [],
    [1;34m16[0m:       [33m:lives[0m => []
    [1;34m17[0m:     } 
 => [1;34m18[0m:     binding.pry
    [1;34m19[0m:   [32mend[0m
    [1;34m20[0m:   [1;34m#pigeon_list.each do |name, arr|[0m
    [1;34m21[0m:    [1;34m# data.each do |feature, feat_hash|[0m
    [1;34m22[0m:     [1;34m#  feat_hash.each do |k, v|[0m
    [1;34m23[0m:        [1;34m# if v.include?(name)[0m
    [1;34m24[0m:         [1;34m#  pigeon_list[name][feature] << v.to_s[0m
    [1;34m25[0m:      [1;34m# end[0m
    [1;34m26[0m:     [1;34m#end[0m
    [1;34m27[0m:   [1;34m#end[0m
    [1;34m28[0m: [32mend[0m

