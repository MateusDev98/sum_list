defmodule SumList do
  @doc """
  Chama a função sum com a lista fornecida e o valor inicial do acumulador de 0.

  ## Exemplos

    iex> SumList.call([1, 2, 3])
    6

  Recebe uma lista e retorna a soma de todos os elementos da lista.

  ## Parâmetros

  - `list` - A lista de números a serem somados.

  ## Retorno

  Retorna a soma de todos os elementos da lista.

  """
  def call(list), do: sum(list, 0)

  def call_enum_sum(list), do: Enum.sum(list)

  def call_enum_max(list), do: Enum.max(list)

  def call_enum_min(list), do: Enum.min(list)

  def call_enum_member(list), do: Enum.member?(list, 3)

  def call_enum_any(list), do: Enum.any?(list, fn x -> x >= 3 end)

  def call_enum_map(list), do: Enum.map(list, fn item -> item * 2 end)

  def call_enum_map_tuple(tuple), do: Enum.map(tuple, fn item -> item end)

  def call_enum_map_ignored(list) do
    [_head | tail] = list
    IO.inspect(_head, label: "head")
    Enum.map(list, fn x -> x + 2 end)
  end

  def call_enum_map(list, multiplier) do
    Enum.map(list, fn x -> multiply(x, multiplier) end)
  end

  defp multiply(a, b), do: a * b

  defp sum([], acc), do: acc

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end
end
