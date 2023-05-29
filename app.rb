require_relative 'lib/database_connection'
require_relative 'lib/user_repository'

DatabaseConnection.connect('social_network')

user_repository = UserRepository.new

user_repository.all.each do |user|
  p user.id, user.email_address, user.user_name
end 

repo = UserRepository.new
user = repo.find(1)
puts user.user_name

