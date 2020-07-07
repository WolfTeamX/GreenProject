Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#main_page'

  get '/o-nas/' => 'pages#about_us', as: :about_as
  get '/oferta/' => 'pages#offer', as: :offer
  get '/realizacje/' => 'pages#realizations', as: :realizations
  get '/sprzedaż/' => 'pages#sale', as: :sale
  get '/kontakt/' => 'pages#contact', as: :contact
  post '/kontakt/' => 'pages#contact', as: :contact_post


  get '/oferta/o_fotowoltaice/' => 'pages#about_photovoltaics', as: :about_photovoltaics
  get '/oferta/o_pompie_ciepla/' => 'pages#about_heat_pump', as: :about_heat_pump
  get '/oferta/o_klimatyzacji/' => 'pages#about_air_conditioning', as: :about_air_conditioning


  ### Admin
  get '/admin/' => 'admin#admin_index', as: :admin_index

  # Main website
  get '/admin/main-offer' => 'main_offers#edit', as: :edit_offer
  post '/admin/main-offer' => 'main_offers#update', as: :update_offer
  get '/admin/image' => 'designated_customers_images#edit', as: :edit_designated_image
  post '/admin/image' => 'designated_customers_images#update', as: :update_designated_image
  get '/admin/icon' => 'icons#edit', as: :edit_icon
  post '/admin/icon' => 'icons#update', as: :update_icon

  # Slides
  get '/admin/dodaj-slajd' => 'admin#add_slide', as: :add_slide
  post '/admin/' => 'slides#create', as: :create_slide
  post '/admin/' => 'slides#update', as: :update_slide
  delete '/admin/' => 'slides#destroy', as: :remove_slide

  # Realizations
  get '/admin/realizations' => 'admin#realizations', as: :realizations_admin
  post '/admin/realizations' => 'admin#realizations', as: :realizations_admin_post
  delete '/admin/realizations' => 'admin#destroy_realization', as: :remove_realization

  # Other settings
  get '/admin/settings' => 'admin#settings', as: :settings
  post '/admin/settings' => 'admin#settings', as: :settings_post

  # About us
  get '/admin/about_us' => 'admin#about_us', as: :about_us_admin

  # Offers
  get '/admin/offer' => 'admin#offer', as: :offer_admin

  # Contact
  get '/admin/contact' => 'admin#contact', as: :contact_admin

  as :user do
    get 'login/' => 'devise/sessions#new', as: :login
    get 'logout/' => 'devise/sessions#destroy', as: :logout
  end
end
