# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :deploy_test,
  ecto_repos: [DeployTest.Repo]

# Configures the endpoint
config :deploy_test, DeployTest.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "KS7TSmK76Na7BkgK9tzZvCz55eo39RiLJmyTYbYV2jwU5GH/nfRAyg2misUISAQB",
  render_errors: [view: DeployTest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DeployTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
