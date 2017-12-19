User.create!([
  {email: "fernando.montero.perez@gmail.com", encrypted_password: "$2a$11$dLvnNVXjmUNvGcgqRMwkgeFne5EI6oHNQ7HALef8qsJ.aRq/WqHLu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-12-19 20:35:22", last_sign_in_at: "2017-12-19 20:35:22", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Company.create!([
  {titulo: "New Balance Canarias"}
])
Shop.create!([
  {titulo: "New Balance La Laguna", dir1: "", dir2: "", dir3: "", dir4: "", company_id: 1}
])
