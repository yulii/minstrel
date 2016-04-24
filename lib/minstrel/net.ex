defprotocol Minstrel.Net do
  @doc false
  def pop(net)
end

defimpl Minstrel.Net, for: Minstrel.Webhook do
  def pop(net) do
    HTTPoison.post(net.uri, net.payload)
  end
end
