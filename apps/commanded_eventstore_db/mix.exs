defmodule CommandedEventstoreDb.MixProject do
  use Mix.Project

  def project do
    [
      app: :commanded_eventstore_db,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :eventstore],
      mod: {CommandedEventstoreDb.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:commanded_eventstore_adapter, "~> 0.5"},
      {:commanded_swarm_registry, "~> 0.1"},
      {:ecto_sql, "~> 3.0"},
      {:phoenix_pubsub, "~> 1.0"},
      {:postgrex, ">= 0.0.0"}
    ]
  end
end
