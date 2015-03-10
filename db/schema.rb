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

ActiveRecord::Schema.define(version: 20150310174841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daw_actividads", force: :cascade do |t|
    t.string   "act_nombre"
    t.text     "act_descripcion"
    t.boolean  "act_disponible"
    t.time     "act_duracion"
    t.string   "act_estado"
    t.integer  "act_cantidadpreg"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "daw_alianzas", force: :cascade do |t|
    t.integer  "ali_tipojuridico"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "daw_archivos", force: :cascade do |t|
    t.text     "archivo_linea"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "daw_asignaturas", force: :cascade do |t|
    t.string   "asig_nombre"
    t.text     "asig_descripcion"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "daw_asistirs", force: :cascade do |t|
    t.date     "asist_fecha"
    t.integer  "daw_inscripcion_id"
    t.integer  "daw_tema_mate_acad_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "daw_asistirs", ["daw_inscripcion_id"], name: "index_daw_asistirs_on_daw_inscripcion_id", using: :btree
  add_index "daw_asistirs", ["daw_tema_mate_acad_id"], name: "index_daw_asistirs_on_daw_tema_mate_acad_id", using: :btree

  create_table "daw_boletins", force: :cascade do |t|
    t.integer  "bltin_nota"
    t.string   "bltin_progresoasist"
    t.string   "bltin_progresoeval"
    t.float    "bltin_porcentaje"
    t.date     "bltin_fechafin"
    t.integer  "daw_curso_id"
    t.integer  "daw_inscripcion_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "daw_boletins", ["daw_curso_id"], name: "index_daw_boletins_on_daw_curso_id", using: :btree
  add_index "daw_boletins", ["daw_inscripcion_id"], name: "index_daw_boletins_on_daw_inscripcion_id", using: :btree

  create_table "daw_calificacions", force: :cascade do |t|
    t.integer  "calif_notaobtenida"
    t.boolean  "calif_presento"
    t.date     "calif_fecha"
    t.integer  "daw_actividad_id"
    t.integer  "daw_inscripcion_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "daw_calificacions", ["daw_actividad_id"], name: "index_daw_calificacions_on_daw_actividad_id", using: :btree
  add_index "daw_calificacions", ["daw_inscripcion_id"], name: "index_daw_calificacions_on_daw_inscripcion_id", using: :btree

  create_table "daw_codigos", force: :cascade do |t|
    t.integer  "cod_valor"
    t.string   "cod_estado"
    t.integer  "daw_promo_id"
    t.integer  "daw_inscripcion_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "daw_codigos", ["daw_inscripcion_id"], name: "index_daw_codigos_on_daw_inscripcion_id", using: :btree
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

  create_table "daw_contratos", force: :cascade do |t|
    t.integer  "cont_tiempo"
    t.date     "cont_fechaini"
    t.date     "cont_fechafin"
    t.string   "cont_archivo"
    t.string   "cont_descripcion"
    t.integer  "daw_persona_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "daw_contratos", ["daw_persona_id"], name: "index_daw_contratos_on_daw_persona_id", using: :btree

  create_table "daw_curso_comunicados", force: :cascade do |t|
    t.date     "curcom_fechaenviado"
    t.integer  "daw_comunicado_id"
    t.integer  "daw_curso_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "daw_curso_comunicados", ["daw_comunicado_id"], name: "index_daw_curso_comunicados_on_daw_comunicado_id", using: :btree
  add_index "daw_curso_comunicados", ["daw_curso_id"], name: "index_daw_curso_comunicados_on_daw_curso_id", using: :btree

  create_table "daw_curso_encuests", force: :cascade do |t|
    t.date     "curenc_periodo"
    t.integer  "daw_encuest_id"
    t.integer  "daw_curso_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "daw_curso_encuests", ["daw_curso_id"], name: "index_daw_curso_encuests_on_daw_curso_id", using: :btree
  add_index "daw_curso_encuests", ["daw_encuest_id"], name: "index_daw_curso_encuests_on_daw_encuest_id", using: :btree

  create_table "daw_curso_matriculas", force: :cascade do |t|
    t.integer  "daw_curso_id"
    t.integer  "daw_matricula_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "daw_curso_matriculas", ["daw_curso_id"], name: "index_daw_curso_matriculas_on_daw_curso_id", using: :btree
  add_index "daw_curso_matriculas", ["daw_matricula_id"], name: "index_daw_curso_matriculas_on_daw_matricula_id", using: :btree

  create_table "daw_curso_promos", force: :cascade do |t|
    t.integer  "daw_promo_id"
    t.integer  "daw_curso_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "daw_curso_promos", ["daw_curso_id"], name: "index_daw_curso_promos_on_daw_curso_id", using: :btree
  add_index "daw_curso_promos", ["daw_promo_id"], name: "index_daw_curso_promos_on_daw_promo_id", using: :btree

  create_table "daw_curso_temas", force: :cascade do |t|
    t.integer  "cursotema_ordentema"
    t.integer  "cursotema_semana"
    t.integer  "daw_curso_id"
    t.integer  "daw_tema_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "daw_curso_temas", ["daw_curso_id"], name: "index_daw_curso_temas_on_daw_curso_id", using: :btree
  add_index "daw_curso_temas", ["daw_tema_id"], name: "index_daw_curso_temas_on_daw_tema_id", using: :btree

  create_table "daw_cursos", force: :cascade do |t|
    t.string   "curso_nombre"
    t.text     "curso_descripcionmeta"
    t.text     "curso_descripcioncurso"
    t.text     "curso_descripcionpasos"
    t.string   "curso_estado"
    t.integer  "curso_periodo"
    t.integer  "curso_tipolapso"
    t.integer  "curso_tipoprecio"
    t.boolean  "curso_visible"
    t.integer  "daw_periodo_acad_id"
    t.integer  "daw_grado_id"
    t.integer  "daw_asignatura_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "daw_cursos", ["daw_asignatura_id"], name: "index_daw_cursos_on_daw_asignatura_id", using: :btree
  add_index "daw_cursos", ["daw_grado_id"], name: "index_daw_cursos_on_daw_grado_id", using: :btree
  add_index "daw_cursos", ["daw_periodo_acad_id"], name: "index_daw_cursos_on_daw_periodo_acad_id", using: :btree

  create_table "daw_directors", force: :cascade do |t|
    t.date     "dire_fechaingr"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "daw_encuests", force: :cascade do |t|
    t.string   "enc_nombre"
    t.text     "enc_descripcion"
    t.string   "enc_tipoencuest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "daw_estudiantes", force: :cascade do |t|
    t.string   "estu_nacionalidad"
    t.string   "estu_biografia"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "daw_evaluacions", force: :cascade do |t|
    t.integer  "eval_ponderacion"
    t.date     "eval_periodo"
    t.integer  "eval_orden"
    t.integer  "eval_tipoeval"
    t.integer  "daw_actividad_id"
    t.integer  "daw_curso_tema_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "daw_evaluacions", ["daw_actividad_id"], name: "index_daw_evaluacions_on_daw_actividad_id", using: :btree
  add_index "daw_evaluacions", ["daw_curso_tema_id"], name: "index_daw_evaluacions_on_daw_curso_tema_id", using: :btree

  create_table "daw_grados", force: :cascade do |t|
    t.string   "grado_nombre"
    t.text     "grado_descripcion"
    t.string   "grado_estado"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
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

  create_table "daw_inscripcions", force: :cascade do |t|
    t.date     "insc_fechaini"
    t.date     "insc_fechafin"
    t.string   "insc_estado"
    t.integer  "insc_tipo"
    t.string   "insc_estadopago"
    t.string   "insc_estadodoc"
    t.integer  "daw_curso_id"
    t.integer  "daw_matricula_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "daw_inscripcions", ["daw_curso_id"], name: "index_daw_inscripcions_on_daw_curso_id", using: :btree
  add_index "daw_inscripcions", ["daw_matricula_id"], name: "index_daw_inscripcions_on_daw_matricula_id", using: :btree

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

  create_table "daw_lugars", force: :cascade do |t|
    t.string   "lugar_nombre"
    t.string   "lugar_tipo"
    t.integer  "lugar_nivel"
    t.integer  "daw_lugar_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "daw_lugars", ["daw_lugar_id"], name: "index_daw_lugars_on_daw_lugar_id", using: :btree

  create_table "daw_mate_acads", force: :cascade do |t|
    t.string   "mac_nombre"
    t.text     "mac_descrip"
    t.string   "mac_archivo"
    t.boolean  "mac_disponible"
    t.string   "mac_estado"
    t.string   "mac_url"
    t.integer  "mac_tipo"
    t.string   "mac_palabsclave", default: [],              array: true
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "daw_matricula_promos", force: :cascade do |t|
    t.integer  "daw_promo_id"
    t.integer  "daw_matricula_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "daw_matricula_promos", ["daw_matricula_id"], name: "index_daw_matricula_promos_on_daw_matricula_id", using: :btree
  add_index "daw_matricula_promos", ["daw_promo_id"], name: "index_daw_matricula_promos_on_daw_promo_id", using: :btree

  create_table "daw_matriculas", force: :cascade do |t|
    t.string   "matri_nombre"
    t.string   "matri_estado"
    t.integer  "matri_tipoprecio"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "daw_opcions", force: :cascade do |t|
    t.string   "opc_descripcion"
    t.boolean  "opc_correcta"
    t.text     "opc_motivo"
    t.integer  "opc_tipo"
    t.integer  "daw_pregunt_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "daw_opcions", ["daw_pregunt_id"], name: "index_daw_opcions_on_daw_pregunt_id", using: :btree

  create_table "daw_periodo_acads", force: :cascade do |t|
    t.string   "pac_nombre"
    t.text     "pac_descripcion"
    t.date     "pac_fechaini"
    t.date     "pac_fechafin"
    t.string   "pac_estado"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "daw_personas", force: :cascade do |t|
    t.string   "pers_cedula"
    t.string   "pers_primernom"
    t.string   "pers_segundonom"
    t.string   "pers_primerape"
    t.string   "pers_segundoape"
    t.string   "pers_estadocivil"
    t.date     "pers_fechanac"
    t.string   "pers_sexo"
    t.string   "pers_foto"
    t.string   "pers_email"
    t.string   "pers_tlf1"
    t.string   "pers_tlf2"
    t.integer  "pers_tipopers"
    t.integer  "daw_lugar_id"
    t.integer  "daw_usuario_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "daw_personas", ["daw_lugar_id"], name: "index_daw_personas_on_daw_lugar_id", using: :btree
  add_index "daw_personas", ["daw_usuario_id"], name: "index_daw_personas_on_daw_usuario_id", using: :btree

  create_table "daw_preguntaes", force: :cascade do |t|
    t.text     "pre_encabezado"
    t.integer  "pre_orden"
    t.integer  "daw_encuest_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "daw_preguntaes", ["daw_encuest_id"], name: "index_daw_preguntaes_on_daw_encuest_id", using: :btree

  create_table "daw_pregunts", force: :cascade do |t|
    t.string   "preg_descripcion"
    t.integer  "preg_ponderacion"
    t.integer  "preg_cantopcion"
    t.integer  "preg_tipo"
    t.integer  "daw_actividad_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "daw_pregunts", ["daw_actividad_id"], name: "index_daw_pregunts_on_daw_actividad_id", using: :btree

  create_table "daw_prof_asists", force: :cascade do |t|
    t.string   "pa_profesion"
    t.integer  "pa_tipo"
    t.date     "pa_fechaingr"
    t.string   "pa_biografia"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

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

  create_table "daw_reclamos", force: :cascade do |t|
    t.string   "recl_descripcion"
    t.time     "recl_fecha"
    t.boolean  "recl_atendido"
    t.integer  "recl_tiporeclamo"
    t.integer  "daw_persona_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "daw_reclamos", ["daw_persona_id"], name: "index_daw_reclamos_on_daw_persona_id", using: :btree

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

  create_table "daw_relacions", force: :cascade do |t|
    t.integer  "rela_tiporepresentante"
    t.integer  "daw_persona_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "daw_relacions", ["daw_persona_id"], name: "index_daw_relacions_on_daw_persona_id", using: :btree

  create_table "daw_representantes", force: :cascade do |t|
    t.string   "repr_profesion"
    t.boolean  "repr_sostenfamiliar"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "daw_respuestaes", force: :cascade do |t|
    t.integer  "res_valor"
    t.date     "res_fecha"
    t.integer  "daw_preguntae_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "daw_respuestaes", ["daw_preguntae_id"], name: "index_daw_respuestaes_on_daw_preguntae_id", using: :btree

  create_table "daw_respuests", force: :cascade do |t|
    t.string   "resp_puntaje"
    t.integer  "resp_valor"
    t.integer  "daw_opcion_id"
    t.integer  "daw_calificacion_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "daw_respuests", ["daw_calificacion_id"], name: "index_daw_respuests_on_daw_calificacion_id", using: :btree
  add_index "daw_respuests", ["daw_opcion_id"], name: "index_daw_respuests_on_daw_opcion_id", using: :btree

  create_table "daw_retiros", force: :cascade do |t|
    t.date     "ret_fecha"
    t.string   "ret_motivo"
    t.integer  "daw_persona_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "daw_retiros", ["daw_persona_id"], name: "index_daw_retiros_on_daw_persona_id", using: :btree

  create_table "daw_rol_pers_inscs", force: :cascade do |t|
    t.string   "rpi_tiporol"
    t.integer  "daw_persona_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "daw_rol_pers_inscs", ["daw_persona_id"], name: "index_daw_rol_pers_inscs_on_daw_persona_id", using: :btree

  create_table "daw_staffs", force: :cascade do |t|
    t.date     "staff_fechaingr"
    t.date     "staff_fechasalida"
    t.string   "staff_estado"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "daw_tablas", force: :cascade do |t|
    t.string   "tab_nombre"
    t.string   "tab_nemonico"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "daw_tema_mate_acads", force: :cascade do |t|
    t.integer  "tmac_orden"
    t.integer  "daw_mate_acad_id"
    t.integer  "daw_tema_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "daw_tema_mate_acads", ["daw_mate_acad_id"], name: "index_daw_tema_mate_acads_on_daw_mate_acad_id", using: :btree
  add_index "daw_tema_mate_acads", ["daw_tema_id"], name: "index_daw_tema_mate_acads_on_daw_tema_id", using: :btree

  create_table "daw_temas", force: :cascade do |t|
    t.string   "tema_nombre"
    t.time     "tema_duracion"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "daw_trabajos", force: :cascade do |t|
    t.string   "trab_nombre"
    t.string   "trab_tipo"
    t.string   "trab_telefono"
    t.string   "trab_direccion"
    t.date     "trab_fecha"
    t.string   "trab_estado"
    t.integer  "daw_persona_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "daw_trabajos", ["daw_persona_id"], name: "index_daw_trabajos_on_daw_persona_id", using: :btree

  create_table "daw_usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "daw_usuarios", ["email"], name: "index_daw_usuarios_on_email", unique: true, using: :btree
  add_index "daw_usuarios", ["reset_password_token"], name: "index_daw_usuarios_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "daw_asistirs", "daw_inscripcions"
  add_foreign_key "daw_asistirs", "daw_tema_mate_acads"
  add_foreign_key "daw_boletins", "daw_cursos"
  add_foreign_key "daw_boletins", "daw_inscripcions"
  add_foreign_key "daw_calificacions", "daw_actividads"
  add_foreign_key "daw_calificacions", "daw_inscripcions"
  add_foreign_key "daw_codigos", "daw_inscripcions"
  add_foreign_key "daw_codigos", "daw_promos"
  add_foreign_key "daw_contratos", "daw_personas"
  add_foreign_key "daw_curso_comunicados", "daw_comunicados"
  add_foreign_key "daw_curso_comunicados", "daw_cursos"
  add_foreign_key "daw_curso_comunicados", "daw_cursos"
  add_foreign_key "daw_curso_comunicados", "daw_cursos"
  add_foreign_key "daw_curso_encuests", "daw_encuests"
  add_foreign_key "daw_curso_matriculas", "daw_cursos"
  add_foreign_key "daw_curso_matriculas", "daw_matriculas"
  add_foreign_key "daw_curso_promos", "daw_promos"
  add_foreign_key "daw_curso_temas", "daw_cursos"
  add_foreign_key "daw_curso_temas", "daw_temas"
  add_foreign_key "daw_cursos", "daw_asignaturas"
  add_foreign_key "daw_cursos", "daw_grados"
  add_foreign_key "daw_cursos", "daw_periodo_acads"
  add_foreign_key "daw_evaluacions", "daw_actividads"
  add_foreign_key "daw_evaluacions", "daw_curso_temas"
  add_foreign_key "daw_inscripcions", "daw_cursos"
  add_foreign_key "daw_inscripcions", "daw_matriculas"
  add_foreign_key "daw_lugars", "daw_lugars"
  add_foreign_key "daw_matricula_promos", "daw_matriculas"
  add_foreign_key "daw_matricula_promos", "daw_promos"
  add_foreign_key "daw_opcions", "daw_pregunts"
  add_foreign_key "daw_personas", "daw_lugars"
  add_foreign_key "daw_personas", "daw_usuarios"
  add_foreign_key "daw_preguntaes", "daw_encuests"
  add_foreign_key "daw_pregunts", "daw_actividads"
  add_foreign_key "daw_reclamos", "daw_personas"
  add_foreign_key "daw_registros", "daw_tablas"
  add_foreign_key "daw_relacions", "daw_personas"
  add_foreign_key "daw_relacions", "daw_personas"
  add_foreign_key "daw_respuestaes", "daw_preguntaes"
  add_foreign_key "daw_respuests", "daw_calificacions"
  add_foreign_key "daw_respuests", "daw_opcions"
  add_foreign_key "daw_retiros", "daw_personas"
  add_foreign_key "daw_rol_pers_inscs", "daw_personas"
  add_foreign_key "daw_tema_mate_acads", "daw_mate_acads"
  add_foreign_key "daw_tema_mate_acads", "daw_temas"
  add_foreign_key "daw_trabajos", "daw_personas"
end
