class AuthService
  include Mongoid::Document
  field :user_id, type: Integer
  field :provider, type: String
  field :uid, type: String
  field :uname, type: String
  field :uemail, type: String
  
  attr_accessible :provider, :uid, :uname, :uemail
  embedded_in :user
end
