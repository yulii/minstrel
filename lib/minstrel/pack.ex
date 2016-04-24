defprotocol Minstrel.Pack do
  @doc false
  def deliver(pack)
end

defimpl Minstrel.Pack, for: Minstrel.Webhook do
  def deliver(pack) do
    HTTPoison.post(pack.uri, pack.payload)
  end
end
