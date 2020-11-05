class IssueTag < ActiveRecord::Migration[6.0]
  def change
    create_table :issues_tags, id:false do |t|
      t.belongs_to :issue
      t.belongs_to :tag
    end
  end
end
