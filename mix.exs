defmodule PlugSessionArangodb.MixProject do
  use Mix.Project

  def project do
    [
      app: :plug_session_arangodb,
      build_embedded: Mix.env() == :prod,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: [
        maintainers: ["kmakita13714"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/kmakita13714/plug_session_arangodb"}
      ],
      description: "A ArangoDB adapter for Plug.Session",
      source_url: "https://github.com/kmakita13714/plug_session_arangodb",
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :gun],
      mod: {PlugSessionArangodb.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.1"},
      {:arangox, "~> 0.4.5"},
      {:velocy, "~> 0.1.5"},
      {:poison, "~> 4.0"},
      {:gun, "~> 1.3"}
    ]
  end
end
