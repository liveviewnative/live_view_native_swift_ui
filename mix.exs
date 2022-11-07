defmodule LiveViewNativeSwiftUi.MixProject do
  use Mix.Project

  def project do
    [
      app: :live_view_native_swift_ui,
      version: "0.0.1",
      elixir: "~> 1.13",
      description: "LiveView Native platform library for SwiftUI",
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:jason, "~> 1.2"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:live_view_native_platform, "~> 0.0.1"},
    ]
  end

  @source_url "https://github.com/liveviewnative/live_view_native_swift_ui"

  # Hex package configuration
  defp package do
    %{
      maintainers: ["May Matyi"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => @source_url
      },
      source_url: @source_url
    }
  end
end