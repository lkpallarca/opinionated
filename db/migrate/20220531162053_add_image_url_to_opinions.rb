class AddImageUrlToOpinions < ActiveRecord::Migration[6.1]
  def change
    add_column :opinions, :image_url, :text
  end
end
