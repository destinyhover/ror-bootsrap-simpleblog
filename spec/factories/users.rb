FactoryBot.define do
  factory :user do
    email { "sdfsdfsdf@example.com" }  # Просто фиктивный email
    password { "password" }
    password_confirmation { "password" }
    username { "sdfsdnnnnnnn" }  # Фиктивное имя пользователя
  end
end