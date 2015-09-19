defmodule WaybackArchiver.Mixfile do
  use Mix.Project

  def project do
    [app: :wayback_archiver,
     version: "0.0.1",
     elixir: "~> 1.0",
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  defp git_files do
    System.cmd("git", ["ls-files", "-z"])
      |> (fn {x,_} -> x end).()
      |> String.split(<<0>>)
      |> Enum.filter(fn x -> x != "" end)
  end

  defp package do
    [files: git_files,
      licenses: ["http://opensource.org/licenses/MIT"],
      contributors: ["Jacob Burenstam"],
      links: %{"homepage": "http://github.com/buren/ex-wayback-archiver"}]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:logger, :httpotion]]
  end

  defp deps do
    [
      {:floki, "~> 0.4"},
      {:ibrowse, github: "cmullaparthi/ibrowse", tag: "v4.1.2"},
      {:httpotion, "~> 2.1.0"}
    ]
  end
end
