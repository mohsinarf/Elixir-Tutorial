defmodule AgentsPracticeTest do
  use ExUnit.Case
  doctest AgentsPractice

  test "test the agents practice" do
    {:ok, agent} = AgentsPractice.start_link([])
    AgentsPractice.put_data(agent, :name, "John")
    assert AgentsPractice.get_data(agent, :name) == "John"
    AgentsPractice.put_data(agent, :age, 30)
    assert AgentsPractice.get_data(agent, :age) == 30
    AgentsPractice.put_data(agent, :city, "New York")
    assert AgentsPractice.get_data(agent, :city) == "New York"
    AgentsPractice.put_data(agent, :country, "USA")
    assert AgentsPractice.get_data(agent, :country) == "USA"
    AgentsPractice.put_data(agent, :email, "john@example.com")
    assert AgentsPractice.get_data(agent, :email) == "john@example.com"
    AgentsPractice.delete_data(agent, :name)
    assert AgentsPractice.get_data(agent, :name) == nil
  end
end
