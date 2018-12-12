class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
        t.column :name, :string
        t.column :course_id, :integer

        t.timestamps
    end
  end
end
