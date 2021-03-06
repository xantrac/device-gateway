# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :firmware_updater, FirmwareUpdaterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "haKv8P2vr3Tl9XXtc16vnsiqw8+HvFZja0vkM8R0TVB591Lnff/8Fv9CpoBBcSfu",
  render_errors: [view: FirmwareUpdaterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FirmwareUpdater.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "a4JMlKVQIKvBNSMnxEGKC2BfuH4D8x9hQBESgLxOFX48ZF5E641bccYXtQE9vho8"],
  live_reload: [
    patterns: [
      ~r{lib/firmware_updater_web/live/.*(ex)$}
    ]
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
