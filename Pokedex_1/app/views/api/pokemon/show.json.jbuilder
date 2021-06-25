
json.pokemon do 
    json.set! @pokemon.id do
      json.extract! @pokemon, :id, :name, :attack, :defense, :poke_type
      json.image_url asset_path("pokemon_snaps/#{@pokemon.image_url}")
    end
end

json.moves do
    json.set! @pokemon.moves do
      json.extract! @pokemon.move_id
    end
end

json.items do 
    # json.set! @pokemon.id do
    #   json.extract! @pokemon, :id, :name, :attack, :defense, :poke_type
    #   json.image_url asset_path("pokemon_snaps/#{@pokemon.image_url}")
    # end
end

=begin 
each pokemon ex: bulbasaur
    bulb.id : {
      bulb.id : 1,
      bulb.name : bane,
      image: image

    }
=end