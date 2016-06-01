class Todo < ActiveRecord::Base


  # def initialize
  #   @completed = false
  # end

  def completed?
    # @completed
    completed_at?
  end
  #
  # def complete
  #   @completed = true
  # end

end
