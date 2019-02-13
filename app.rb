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
  opponent = @game.opponent
  @game.attack(opponent)
  if @game.opponent.hp == 0
    redirect "/game_over"
  else
    flash[:red] = "Damn, #{opponent.name} got hit!!"
    @game.turn_switch
    redirect "/play"
  end
end

post "/heal" do
  curr_player = @game.current_player
  @game.heal_player(curr_player)
  flash[:red] = "#{curr_player.name} applied first aid!!"
  @game.turn_switch
  redirect "/play"
end

get "/game_over" do
  erb :game_over
end

run! if app_file == $0

end
