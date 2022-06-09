class User < ApplicationRecord
  enum :role, { user: 0, manager: 1, tech: 2, admin: 3, non_user: 4 }
end
