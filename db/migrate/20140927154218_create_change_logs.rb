class CreateChangeLogs < ActiveRecord::Migration
  def change
    create_table :change_logs do |t|
      t.string :title
      t.references :program, index: true
      t.text :content
      t.references :author, index: true

      t.timestamps
    end
  end
end
