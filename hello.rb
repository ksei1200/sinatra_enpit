require 'sinatra'

get '/' do
  "Hello World!"

  pass if Time.now > time_for('Dec 23, 2018')
  "まだ時間がある"
end
