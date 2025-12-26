defmodule AgentsPractice do
  @moduledoc """
  Documentation for `AgentsPractice`.
  """
  use Agent

 def example do
  {:ok, grocery_list} = Agent.start_link(fn -> [] end)
  Agent.update(grocery_list, fn _list -> 123 end)
  Agent.get(grocery_list, &(&1) )
  Agent.update(grocery_list, fn items -> ["eggs" | items] end)
  Agent.get(grocery_list, &(&1))
 end


 def start_link(opts) do
  Agent.start_link(fn -> %{} end, opts)
 end

 def get_data(bucket, key) do
  Agent.get(bucket, fn map -> Map.get(map, key) end)
 end

 def put_data(bucket, key, value) do
  Agent.update(bucket, fn map -> Map.put(map, key, value) end)
 end

 def delete_data(bucket, key) do
  Agent.update(bucket, fn map -> Map.delete(map, key) end)
 end

end
