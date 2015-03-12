Rails.application.routes.draw do

  root 'index#index'

  match ':controller(/:action(/:id))(.:format)', :via => [:get, :post]
  
  get 'alfredo/index'

  get 'hector/index'

  get 'vianny/index'

  get 'index/index'

  resources :daw_rol_pers_inscs

  resources :daw_retiros

  resources :daw_contratos

  resources :daw_relacions

  resources :daw_trabajos

  resources :daw_reclamos

  devise_for :daw_usuarios
  
  resources :daw_alianzas

  resources :daw_staffs

  resources :daw_directors

  resources :daw_prof_asists

  resources :daw_representantes

  resources :daw_estudiantes

  resources :daw_personas

  resources :daw_lugars

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

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
