defmodule WaybackArchiver.Crawler do
  @moduledoc """
  Crawl and return links from a given start URL.
  """

  alias WaybackArchiver.HTMLParser, as: HTMLParser
  alias WaybackArchiver.Request, as: Request

  # TODO: Implement real crawling
  #       Don't just follow the start page links
  def crawl(start_url), do: page_links(start_url)

  def page_links(url), do: HTMLParser.links(Request.get(url, :body))

end
