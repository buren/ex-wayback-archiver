defmodule CrawlerTest do
  use ExUnit.Case, async: true

  import WaybackArchiver.Crawler

  test "gets the links of a page" do
    # TODO: Mock request
    links = page_links("http://example.com")
    expected_links = ["http://www.iana.org/domains/example"]
    assert links == expected_links
  end

  test "crawl" do
    # TODO: Mock request
    links = crawl("http://example.com")
    expected_links = ["http://www.iana.org/domains/example"]
    assert links == expected_links
  end
end
