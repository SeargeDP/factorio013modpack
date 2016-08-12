for i, inserter in pairs(data.raw.inserter) do
  if not inserter.hand_size then
    inserter.hand_size = 1.5
  end
end
