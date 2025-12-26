# float
y = 1.0

# Integer
x = 1

# Bolean
condition = true
condiiton_sec = false

# atoms
:error = :error

# Strings
IO.puts("Sample text")
str = "This is " <> "Elixir script"
IO.puts(str)

# Structural comparison
x = true
y = true
z = false

IO.puts(x == y)
IO.puts(x == z)

# and, or, not are boolean operators; they *require* a boolean as their left operand.
# and / or are short-circuiting: for `and`, if the left side is false, the right side is not evaluated; for `or`, if the left side is true, the right side is not evaluated.
# && and || are also short-circuiting logical operators, but they accept any value (not just booleans); Elixir treats only `false` and `nil` as falsy, everything else is truthy.
# `and` and `or` always return a boolean, while `&&` and `||` return the last evaluated value.

IO.puts(false and nil)
IO.puts(false and 0)
IO.puts(false and "")
IO.puts(false and [])
IO.puts(false and {})
IO.puts(false and :error)
IO.puts(false and :ok)
IO.puts(false and :error)

# &&, ||, <=, >=, == use for structural comparison


# List
first_list = [1, 2, "Text", true]
second_list = [4, 6, 3]
thrid_list = first_list ++ second_list
IO.inspect(thrid_list)

# Tuples
tuple = {:ok, "File contents"}
IO.puts(elem(tuple, 1))
