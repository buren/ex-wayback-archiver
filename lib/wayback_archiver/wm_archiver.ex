defmodule WaybackArchiver.WMArchiver do
  @moduledoc """
  Send URL to the Wayback Machine.
  """

  alias WaybackArchiver.Request, as: Request

  def archive_url(""), do: ""
  def archive_url(url), do: "https://web.archive.org/save/#{url}"

  def save(url), do: Request.get(archive_url(url))

end
