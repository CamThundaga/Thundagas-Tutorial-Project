#==============================================================================#
#                            Randomized Starters                               #
#                                by Thundaga                                   #
#==============================================================================#

# Picks one Pokemon at random from the array and give it to the player
# at the level specified
def pbGrantRandomPokemon(pokemonArray,level)
  pokemon = pokemonArray[rand(pokemonArray.size)]
  pbAddPokemon(pokemon,level)
end

# Returns a random Pokemon from the specified array
def pbGetRandomPokemon(pokemonArray)
  pokemon = pokemonArray[rand(pokemonArray.size)]
  return pokemon
end

# Arrays of Pokemon. Make more to be able to pull from more random pools.
RANDOM_GRASS = [
:BULBASAUR,
:CHIKORITA,
:TREECKO,
:TURTWIG,
:SNIVY]

RANDOM_FIRE = [
:CHARMANDER,
:CYNDAQUIL,
:TORCHIC,
:CHIMCHAR,
:TEPIG]

RANDOM_WATER = [
:SQUIRTLE,
:TOTODILE,
:MUDKIP,
:PIPLUP,
:OSHAWOTT]

RANDOM_LEGENDS = [
:ARTICUNO,:ZAPDOS,:MOLTRES,:MEWTWO,
:RAIKOU,:ENTEI,:SUICUNE,:LUGIA,:HOOH,
:REGIROCK,:REGICE,:REGISTEEL,:LATIAS,:LATIOS,:KYOGRE,:GROUDON,:RAYQUAZA,
:UXIE,:MESPRIT,:AZELF,:DIALGA,:PALKIA,:HEATRAN,:REGIGAS,:GIRATINA,:CRESSELIA,
:COBALION,:TERRAKION,:VIRIZION,:TORNADUS,:THUNDURUS,:RESHIRAM,:ZEKROM,
:LANDORUS,:KYUREM
]

RANDOM_ELEC = [
:PIKACHU,
:PLUSLE,
:MINUN,
:PACHIRISU]

#==============================================================================#
def pbMakeItRain
  if GameData::Weather.get($game_screen.weather_type).category == :Rain
    pbMessage(_INTL("It is already raining."))
  else
    $game_screen.weather(1, 5, 30)
    pbMessage(_INTL("It is now raining!"))
  end
end







#==============================================================================#