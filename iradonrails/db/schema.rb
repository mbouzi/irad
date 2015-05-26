ActiveRecord::Schema.define(version: 20150525144038) do


  enable_extension "plpgsql"

  create_table "artist_genres", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "artist_genres", ["artist_id"], name: "index_artist_genres_on_artist_id", using: :btree
  add_index "artist_genres", ["genre_id"], name: "index_artist_genres_on_genre_id", using: :btree

  create_table "artists", force: :cascade do |t|
    t.integer  "record_label_id"
    t.string   "stage_name",      null: false
    t.string   "birth_name"
    t.integer  "age",             null: false
    t.text     "description",     null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",        limit: 100, null: false
    t.text     "description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "record_labels", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "founding_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
