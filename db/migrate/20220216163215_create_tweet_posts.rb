class CreateTweetPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :tweet_posts do |t|
      t.string :body

      t.timestamps
    end
  end
end
