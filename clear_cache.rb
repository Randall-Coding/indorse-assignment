

t_all = Transaction.all
delta = 45.minutes   #1.hours

t_all.each do |t|
  t.delete if (t.created_at + delta < Time.zone.now )  		
end

