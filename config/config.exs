# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :polgo, PolgoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "roE/MfMYf/U9koykf6TF+/pgFJUpsrhqkZ9LIZC7HYmuabkelhC2lBNA+sT6buI2",
  render_errors: [view: PolgoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Polgo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
