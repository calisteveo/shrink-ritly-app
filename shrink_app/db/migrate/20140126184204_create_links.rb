class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url_link
      t.string :random_string
      t.string :created_at
      t.string :updated_at

      t.timestamps
    end
  end
end
