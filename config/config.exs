# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :scraper, Scraper.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "scraper_repo",
  username: "user",
  password: "password",
  hostname: "localhost"

config :scraper, ecto_repos: [Scraper.Repo]


# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :scraper, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:scraper, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"

# Define your application's host and port (defaults to "http://localhost:4001")
#config :hound, app_host: "http://localhost", app_port: 4000

# Start with selenium driver (default)
config :hound, port: 4444, driver: "selenium"
config :hound, http: [recv_timeout: :infinity]

# Use Chrome with the default driver (selenium)
# config :hound, port: 4444, browser: "chrome"

# Start with default driver at port 1234 and use firefox
# config :hound, port: 4444, browser: "firefox"

# Start Hound for PhantomJs
# config :hound, driver: "phantomjs"

# Start Hound for ChromeDriver (default port 9515 assumed)
# config :hound, driver: "chrome_driver"
