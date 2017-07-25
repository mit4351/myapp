class User < ApplicationRecord
    # for authlogic
    acts_as_authentic do |c|
    c.login_field = :email
    end
end
