defmodule HoundTest do
  alias Hound.Helpers.{Navigation, Page, Element}

  def init() do
    Hound.start_session

    Navigation.navigate_to("https://www.porhub.com", 5)
    url = Navigation.current_url()
    IO.puts url

    Hound.end_session
  end


end
