# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :uuid_auto_sample,
  ecto_repos: [UuidAutoSample.Repo]

# Configures the endpoint
config :uuid_auto_sample, UuidAutoSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Dd4zPHBdToBCfFeWi26XCociCSDjnAyEfrmuAkRnr8nnH73yxCdy568GCMz59V6U",
  render_errors: [view: UuidAutoSampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UuidAutoSample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
