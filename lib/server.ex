defmodule Chat.Server do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, [], name: :chat)
  end

  def get_messages do
    GenServer.call(:chat, :get_messages)
  end

  def add_message(message) do
    GenServer.cast(:chat, {:add_message, message})
  end

  def init(messages) do
    {:ok, messages}
  end

  def handle_call(:get_messages, _form, messages) do
    {:reply, messages, messages}
  end

  def handle_cast({:add_message, message }, messages) do
    {:noreply, [message|messages]}
  end

end
