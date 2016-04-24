defmodule Minstrel.Webhook do
  @moduledoc false
  @derive [Poison.Encoder]
  defstruct [:key, :uri, :payload]
end
