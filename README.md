# Chat

Simple Elixir Chat example using GenServer and Supervisor

- Start with Chat.Supervisor.start_link

- only has features..
  - get_messages
  - add_message
  - new_chat

- App can only run one chat at a time, creating a new chat will kill pid and Supervisor will automatically start a new chat process. 
