Rails.application.routes.draw do
get '/params_games' => 'params_games#game' 
get '/name' => 'params_games#name'
get '/numbers' => 'params_games#numbers'
get '/url_segment_example/:wildcard' => 'params_games#url'
get '/url_guess_number/:guess' => 'params_games#url_guess_number'
get '/show_form' => 'params_games#get_form'
post '/send_form' => 'params_games#send_form'
end
