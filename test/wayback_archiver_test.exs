defmodule WaybackArchiverTest do
  use ExUnit.Case, async: true

  import WaybackArchiver

  test "save with empty list is no-op" do
    assert save([]) == nil
  end

  test "save with many empty urls" do
    assert save(["", ""]) == [nil, nil | nil]
  end

end
