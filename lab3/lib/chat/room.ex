defmodule Chat.Room do
  defstruct [:members, :messages]

  def new do
    %Chat.Room{members: [], messages: []}
  end

  def join(room, username) do
    if username in room.members do
      raise ArgumentError, message: "username already taken"
    else
      %{room | members: [username|room.members]}
    end
  end

  def leave(room, username) do
    if username in room.members do
      %{room | members: List.delete(room.members, username)}
    else
      raise ArgumentError, message: "user not in room"
    end
  end

  def new_message(room, username, message) do
    message = %{user: username, text: message}
    %{room | messages: [message|room.messages]}
  end

  def messages_by_user(room, username) do
    for(%{user: user, text: message} <- room.messages,
        username == user,
        do: message)
  end
end
