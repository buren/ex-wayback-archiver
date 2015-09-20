defmodule HTMLParserTest do
  use ExUnit.Case, async: true

  import WaybackArchiver.HTMLParser

  def build_doc, do: build_doc("")
  def build_doc(content), do: "<html><body>#{content}</body></html>"

  test "returns empty links" do
    assert links(build_doc) == []
  end

  test "returns many links" do
    html = build_doc("<a href=\"#target\">Link</a>")
    assert links(html) == ["#target"]
  end

end
