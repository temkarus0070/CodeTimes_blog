class CreateAttachments < ActiveRecord::Migration[6.0]
  def change
    create_table :attachments do |t|
      t.string :type
      t.string :link
      t.belongs_to :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
