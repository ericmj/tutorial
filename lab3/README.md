# LAB3

### Lab purpose

This lab will teach you how to test Elixir code with ExUnit and ShouldI. We are
going to test the chat room created in the previous lab.


### Lab instructions

The `lab3` directory has a file `room_test.exs` which contains some tests for the
chat room.

  1. Implement the test `should be able to join room`. Add a new user to the
     room with `Room.join/2`, assert that the user is a member of the room.

  2. Implement the test `should not be able to leave if not already joined`. Assert that `Room.leave/2` raises if the same user tries to leave the room twice.

  3. Implement the test `should be able to leave room`. Leave the room with a user that joined in your setup, refute that the user is a member of the room.

  4. Create a nested context under `with empty room` named `with members bob, jane and two messages`. In the room in the context there should be two users with two messages each.

  5. Inside the new context create a _matcher_ with `should_match_key`, the matcher should verify that the members have joined the room. (TIP: Look at the `should_match_key` matcher above and you only have to match the `:members` field)

  6. Create a test `should filter messages based on user` that tests the `Room.messages_by_user/2` function.


### Links

Getting started guide: http://elixir-lang.org/getting-started/introduction.html

API docs: http://elixir-lang.org/docs/stable/elixir/

  1. ExUnit assertions http://elixir-lang.org/docs/stable/ex_unit

  2. ShouldI http://hexdocs.pm/shouldi/

  4. `assert/1` http://elixir-lang.org/docs/stable/ex_unit/ExUnit.Assertions.html#assert/1

  5. `assert_raise/3` http://elixir-lang.org/docs/stable/ex_unit/ExUnit.Assertions.html#assert_raise/3

  6. `refute/1` http://elixir-lang.org/docs/stable/ex_unit/ExUnit.Assertions.html#refute/1


### Solution ( no peeking :) )

See `solution.ex` file.
