class CreateNfts < ActiveRecord::Migration[7.1]
  def change
    create_table :nfts do |t|
      t.string :name

      t.timestamps
    end
  end
end
