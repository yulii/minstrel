defmodule Minstrel.Mixfile do
  use Mix.Project

  def project do
    [app: :minstrel,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [ {:dogma, "~> 0.1", only: :dev},
      {:httpoison, "~> 0.8.3"},
      {:poison, "~> 2.0"}
    ]
  end
end
