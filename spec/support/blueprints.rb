require 'machinist/active_record'

# Add your blueprints here.

User.blueprint do
  name {'Josemar Davi Luedke'}
  email {'josemarluedke@gmail.com'}
  birthdate {Date.current}
  password {'josemar'}
  password_confirmation {'josemar'}
end

Authorization.blueprint do
  user {User.make!}
  provider {"facebook"}
  uid {10000}
end

State.blueprint do
  name {'Rio grande do sul'}
  uf {'RS'}
end