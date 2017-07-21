defmodule HoundTest do
  use Hound.Helpers

  def init() do
    Hound.start_session

    navigate_to("http://grillwork.io")
    el = find_element(:class, "navbar-brand")
    inner_text(el)    
  end


end
