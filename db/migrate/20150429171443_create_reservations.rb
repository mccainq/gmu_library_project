class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :reserved_on
      t.date :due_on
      t.references :user, index: true
      t.references :book, index: true

      t.timestamps null: false
    end
    add_foreign_key :reservations, :users
    add_foreign_key :reservations, :books
  end
end
