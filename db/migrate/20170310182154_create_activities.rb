class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :address
      t.string :category
      t.string :photo_url
      t.string :website_url
      t.string :description

      t.timestamps
    end
  end
end
