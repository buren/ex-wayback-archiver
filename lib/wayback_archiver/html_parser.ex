defmodule WaybackArchiver.HTMLParser do
  def links(html), do: Floki.attribute(html, "a", "href")
end
