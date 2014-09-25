class CreateProgramMembers < ActiveRecord::Migration
  def change
    create_table :program_members do |t|
      t.references :program, index: true
      t.references :member, index: true

      t.timestamps
    end
  end
end
