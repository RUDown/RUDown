class CreateReqs < ActiveRecord::Migration
  def change
    create_table :events_users, :force => true, :id => false do |t|
      t.integer 'event_id', :null => false
      t.integer 'user_id', :null => false
    end
  end
end
