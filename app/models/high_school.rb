class HighSchool < ActiveRecord::Base

  def order_by_state
    HighSchool.order(high_school_name: :asc).group("state(state)").all
  end

end

