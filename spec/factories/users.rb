FactoryGirl.define do
    factory :user do
    name 'user1'
    email 'user@test.org'
    password "foobar"
    password_confirmation "foobar"
  end
end
