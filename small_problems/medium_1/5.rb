def diamond(n)
  for i in (1..n)
    if i.odd?
    puts"#{' ' * ((n-i)/2)} #{'*' * i} #{' ' * ((n-i)/2)}"
    end
  end
  for i in (n-2).downto(1) do
    if i.odd?
    puts"#{' ' * ((n-i)/2)} #{'*' * i} #{' ' * ((n-i)/2)}"
    end
  end
end

diamond(9)