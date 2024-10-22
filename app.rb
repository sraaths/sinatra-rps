require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock")do
moves = ["rock", "paper", "scissors"]
@comp_move = moves.sample

if @comp_move == "rock"
  @outcome = "We tied!"
elsif @comp_move == "paper"
  @outcome = "We lost!"
else
  @outcome = "We won!"
end

erb(:rock)

end

get("/scissors")do
moves = ["rock", "paper", "scissors"]
@comp_move = moves.sample

if @comp_move == "rock"
  @outcome = "We lost!"
elsif @comp_move == "paper"
  @outcome = "We won!"
else
  @outcome = "We tied!"
end

erb(:scissors)

end

get("/paper")do
moves = ["rock", "paper", "scissors"]
@comp_move = moves.sample

if @comp_move == "rock"
  @outcome = "We won!"
elsif @comp_move == "paper"
  @outcome = "We tied!"
else
  @outcome = "We lost!"
end

erb(:paper)

end


