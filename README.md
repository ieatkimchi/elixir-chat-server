# Chat

Simple Elixir Chat example using GenServer and Supervisor

- Start with Chat.Supervisor.start_link

- only has features..
  - get_messages
  - add_message
  - new_chat

- App can only run one chat at a time, calling new_chat will kill current chat PID and Supervisor will automatically start a new chat process and report back new PID. implements one_for_one strategy
