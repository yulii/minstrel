defmodule Minstrel.Config do
  @moduledoc false

  def config, do: Application.fetch_env!(:minstrel, :uri)

  def read, do: File.read!(config)

  def routes do
    Poison.decode!(read, as: [%Minstrel.Webhook{}])
  end

  def map(key) do
    Enum.find(routes, fn(x) -> x.key == key end)
  end
end

defmodule Minstrel do
  @moduledoc false

  def config(key) do
    Minstrel.Config.map(key)
  end

  def pop(key, data) do
    Minstrel.Net.pop(Map.merge(config(key), data))
  end
end
