defmodule CommandedEventstore.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    topologies = [
      example: [
        strategy: Cluster.Strategy.Epmd,
        config: [hosts: [:"a@127.0.0.1", :"b@127.0.0.1"]]
      ]
    ]

    children = [
      {Cluster.Supervisor, [topologies, [name: MyApp.ClusterSupervisor]]}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: CommandedEventstore.Supervisor)
  end
end
