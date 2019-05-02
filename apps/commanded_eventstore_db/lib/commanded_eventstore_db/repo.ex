defmodule CommandedEventstoreDB.Repo do
  use Ecto.Repo,
    otp_app: :commanded_eventstore_db,
    adapter: Ecto.Adapters.Postgres
end
