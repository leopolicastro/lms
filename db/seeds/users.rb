User.create(name: "Admin", email: "admin@example.com", admin: true, password: "abc123", password_confirmation: "abc123")
User.create(name: "non admin", email: "some@example.com", admin: false, password: "abc123", password_confirmation: "abc123")

puts "Created #{User.count} users"
