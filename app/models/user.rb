class User < ApplicationRecord
  has_secure_password
  enum role: [:registered_user, :merchant_admin, :admin_user]

  after_initialize do 
    if self.new_record?
      self.role ||= :registered_user
    end
  end
end
