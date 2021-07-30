defmodule Profile do
  defstruct [:name , :visits ,:followers ]
  @type t(name,visits,followers)::%Profile{name: name,visits: visits,followers: followers}
  @type t::%Profile{name: charlist,visits: integer, followers: integer}
end
#then for use it u only need to do something like this
# iex(1)> c("structs.exs")
# iex(2)> %Profile{}
# %Profile{followers: nil, name: nil, visits: nil}
