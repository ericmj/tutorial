defmodule Chat.RoomTest do
  use ExUnit.Case
  use ShouldI
  import ShouldI.Matchers.Context
  alias Chat.Room

  having "empty room" do
    setup context do
      assign context, room: Room.new
    end

    should_match_key room: %Room{messages: [], members: []}

    having "member bob" do
      setup context do
        assign context, room: Room.join(context.room, "bob")
      end

      should "not be able to join twice", context do
        assert_raise ArgumentError, "username already taken", fn ->
          Room.join(context.room, "bob")
        end
      end

      should "be able to join room", context do
      end

      should "not be able to leave if not already joined", context do
      end

      should "be able to leave room", context do
      end
    end

    having "members bob, jane and two messages" do
      setup context do
        context
      end

      should "filter messages based on user", context do
      end
    end
  end
end
