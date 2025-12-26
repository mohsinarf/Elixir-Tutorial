# Process
# IO.inspect(spawn( fn -> 1 + 2 end))

# # send(self(), {:error, "Hello"})

# receive do
#   {:ok, value} ->
#     # code
#     IO.puts(value)

#   {:error, value} ->
#     IO.puts(value <> "World")

# after
#   1_000 -> IO.puts "nothing after 1s"
# end


# # Links
# IO.inspect "Main program PID #{inspect(self())}"
# IO.inspect spawn_link( fn -> raise " error" end)
# # IO.inspect spawn( fn -> raise " error" end)

# Process.sleep(1000)
# IO.puts "Program reached here."

# Tasks
IO.puts " Main program's pid -> #{inspect self()}"
new_process_pid = Task.start_link(fn -> "Error occured" end)
IO.inspect( new_process_pid)
Process.sleep(1000)


# State
