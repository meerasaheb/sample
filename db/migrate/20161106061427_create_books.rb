class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      # t.string :author
      t.belongs_to :author

      t.timestamps
    end
  end
end
