# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150309211824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daw_codigos", force: :cascade do |t|
    t.integer  "cod_valor"
    t.string   "cod_estado"
    t.integer  "daw_promo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "daw_codigos", ["daw_promo_id"], name: "index_daw_codigos_on_daw_promo_id", using: :btree

  create_table "daw_comunicados", force: :cascade do |t|
    t.string   "com_nombre"
    t.text     "com_texto"
    t.string   "com_tipocomunicado"
    t.string   "com_estado"
    t.date     "com_fechaenvio"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "daw_curso_comunicados", force: :cascade do |t|
    t.date     "curcom_fechaenviado"
    t.integer  "daw_comunicado_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "daw_curso_comunicados", ["daw_comunicado_id"], name: "index_daw_curso_comunicados_on_daw_comunicado_id", using: :btree

  create_table "daw_curso_encuests", force: :cascade do |t|
    t.date     "curenc_periodo"
    t.integer  "daw_encuest_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "daw_curso_encuests", ["daw_encuest_id"], name: "index_daw_curso_encuests_on_daw_encuest_id", using: :btree

  create_table "daw_curso_promos", force: :cascade do |t|
    t.integer  "daw_promo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "daw_curso_promos", ["daw_promo_id"], name: "index_daw_curso_promos_on_daw_promo_id", using: :btree

  create_table "daw_encuests", force: :cascade do |t|
    t.string   "enc_nombre"
    t.text     "enc_descripcion"
    t.string   "enc_tipoencuest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "daw_hist_cambios", force: :cascade do |t|
    t.integer  "hcam_idtabla"
    t.integer  "hcam_idregistro"
    t.date     "hcam_fecha"
    t.text     "hcam_descripcion"
    t.string   "hcam_campo"
    t.string   "hcam_estado"
    t.string   "hcam_login"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "daw_log_errors", force: :cascade do |t|
    t.text     "loge_sesion"
    t.text     "loge_descripcion"
    t.date     "loge_fecha"
    t.string   "loge_estado"
    t.text     "loge_error"
    t.text     "loge_errorbd"
    t.text     "loge_argumento1"
    t.text     "loge_argumento2"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "daw_log_transaccions", force: :cascade do |t|
    t.text     "logt_sesion"
    t.text     "logt_descripcion"
    t.date     "logt_fecha"
    t.string   "logt_estado"
    t.text     "logt_transaccion"
    t.text     "logt_argumento1"
    t.text     "logt_argumento2"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "daw_matricula_promos", force: :cascade do |t|
    t.integer  "daw_promo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "daw_matricula_promos", ["daw_promo_id"], name: "index_daw_matricula_promos_on_daw_promo_id", using: :btree

  create_table "daw_preguntaes", force: :cascade do |t|
    t.text     "pre_encabezado"
    t.integer  "pre_orden"
    t.integer  "daw_encuest_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "daw_preguntaes", ["daw_encuest_id"], name: "index_daw_preguntaes_on_daw_encuest_id", using: :btree

  create_table "daw_promos", force: :cascade do |t|
    t.string   "promo_nombre"
    t.float    "promo_porcentaje"
    t.date     "promo_fechaini"
    t.date     "promo_fechafin"
    t.string   "promo_tipopromocion"
    t.string   "promo_estado"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "daw_registros", force: :cascade do |t|
    t.integer  "reg_idregtab"
    t.text     "reg_descripcion"
    t.string   "reg_char"
    t.string   "reg_varchar"
    t.float    "reg_float"
    t.boolean  "reg_boolean"
    t.date     "reg_fecha"
    t.string   "reg_activo"
    t.integer  "daw_tabla_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "daw_registros", ["daw_tabla_id"], name: "index_daw_registros_on_daw_tabla_id", using: :btree

  create_table "daw_respuestaes", force: :cascade do |t|
    t.integer  "res_valor"
    t.date     "res_fecha"
    t.integer  "daw_preguntae_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "daw_respuestaes", ["daw_preguntae_id"], name: "index_daw_respuestaes_on_daw_preguntae_id", using: :btree

  create_table "daw_tablas", force: :cascade do |t|
    t.string   "tab_nombre"
    t.string   "tab_nemonico"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "daw_codigos", "daw_promos"
  add_foreign_key "daw_curso_comunicados", "daw_comunicados"
  add_foreign_key "daw_curso_encuests", "daw_encuests"
  add_foreign_key "daw_curso_promos", "daw_promos"
  add_foreign_key "daw_matricula_promos", "daw_promos"
  add_foreign_key "daw_preguntaes", "daw_encuests"
  add_foreign_key "daw_registros", "daw_tablas"
  add_foreign_key "daw_respuestaes", "daw_preguntaes"
end
