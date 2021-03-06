# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :commanded,
  event_store_adapter: Commanded.EventStore.Adapters.EventStore,
  registry: Commanded.Registration.SwarmRegistry,
  pubsub: [
    phoenix_pubsub: [
      adapter: Phoenix.PubSub.PG2,
      pool_size: 1
    ]
  ]

config :eventstore, registry: :distributed

config :eventstore, EventStore.Storage,
  serializer: Commanded.Serialization.JsonSerializer,
  username: "nested",
  password: "nested",
  database: "commanded_eventstore_db",
  hostname: "localhost",
  port: 54321,
  pool_size: 10

config :commanded_eventstore_db, ecto_repos: [CommandedEventstoreDB.Repo]

config :commanded_eventstore_db, CommandedEventstoreDB.Repo,
  database: "commanded_eventstore_db_repo",
  username: "nested",
  password: "nested",
  hostname: "localhost",
  port: 54321

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# third-party users, it should be done in your "mix.exs" file.

# You can configure your application as:
#
#     config :commanded_eventstore_db, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:commanded_eventstore_db, :key)
#
# You can also configure a third-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env()}.exs"
