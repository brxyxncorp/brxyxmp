class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
		t.string :title
		t.text :body
		
		t.string :name
		t.string :excerpt
		t.string :author
		t.string :status
		t.string :type
		t.string :comment_status
		t.integer :comment_count

		t.timestamps
    end
  end
end
