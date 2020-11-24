class Status
  include Mongoid::Document
  include Mongoid::Timestamps

  field :status, type: String
  field :user_id, type: Integer

  def user
    User.find(self.user_id)
  end
end
