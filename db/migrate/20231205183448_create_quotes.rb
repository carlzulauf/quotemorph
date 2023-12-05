class CreateQuotes < ActiveRecord::Migration[7.1]
  def change
    create_table :quotes do |t|
      t.text :body
      t.string :author
      t.text :context
      t.integer :order

      t.timestamps
    end
  end
end
