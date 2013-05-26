require 'sinatra'


before do
	content_type :text
	@selections = { scissors: :paper, rock: :scissors, paper: :rock}
	@throws = @selections.keys
end

get '/throw/:type' do
	player_throw = params[:type].to_sym
	unless @throws.include?(player_throw)
		halt 403, "please use one of the following selections #{@throws}"
	end
	computer_throw = @throws.sample
	if player_throw == computer_throw
		"you chose #{player_throw}, and the computer chose #{computer_throw} . You & the computer are tied"
	elsif computer_throw == @selections[player_throw]
		"you chose #{player_throw}, and the computer chose #{computer_throw} . You beat the computer"
	else
		"you chose #{player_throw}, and the computer chose #{computer_throw} . the computer beats you"
	end
end




