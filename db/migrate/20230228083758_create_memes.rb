class CreateMemes < ActiveRecord::Migration[7.0]
  def change
    create_table :memes do |t|
      t.string  :title
      t.string :message
      t.integer :user_id
      t.timestamps
    end
  end
end
