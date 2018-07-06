require 'sinatra'
require 'sinatra/reloader'

before do
  @profile_link = :'/user/profile'
  @help_link = :'/user/help'
end

get '/index' do
  erb :index
end

get '/:user/profile' do
  @name = 'Profile'
  erb '/user/profile'.to_sym
end

get '/:user/help' do
  @users = ['Sally','Jerry','Rocko']
  erb :'/user/help'
end

require 'sinatra'

get '/hi' do
  "Hello World!"
end

get '/' do
  pass if Time.now > time_for('Dec 23, 2018')
  "まだ時間がある"
end
