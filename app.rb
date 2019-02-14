require 'sinatra/base'
require 'sinatra/flash'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
enable :sessions
register Sinatra::Flash

get "/" do
  erb :index
end

post '/names' do
  player_1 = Player.new(params[:player_1_name])
  player_2 = Player.new(params[:player_2_name])
  @game = Game.create(player_1, player_2)
  redirect '/play'
end

before do
  @game = Game.instance
end

get "/play" do
  erb :play
end

post "/attack" do
  curr_player = @game.current_player
  opponent = @game.opponent
  @game.attack(opponent)
  @game.check_poisoned(curr_player)
  if @game.opponent.hp == 0
    redirect "/game_over"
  else
    flash[:red] = "Damn, #{opponent.name} got hit!!"
    @game.turn_switch
    redirect "/play"
  end
end

post "/paralyse" do
  curr_player = @game.current_player
  opponent = @game.opponent
  @game.paralyse_attack(opponent)
  @game.check_poisoned(curr_player)
  if @game.opponent.hp == 0
    redirect "/game_over"
  else
    flash[:red] = "Damn, #{opponent.name} got hit!!"
    if opponent.paralysed == true
      flash[:red] = "#{opponent.name} is paralysed with fear and misses the next turn!!"
    end
    @game.turn_switch
    redirect "/play"
  end
end

post "/poison" do
  curr_player = @game.current_player
  opponent = @game.opponent
  @game.poison_attack(opponent)
  @game.check_poisoned(curr_player)
  if @game.opponent.hp == 0
    redirect "/game_over"
  else
    flash[:red] = "Damn, #{opponent.name} got hit!!"
    if opponent.poisoned == true
      flash[:red] = "#{opponent.name} staggers, realising #{curr_player.name}
      used a poisoned weapon.  #{opponent.name} will lose between 1 and 6 HP on
      the next turn"
    end
    @game.turn_switch
    redirect "/play"
  end
end

post "/sleep" do
  curr_player = @game.current_player
  opponent = @game.opponent
  @game.paralyse_attack(opponent)
  @game.check_poisoned(curr_player)
  if @game.opponent.hp == 0
    redirect "/game_over"
  else
    flash[:red] = "Damn, #{opponent.name} got hit!!"
    if opponent.paralysed == true
      flash[:red] = "#{opponent.name} was cut by #{curr_player.name}'s sleep blade and misses the next turn!!"
    end
    @game.turn_switch
    redirect "/play"
  end
end

post "/heal" do
  curr_player = @game.current_player
  @game.heal_player(curr_player)
  @game.check_poisoned(curr_player)
  flash[:red] = "#{curr_player.name} applied first aid!!"
  @game.turn_switch
  redirect "/play"
end

get "/game_over" do
  erb :game_over
end

run! if app_file == $0

end
