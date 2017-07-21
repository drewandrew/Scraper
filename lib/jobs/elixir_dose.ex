defmodule ElixirDose do
  use Hound.Helpers

  def init() do
    Hound.start_session
    navigate_to("http://jobs.elixirdose.com")
    # move_focus(12)
    # element_in_focus |> inner_text
    items = find_all_elements(:class, "item")
      |> Enum.map(fn x -> inner_text(x) end)
      |> IO.inspect
  end

  def move_focus(n) when n > 0 do
    send_keys(:tab)
    move_focus(n - 1)
  end
end
