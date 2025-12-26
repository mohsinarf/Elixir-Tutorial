defmodule KV do
  def start_link do
    Task.start(fn -> loop(%{}) end)
  end

  defp loop(map) do
    receive do
      {:get, key, caller} ->
        send(caller, Map.get(map, key))
        loop(map)

      {:put, key, value} ->
        loop(Map.put(map, key, value))
    end
  end
end


# Start the KV store
{:ok, pid} = KV.start_link

# Put a value
send(pid, {:put, :name, "Alice"})

# Get a value (need to receive the response)
send(pid, {:get, :name, self()})
receive do
  value -> IO.inspect(value, label: "Got value")
end

# Put another value
send(pid, {:put, :age, 30})

# Get it back
send(pid, {:get, :age, self()})
receive do
  value -> IO.inspect(value, label: "Age")
end
