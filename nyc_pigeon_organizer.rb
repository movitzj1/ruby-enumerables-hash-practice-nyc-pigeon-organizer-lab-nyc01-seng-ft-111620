def nyc_pigeon_organizer(data)
  empty_hash = {}
  data.each do |key, value|
    value.each do |inner_key, inner_value|
      inner_value.each do |name|
        if empty_hash.keys.index(name) == nil #Reference https://ruby-doc.org/core-2.5.1/Hash.html
          empty_hash.store(name, {key => [inner_key.to_s]}) # Reference https://ruby-doc.org/core-2.5.1/Hash.html
        else
          #if empty_hash[name].keys.index(key) == nil
            #empty_hash[name].store(key, [inner_key.to_s])
          #else
          empty_hash[name][key] << inner_key.to_s
          end
        end
      end
    end
  end
  return empty_hash
end
