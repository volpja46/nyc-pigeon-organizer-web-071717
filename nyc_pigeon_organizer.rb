
    pigeon_data = {
        :color => {
            :purple => ["Theo", "Peter Jr.", "Lucky"],
            :grey => ["Theo", "Peter Jr.", "Ms. K"],
            :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
            :brown => ["Queenie", "Alex"]
        },
        :gender => {
            :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
            :female => ["Queenie", "Ms. K"]
        },
        :lives => {
            "Subway" => ["Theo", "Queenie"],
            "Central Park" => ["Alex", "Ms. K", "Lucky"],
            "Library" => ["Peter Jr."],
            "City Hall" => ["Andrew"]
        }
    }



def nyc_pigeon_organizer(data)
    
    pigeon_hasher = {}
    
    data.each do |keys, values|
               values.each do |val, pigeons|
            
            pigeons.each do |pigeon|
                
                if pigeon_hasher[pigeon].nil?
                    pigeon_hasher[pigeon] = {}
                end
                
        if pigeon_hasher[pigeon][keys]
                pigeon_hasher[pigeon][keys] << val.to_s
                    else
                    pigeon_hasher[pigeon][keys] = []
                    pigeon_hasher[pigeon][keys] << val.to_s
                end
                
            end
        end
    end
    pigeon_hasher
end
