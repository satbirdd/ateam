class CreatePostViewers < ActiveRecord::Migration
  def change
    create_table :post_viewers do |t|
      t.references :post, index: true
      t.references :viewer, index: true

      t.timestamps
    end
  end
end
