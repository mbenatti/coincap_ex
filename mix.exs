defmodule CoinCap.MixProject do
  use Mix.Project

  @version "0.1.1"

  def project do
    [
      app: :coincap_ex,
      version: @version,
      elixir: "~> 1.5",
      package: package(),
      description: description(),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      # Docs
      name: "CoinCap.io API Client",
      source_url: "https://github.com/mbenatti/coincap_ex",
      homepage_url: "https://github.com/mbenatti/coincap_ex/README.md"
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
      {:tesla, "~> 0.10.0"},
      {:ex_doc, "~> 0.16", only: :dev, runtime: false}
    ]
  end

  defp package do
    [maintainers: ["Marcos Benatti Lauer"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/mbenatti/coincap_ex"},
     files: ~w(mix.exs README.md lib)]
  end

  defp description do
    """
    CoinCap.io API Client
    """
  end
end
