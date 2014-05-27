User.create(email: "charles@lodgem.com", password: "charles123@", admin: true)  if !User.where(email: "charles@lodgem.com").exists?
User.create(email: "mathieu@lodgem.com", password: "mathieu123@", admin: true)  if !User.where(email: "mathieu@lodgem.com").exists?
User.create(email: "sam@lodgem.com",     password: "samuel123@",  admin: true)  if !User.where(email: "sam@lodgem.com").exists?
User.create(email: "cab@lodgem.com",     password: "charles123@", admin: true)  if !User.where(email: "cab@lodgem.com").exists?
