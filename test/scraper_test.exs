defmodule ScraperTest do
  use ExUnit.Case
  use Hound.Helpers

  setup do
    Hound.start_session
    :ok
  end

  test "the truth", meta do
    navigate_to("http://www.google.com")

    url = current_url() |> IO.puts

    current_url() == url
  end

end
