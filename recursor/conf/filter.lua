adservers=newDS()
adservers:add(dofile("/etc/powerdns/recursor.d/filterlist.lua"))

function preresolve(dq)
  if(not adservers:check(dq.qname)) then
    return false
  end

  if(dq.qtype == pdns.A) then
    dq:addAnswer(dq.qtype, "0.0.0.0", 60)
  elseif(dq.qtype == pdns.AAAA) then
    dq:addAnswer(dq.qtype, "::", 60)
  end
  return true
end

