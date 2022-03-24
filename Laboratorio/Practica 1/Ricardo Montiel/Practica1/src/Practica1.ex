defmodule Module1 do

  def fibonacci(0) do 0 end

  def fibonacci(1) do  1 end

  def fibonacci(n) do
    if (n < 0 ) do
    :error
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

def factorial(n) do
  if (n < 0 ) do
    :error
  else
    if (n === 1 || n ===0 ) do
      1;
    else
      n * factorial(n - 1);
    end
  end
end

#Dado un número n, escoger un número aleatorio en el rango [1, n], digamos k
#y determinar cuál es la probabilidad de que salga un número aleatorio
#entre [k, n], el chiste obtener el número aleatorio.

def random_probability(n) do
  if( n <= 0) do
    :error
else
    k = :rand.uniform(n)
    (n-(k-1))/n
  end
end

def reversa(list) do
  reverse(list, [])
end

def reverse([], reversed) do
  reversed
end

def reverse([h|t], reversed) do
  reverse(t, [h|reversed])
end

def auxdigits(n) do
  if (n<10) do
    [n]
  else
    [rem(n,10)|auxdigits(div(n,10))]
  end
end

def digits(n) do
  reversa(auxdigits(n))
end

end
defmodule Module2 do

def test do
  fn  -> :ok end
end


def solve(a, b, n) do
  aux = primosRelativos(a,n)
  if (aux == 1) do
    "Tiene solución"
    x = div(b+n, a)
  else
    :error
  end
end

def primosRelativos(a, b) do
  if (a<b) do
    primosRelativos(b, a)
  end
  if (b==0) do
    a
  else
    primosRelativos(b, rem(a, b))
  end
end

end

defmodule Module3 do

  def rev(list) do
    auxRev(list, [])
  end

  def auxRev([], rev) do
    rev
  end

  def auxRev([h|t], rev) do
    auxRev(t, [h|rev])
  end

  def pertenece( x, lst) do
    if (lst == []) do
      False
    else
      if (hd(lst) == x) do
        True
      else
        pertenece(x,tl(lst))
      end
    end
  end

  def elm_elem(x,lst) do
    if (lst == []) do
      []
    else
      if (hd(lst) == x) do
        elm_elem(x,tl(lst))
      else
        [hd(lst)] ++ elm_elem(x,tl(lst))
      end
    end
  end

  def elim_dup(lst) do
    if (lst == []) do
      []
    else
      [hd(lst)]++ elim_dup(elm_elem(hd(lst),lst))
    end
  end

  def sieve_of_erathostenes(n) do
    2..n
    |> Enum.to_list
    |> _filter_range([])
  end

  def _filter_range([], acc), do: acc

  def _filter_range(range=[h|_], acc) do
    range
    |> Enum.reject(&(rem(&1, h) == 0))
    |> _filter_range(acc ++ [h])
  end
end


 defmodule Module4 do

  def monstructure() do
    :ok
  end

end
