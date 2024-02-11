defmodule Sparkline.MixProject do
  use Mix.Project

  @version "0.1.0"
  @repo_url "https://github.com/abdelaz3r/sparkline"

  def project do
    [
      app: :sparkline,
      name: "Sparkline",
      description: "Sparkline is an Elixir library to generate SVG sparkline charts.",
      version: @version,
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      source_url: @repo_url,
      homepage_url: @repo_url,
      docs: [
        main: "Sparkline",
        extras: [
          {"README.md", [title: "About"]},
          {"documents/EXAMPLES.md", [title: "Examples"]},
          {"documents/CHANGELOG.md", [title: "Changelog"]},
          {"LICENSE", [title: "License"]}
        ],
        authors: ["Gil Clavien"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      files: [
        "lib",
        "mix.exs",
        "README.md",
        "LICENSE"
      ],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub (Elixir library)" => @repo_url
      },
      maintainers: ["Gil Clavien"]
    ]
  end
end
