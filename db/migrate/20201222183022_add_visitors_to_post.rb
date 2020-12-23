class AddVisitorsToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :views, :integer, default: 0
  end
end
