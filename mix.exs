defmodule ExTelegram.MixProject do
  use Mix.Project

  @source_url "https://github.com/jaeyson/ex_telegram"
  @version "0.1.0"

  def project do
    [
      app: :ex_telegram,
      version: @version,
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      description: "Telegram bot client for Elixir",
      deps: deps(),
      docs: docs(),
      package: package(),
      name: "ExTelegram",
      source_url: @source_url
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      api_reference: false,
      main: "readme",
      source_ref: "v#{@version}",
      source_url: @source_url,
      canonical: "https://hexdocs.pm/ex_telegram",
      formatters: ["html"],
      extras: [
        "LICENSE.md": [title: "License"]
      ]
    ]
  end

  defp package do
    [
      maintainers: ["Jaeyson Anthony Y."],
      licenses: ["MIT"],
      links: %{
        Github: @source_url
      }
    ]
  end
end
