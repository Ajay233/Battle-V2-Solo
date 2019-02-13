require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
enable :sessions

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
  Game.attack(@game.player_2)
  redirect "/play"
end

post "/heal" do
  Game.heal_player(@game.player_2)
  redirect "/play"
end

run! if app_file == $0

end
