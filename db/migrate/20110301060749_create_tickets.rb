class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.references :user
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
