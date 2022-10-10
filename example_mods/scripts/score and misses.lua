function onUpdatePost()
    if ratingFC == '' then -- if the FC is nothing
        setProperty('scoreTxt.text', 'Score: ' .. score .. ' | Combo Breaks: ' .. misses .. ' | Accuracy: 0%')
    else
        setProperty('scoreTxt.text', 'Score: ' .. score .. ' | Combo Breaks: ' .. misses .. ' | Accuracy: ' ..round(rating * 100, 2).. '% [' ..ratingFC..']')
    end
end

function round(x, n)
  n = math.pow(10, n or 0)
  x = x * n
  if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
  return x / n
end