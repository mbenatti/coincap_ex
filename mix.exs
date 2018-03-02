defmodule CoinCap.MixProject do
  use Mix.Project

  def project do
    [
      app: :coincap_ex,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:poison, "~> 3.0"},
      {:tesla, "~> 0.10.0"}
    ]
  end
end
