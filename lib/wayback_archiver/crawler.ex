defmodule WaybackArchiver.Crawler do
  alias WaybackArchiver.HTMLParser, as: HTMLParser
  alias WaybackArchiver.Request, as: Request

  # TODO: Implement real crawling
  #       Don't just follow the start page links
  def crawl(start_url), do: page_links(start_url)
  def page_links(url), do: HTMLParser.links(Request.get(url, :body))
end
