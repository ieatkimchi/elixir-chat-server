defmodule Chat.Server do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, [])
  end

  def get_messages(pid) do
    GenServer.call(pid, :get_messages)
  end

  def add_message(pid, message) do
    GenServer.cast(pid, {:add_message, message})
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
