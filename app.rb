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





get '/' do
  <<-HTML
  <!DOCTYPE html>
  <html>
    <head>
      <title>RPS</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
    </head>

    <body>
      <div>
        <a href="/rock">
          Play Rock
        </a>
      </div>

      <div>
        <a href="/paper">
          Play Paper
        </a>
      </div>

      <div>
        <a href="/scissors">
          Play Scissors
        </a>
      </div>

      <h1>Welcome to Rock-Paper-Scissors!</h1>

      <p>
        From <a href="https://en.wikipedia.org/wiki/Rock–paper–scissors" target="_blank">Wikipedia</a>:
      </p>

      <p>
        Rock-paper-scissors (also known as paper, scissors, stone or other variants) is a hand game usually played between two people, in which each player simultaneously forms one of three shapes with an outstretched hand.
      </p>

      <p>These shapes are:</p>
      <ul>
        <li>"rock" (a closed fist)</li>
        <li>"paper" (a flat hand)</li>
        <li>"scissors" (a fist with the index and middle fingers extended, forming a V)</li>
      </ul>

      <p>
        A player who decides to play rock will beat another player who has chosen scissors ("rock crushes scissors" or sometimes "blunts scissors"), but will lose to one who has played paper ("paper covers rock"); a play of paper will lose to a play of scissors ("scissors cut[s] paper"). If both players choose the same shape, the game is tied and is usually immediately replayed to break the tie.
      </p>

      <table border="1">
        <tr>
          <td rowspan="2" colspan="2"></td>
          <td colspan="3">and they play...</td>
        </tr>
        <tr>
          <td>Rock</td>
          <td>Paper</td>
          <td>Scissors</td>
        </tr>
        <tr>
          <td rowspan="3">If we play...</td>
          <td>Rock</td>
          <td>We tie</td>
          <td>We lose</td>
          <td>We win</td>
        </tr>
        <tr>
          <td>Paper</td>
          <td>We win</td>
          <td>We tie</td>
          <td>We lose</td>
        </tr>
        <tr>
          <td>Scissors</td>
          <td>We lose</td>
          <td>We win</td>
          <td>We tie</td>
        </tr>
      </table>

      <p>
        Originating from China and Japan, other names for the game in the English-speaking world include roshambo and other orderings of the three items, with "rock" sometimes being called "stone".
      </p>

      <div>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Rock-paper-scissors.svg/627px-Rock-paper-scissors.svg.png">
        <p>A chart showing how the three game elements interact</p>
      </div>

      <div>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg/640px-Kitsune-ken_%28%E7%8B%90%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Genyoku_sui_bento_%281774%29.jpg">
        <p>Kitsune-ken was a popular Japanese rock–paper–scissors variant.</p>
      </div>

      <div>
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg/640px-Mushi-ken_%28%E8%99%AB%E6%8B%B3%29%2C_Japanese_rock-paper-scissors_variant%2C_from_the_Kensarae_sumai_zue_%281809%29.jpg">
        <p>Mushi-ken, the earliest Japanese sansukumi-ken game (1809). From left to right: slug (namekuji), frog (kawazu) and snake (hebi).</p>
      </div>
    </body>
  </html>
  HTML
end
