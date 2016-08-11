class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :like
      t.string :voter_ip

      t.timestamps null: false
    end
  end
end
