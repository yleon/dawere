Rails.application.routes.draw do
  resources :daw_asistirs

  resources :daw_boletins

  resources :daw_asistencia

  resources :daw_inscripcions

  resources :daw_calificacions

  resources :daw_respuests

  resources :daw_opcions

  resources :daw_archivos

  resources :daw_pregunts

  resources :daw_evaluacions

  resources :daw_actividads

  resources :daw_tema_mate_acads

  resources :daw_mate_acads

  resources :daw_curso_temas

  resources :daw_temas

  resources :daw_matriculas

  resources :daw_cursos

  resources :daw_asignaturas

  resources :daw_grados

  resources :daw_periodo_acads

  resources :daw_respuestaes

  resources :daw_preguntaes

  resources :daw_curso_encuests

  resources :daw_curso_comunicados

  resources :daw_comunicados

  resources :daw_encuests

  resources :daw_codigos

  resources :daw_curso_promos

  resources :daw_matricula_promos

  resources :daw_promos

  resources :daw_log_errors

  resources :daw_log_transaccions

  resources :daw_hist_cambios

  resources :daw_registros

  resources :daw_tablas
end
