class CreateFaqTags < ActiveRecord::Migration[5.0]
  def change
    create_table :faq_tags do |t|
      t.references :faq, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
