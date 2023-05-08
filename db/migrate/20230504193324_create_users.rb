class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.belongs_to :city
      t.string :pseudo
      t.text :description
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
