class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|

      t.string     :title
      t.string     :authors
      t.string     :publisher
      t.string     :published_date
      t.text       :description
      t.text       :image_link
      t.text       :info_link
      t.string     :isbn
      t.integer    :status_id
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
