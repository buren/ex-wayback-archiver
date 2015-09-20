defmodule WaybackArchiver do
  @moduledoc """
  Main module and the intended public API.
  """

  alias WaybackArchiver.WMArchiver, as: WMArchiver

  def save([]), do: ()
  def save([head | tail]), do: [WMArchiver.save(head) | save(tail)]

end
