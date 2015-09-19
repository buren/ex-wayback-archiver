defmodule WaybackArchiver.Request do
  def get(url, :body), do: get(url).body
  def get(""), do: ()
  def get(url), do: HTTPotion.get(url)
end
