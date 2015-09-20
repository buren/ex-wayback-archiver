defmodule WMArchiverTest do
  use ExUnit.Case, async: true

  import WaybackArchiver.WMArchiver

  test "save" do
    # TODO: Figure out howto mock the Request used in WmArchiver
    #       #save method actually archives the page,
    # assert save("http://example.com") == "https://web.archive.org/save/http://example.com"
  end

  test "archive_url" do
    expected_url = "https://web.archive.org/save/http://example.com"
    assert archive_url("http://example.com") == expected_url
  end

  test "archive_url with empty url" do
    assert archive_url("") == ""
  end

end
