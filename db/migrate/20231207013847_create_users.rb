class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :token
      t.boolean :is_login, :default => false
      
      t.timestamps
    end
  end
end
