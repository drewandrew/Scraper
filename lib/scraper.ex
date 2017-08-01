defmodule Scraper do
  use Application
  @moduledoc """
  Documentation for Scraper.
  """

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Scraper.Repo, [])
    ]

    opts = [strategy: :one_for_one, name: Scraper.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
