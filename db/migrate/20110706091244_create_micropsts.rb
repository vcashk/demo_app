class CreateMicropsts < ActiveRecord::Migration
  def self.up
    create_table :micropsts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :micropsts
  end
end
