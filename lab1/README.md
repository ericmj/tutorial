# LAB1

### Lab purpose

This lab should teach you how to write and run simple Elixir scripts. You will
learn how to write modules and functions. Additionally you will learn some
functional programming concepts such as recursion, list handling and pattern
matching.


### Lab instructions

Run scripts in your shell with `$ elixir my_script.exs`. You can also require
the file in Elixir's interactive shell `$ iex -r my_script.exs`.

  1. Create a new directory called `lab1` and enter it. Create a module `Lab1` in the file `lab1.exs`, all tasks in this lab should be implemented as functions in this module.

  2. Return the first and third element of a list.

  3. Return all but the three first elements of a list.

  4. Add up all of the elements of a list.

##### For example

```elixir
# my_script.exs

defmodule Lab1 do
  def taskX([_first, second | _rest]) do
    second
  end

  def taskX(_) do
    nil
  end
end
```

```
~ λ iex -r my_script.exs
Erlang/OTP 18 [erts-7.3.1] [source] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false]

Interactive Elixir (1.2.0) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Lab1.taskX [:a, :b, :c]
:b
```


##### Advanced user problems (if you have more time)

  1. Return the minimum value of a list.

  2. Return the average value of a list.

  3. Count the number of occurrences of each atom in a list of atoms.

  4. Can you solve the above tasks by using higher-order functions and using
     functions on the module `Enum` and `List` in Elixir's standard library?


### Links

Getting started guide: http://elixir-lang.org/getting-started/introduction.html

API docs: http://elixir-lang.org/docs/stable/elixir/

  1. Modules http://elixir-lang.org/getting-started/modules.html

  2. Recursion http://elixir-lang.org/getting-started/recursion.html

  3. Pipes http://elixir-lang.org/docs/stable/elixir/Kernel.html#%7C%3E/2

  4. `IO.inspect/1` http://elixir-lang.org/docs/master/elixir/IO.html#inspect/2

  5. Map syntax http://elixir-lang.org/docs/master/elixir/Kernel.SpecialForms.html#%25%7B%7D/1


### Solution ( no peeking :) )

See `solution.ex` file.
