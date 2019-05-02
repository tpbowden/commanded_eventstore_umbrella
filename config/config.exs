# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config



config :commanded_eventstore_web,
  generators: [context_app: :commanded_eventstore]

# Configures the endpoint
config :commanded_eventstore_web, CommandedEventstoreWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "p6ZVllYlh4jN2XPZDPXzDMTq4cOYJcgt77D0FvFCx9QSI7DL6F10AtsJ6HcPXtDA",
  render_errors: [view: CommandedEventstoreWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: CommandedEventstoreWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
