require 'randomuser'

users = RandomUser.generate(nationality: "us", number: 30)

users.each do |user|
  x = { 
    first_name: user["name"]["first"],
    last_name: user["name"]["last"],
    email: user["email"],
    username: user["login"]["username"],
    password: user["login"]["password"],
    profile_picture: user["picture"]["large"]
  }

  p x
end
      

# Need:
# 
# First Name        ["name"]["first"]
# Last Name         ["name"]["last"]
# Email             ["email"]
# Username          ["login"]["username"]
# Password          ["login"]["password"]
# Profile Picture   ["picture"]["large"]