defmodule CommandedEventstoreWeb.Router do
  use CommandedEventstoreWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CommandedEventstoreWeb do
    pipe_through :api
  end
end
