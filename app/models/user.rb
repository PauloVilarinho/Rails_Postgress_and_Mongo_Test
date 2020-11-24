class User < ApplicationRecord
  def status
    Status.where(user_id: id).order_by({ created_at: -1 }).one
  end

  def status=(status)
    Status.create!(user_id: id, status: status)
  end

  def statuses
    Status.where(user_id: id).order_by({ created_at: -1 }).to_a
  end
end
