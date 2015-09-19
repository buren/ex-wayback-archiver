defmodule RequestTest do
  use ExUnit.Case, async: true

  import WaybackArchiver.Request

  test "get empty url is no-op" do
    assert get("") == nil
  end

  test "get url" do
    assert get("http://example.com").status_code == 200
  end

  test "get url body" do
    body = get("http://example.com", :body)
    assert String.starts_with?(body, "<!doctype html>") == true
  end
end
