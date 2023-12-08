class CreateNfts < ActiveRecord::Migration[7.1]
  def change
    create_table :nfts do |t|
      t.string :name
      t.integer :token
      t.integer :user_id
      t.timestamps
    end
  end
end
