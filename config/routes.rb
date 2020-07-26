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

  get 'oferta/faq/:id' => 'pages#faq', as: :faq
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

  # Voivodeships
  get '/admin/dodaj-wojewodztwo' => 'voivodeships#add', as: :add_voivodeship
  get '/admin/edytuj-wojewodztwo' => 'voivodeships#edit', as: :edit_voivodeship
  post '/admin/dodaj-wojewodztwo' => 'voivodeships#create', as: :create_voivodeship
  post '/admin/edytuj-wojewodztwo' => 'voivodeships#update', as: :update_voivodeship
  post '/admin/usun-wojewodztwo' => 'voivodeships#destroy_voivodeship', as: :destroy_voivodeship

  # Offers
  get '/admin/oferta' => 'admin#offer', as: :offer_admin
  get '/admin/oferta/edytuj' => 'offer_paragraphs#edit', as: :edit_offer_paragraph
  post '/admin/oferta/edytuj' => 'offer_paragraphs#update', as: :update_offer_paragraph

  # FAQ
  get '/admin/faq/:id' => 'admin#faq', as: :faq_admin
  get '/admin/o-fotowoltaice' => 'admin#about_photovoltaics', as: :about_photovoltaics_admin
  get '/admin/o-pompie-ciepla' => 'admin#about_heat_pump', as: :about_heat_pump_admin
  get '/admin/o-klimatyzacji' => 'admin#about_air_conditioning', as: :about_air_conditioning_admin
  get '/admin/edytuj-faq' => 'faq_pages#edit', as: :edit_faq_page
  post '/admin/faq' => 'faq_pages#update', as: :update_faq_page

  get '/admin/dodaj-faq' => 'faq_questions#add', as: :add_faq_question
  post '/admin/dodaj-faq' => 'faq_questions#create', as: :create_faq_question
  get '/admin/edytuj-pytanie-faq' => 'faq_questions#edit', as: :edit_faq_question
  post '/admin/edytuj-pytanie-faq' => 'faq_questions#edit', as: :update_faq_question
  post '/admin/usun-faq' => 'faq_questions#destroy', as: :destroy_faq_question

  # Contact
  get '/admin/kontakt/edytuj' => 'contact_info#edit', as: :edit_contact_info
  post '/admin/kontakt/edytuj' => 'contact_info#update', as: :update_contact_info


  # Contact
  get '/admin/contact' => 'admin#contact', as: :contact_admin

  as :user do
    get 'login/' => 'devise/sessions#new', as: :login
    get 'logout/' => 'devise/sessions#destroy', as: :logout
  end
end
