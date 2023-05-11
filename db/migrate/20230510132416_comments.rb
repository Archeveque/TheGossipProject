class Comments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.belongs_to :gossip
      t.belongs_to :user
      t.text :content

      t.timestamps
    end
  end
end
