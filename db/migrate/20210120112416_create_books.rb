class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|

      t.string  :title
      t.string  :authors
      t.string  :published_date
      t.string  :image_link
      t.integer :isbn
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
