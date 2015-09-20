defmodule WaybackArchiver.HTMLParser do
  @moduledoc """
    Parse HTML.
    """

  def links(html), do: Floki.attribute(html, "a", "href")

end
