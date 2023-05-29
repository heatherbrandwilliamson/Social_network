require_relative './user'

class UserRepository
    def all
    sql = 'SELECT id, email_address, user_name FROM users;'
    result_set = DatabaseConnection.exec_params(sql, []) 
    users = []
      result_set.each do |record|
          user = User.new
          user.id = record['id']
          user.email_address = record['email_address']
          user.user_name = record['user_name']
        
          users << user
   
        end
      return users
    end

    #def find(id)
                # The placeholder $1 is a "parameter" of the SQL query.
        # It needs to be matched to the corresponding element 
        # of the array given in second argument to exec_params.
        # (If we needed more parameters, we would call them $2, $3...
        # and would need the same number of values in the params array).
        #sql = 'SELECT id, email_address, user_name FROM users WHERE id = $1;'
        #sql_params = [id]
        #result_set = DatabaseConnection.exec_params(sql, sql_params)

        #record = result_set[0]
        #user = User.new
        #user.id = record['id']
        #user.email_address = record['email_address']
        #user.user_name = record['user_name']

        #return user
    #end 

    #def create()
    #end 

end 

