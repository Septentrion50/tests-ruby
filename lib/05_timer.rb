def time_string(sec)
  t = Time.gm(2021, "jan", 1, 0, 0, 0)
  a = t + sec
  return a.strftime("%H:%M:%S")
end
