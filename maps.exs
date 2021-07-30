map=%{"hello"=>"world","goodbye" => :moon, :moon => "night"}

IO.puts(map["hello"])
#only we can use an atom for do this kinda stuff
IO.puts(map.moon)

%{"hello"=> x}=map
IO.puts(x)
