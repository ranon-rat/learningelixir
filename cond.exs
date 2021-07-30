favorite_social_network=String.trim (IO.gets("what's ur favorite social network?"))

message=cond do
  favorite_social_network=="twitter"-> "are u okay ? "
  favorite_social_network=="discord"-> "u are my homie now"
  favorite_social_network=="youtube"->"me too"
  favorite_social_network=="github"->"oh yeah , the stars  are better than hearts in twitter and instagram"
  favorite_social_network=="facebook"->"haha u ar old"
  true->"wtf is that?"
end
IO.puts(message)
