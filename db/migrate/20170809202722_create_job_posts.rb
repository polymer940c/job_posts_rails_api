class CreateJobPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :job_posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
