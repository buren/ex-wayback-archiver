defmodule WaybackArchiver do
  alias WaybackArchiver.WMArchiver, as: WMArchiver

  def save([]), do: ()
  def save([head | tail]), do: [WMArchiver.save(head) | save(tail)]
end
