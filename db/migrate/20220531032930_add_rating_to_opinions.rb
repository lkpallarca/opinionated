class AddRatingToOpinions < ActiveRecord::Migration[6.1]
  def change
    add_column :opinions, :rating, :integer, :null => false
  end
end
