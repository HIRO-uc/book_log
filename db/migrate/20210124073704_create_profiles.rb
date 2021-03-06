class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|

      t.string     :nickname
      t.string     :self_introduction, default: ''
      t.string     :website,default: ''
      t.references :user
      t.timestamps
    end
  end
end
