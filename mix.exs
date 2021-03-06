defmodule Membrane.Element.Shout.Mixfile do
  use Mix.Project

  @version "0.2.0"
  @github_url "https://github.com/membraneframework/membrane-element-shout"
  def project do
    [
      app: :membrane_element_shout,
      compilers: [:unifex, :bundlex] ++ Mix.compilers(),
      version: @version,
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env()),
      description: "Membrane Multimedia Framework (Shout Element)",
      maintainers: ["Membrane Team"],
      licenses: ["Apache 2.0"],
      name: "Membrane Element: Shout",
      source_url: @github_url,
      deps: deps()
    ]
  end

  def application do
    [extra_applications: [], mod: {Membrane.Element.Shout, []}]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:membrane_core, "~> 0.3.0"},
      {:membrane_common_c, "~> 0.2.1"},
      {:membrane_caps_audio_mpeg, "~> 0.2.0"},
      {:unifex, "~> 0.2.0"}
    ]
  end
end
