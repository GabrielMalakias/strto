# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :strto,
  ecto_repos: [Strto.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :strto, StrtoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Z1Do7l+eSN4ZrR+KwH3y0jv8AdjgQbHrKZw9CMC94sV0WJBTR4pH0ZvojRn4kUas",
  render_errors: [view: StrtoWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Strto.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
