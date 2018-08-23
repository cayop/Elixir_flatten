defmodule Flatten do
  @doc """
  This function is a substitute of List.flatten of elixir.
  It's a simple recursion. As usual we need defiend the case more basic, when the list is []
  and next the rest of the cases.

  ## Example of use:
      iex -S mix
      iex> alias Flatten
      iex> Flatten.flat [[1,2,[3]],4]
      [1, 2, 3, 4]

  """

  def flat l , result \\ [] do
    case l == [] do
      true -> result # case1
      false ->
        [head | tail] = l
        cond do
          not is_list(head) and tail == [] -> result ++ [head] # case2
          not is_list(head) -> flat(tail, result ++ [head])    # case3
          is_list(head) and tail == [] -> flat head, result    # case4
          is_list(head) -> flat(head, result) ++ flat(tail)    # case5
        end
    end

  end
end
