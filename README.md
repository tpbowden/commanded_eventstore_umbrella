# CommandedEventstore.Umbrella

Minimal project to reproduce issue with Eventstore

## Reproducing the bug

Configure postgres in `apps/commanded_eventstore_db/config/config.exs`
Run `mix ecto.create`
Run `mix do event_store.drop, event_store.create, event_store.init`

Start the two clustered phoenix servers which causes the error:

```
iex --name a@127.0.0.1 -S mix phx.server
iex --name b@127.0.0.1 -S mix phx.server
```
