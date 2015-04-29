class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.date :dob
      t.string :nationality
      t.string :awards
      t.string :biography
      t.string :image_url
      t.references :book, index: true

      t.timestamps null: false
    end
    add_foreign_key :authors, :books
  end
end
