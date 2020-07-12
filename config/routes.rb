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

  # SubPages
  get '/admin/edytuj-podstrone' => 'sub_pages#edit', as: :edit_sub_page
  post '/admin/edytuj-podstrone' => 'sub_pages#update', as: :update_sub_page

  # Slides
  get '/admin/dodaj-slajd' => 'admin#add_slide', as: :add_slide
  get '/admin/zarzadzaj-slajdami' => 'slides#manage', as: :manage_slides
  get '/admin/edytuj-slajd' => 'slides#edit', as: :edit_slide
  post '/admin/stworz-slajd' => 'slides#create', as: :create_slide
  post '/admin/zaktualizuj-slajd' => 'slides#update', as: :update_slide
  delete '/admin/' => 'slides#destroy', as: :remove_slide

  # Realizations
  get '/admin/realizations' => 'admin#realizations', as: :realizations_admin
  get '/admin/realizations/dodaj' => 'realizations#add', as: :add_realization
  post '/admin/realizations/stworz' => 'realizations#create', as: :create_realization
  post '/admin/realizations' => 'realizations#destroy_realization', as: :remove_realization

  # Other settings
  get '/admin/settings' => 'admin#settings', as: :settings
  post '/admin/settings' => 'admin#settings', as: :settings_post

  # About us
  get '/admin/o-nas' => 'admin#about_us', as: :about_us_admin
  get '/admin/o-nas/edytuj' => 'about_us_paragraphs#edit', as: :edit_about_us_paragraph
  post '/admin/o-nas/edytuj' => 'about_us_paragraphs#update', as: :update_about_us_paragraph

  # Offers
  get '/admin/oferta' => 'admin#offer', as: :offer_admin
  get '/admin/oferta/edytuj' => 'offer_paragraphs#edit', as: :edit_offer_paragraph
  post '/admin/oferta/edytuj' => 'offer_paragraphs#update', as: :update_offer_paragraph

  # Contact
  get '/admin/contact' => 'admin#contact', as: :contact_admin

  as :user do
    get 'login/' => 'devise/sessions#new', as: :login
    get 'logout/' => 'devise/sessions#destroy', as: :logout
  end
end
