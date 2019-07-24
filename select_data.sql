SELECT users.email, users.name, SUM(purchases.sum)
  FROM users JOIN purchases ON users.id = purchases.user_id JOIN items ON items.id = purchases.item_id
   WHERE purchases.date >= '2019-02-02' 
    or purchases.date <= '2019-02-03'
	and items.type = 'video'
	and users.confirmed = 't'
	group by users.email, users.name;