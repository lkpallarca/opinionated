class CreateOpinions < ActiveRecord::Migration[6.1]
  def change
    create_table :opinions do |t|
      t.string :subject, null: false
      t.text :body, :null: false

      t.timestamps
    end
  end
end
