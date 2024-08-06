defmodule ExTelegramTest do
  use ExUnit.Case
  doctest ExTelegram

  test "greets the world" do
    assert ExTelegram.hello() == :world
  end
end
