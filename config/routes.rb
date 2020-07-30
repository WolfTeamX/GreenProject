Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#main_page'

  get '/o-nas/' => 'pages#about_us', as: :about_as
  get '/oferta/' => 'pages#offer', as: :offer
  get '/realizacje/' => 'pages#realizations', as: :realizations
  get '/certyfikaty/' => 'pages#certificates', as: :certificates
  get '/sprzedaż/' => 'pages#sale', as: :sale
  get '/kontakt/' => 'pages#contact', as: :contact
  post '/kontakt/' => 'pages#contact', as: :contact_post

  # Faqs
  get 'oferta/faq/:id' => 'pages#faq', as: :faq

  # Footer
  get '/edytuj-stopke/' => 'footers#edit', as: :edit_footer
  patch '/edytuj-stopke/' => 'footers#update', as: :update_footer

  # Main website
  get '/edytuj-oferte/' => 'main_offers#edit', as: :edit_offer
  post '/edytuj-oferte' => 'main_offers#update', as: :update_offer
  get '/edytuj-obraz/' => 'designated_customers_images#edit', as: :edit_designated_image
  post '/edytuj-obraz/' => 'designated_customers_images#update', as: :update_designated_image
  get '/edytuj-ikone/' => 'icons#edit', as: :edit_icon
  post '/edytuj-ikone/' => 'icons#update', as: :update_icon

  # SubPages
  get '/edytuj-podstrone/' => 'sub_pages#edit', as: :edit_sub_page
  post '/edytuj-podstrone/' => 'sub_pages#update', as: :update_sub_page

  # Slides
  get '/dodaj-slajd/' => 'slides#add_slide', as: :add_slide
  get '/zarzadzaj-slajdami/' => 'slides#manage', as: :manage_slides
  get '/edytuj-slajd/' => 'slides#edit', as: :edit_slide
  post '/stworz-slajd/' => 'slides#create', as: :create_slide
  patch '/zaktualizuj-slajd/' => 'slides#update', as: :update_slide
  delete '/usun-slajd/' => 'slides#destroy', as: :remove_slide

  # Realizations
  get '/dodaj-realizacje/' => 'realizations#add', as: :add_realization
  post '/dodaj-realizacje/' => 'realizations#create', as: :create_realization
  post '/usun-realizacje/' => 'realizations#destroy_realization', as: :remove_realization

  # Certificates
  get '/dodaj-certyfikat/' => 'certificates#add', as: :add_certificate
  post '/stworz-certyfikat/' => 'certificates#create', as: :create_certificate
  post '/usun-certyfikat/' => 'certificates#destroy_certificate', as: :remove_certificate

  # About us
  get '/edytuj-paragraf-o-nas/' => 'about_us_paragraphs#edit', as: :edit_about_us_paragraph
  post '/edytuj-paragraf-o-nas/' => 'about_us_paragraphs#update', as: :update_about_us_paragraph

  # Voivodeships
  get '/dodaj-wojewodztwo/' => 'voivodeships#add', as: :add_voivodeship
  get '/edytuj-wojewodztwo/' => 'voivodeships#edit', as: :edit_voivodeship
  post '/dodaj-wojewodztwo/' => 'voivodeships#create', as: :create_voivodeship
  patch '/edytuj-wojewodztwo/' => 'voivodeships#update', as: :update_voivodeship
  post '/usun-wojewodztwo/' => 'voivodeships#destroy_voivodeship', as: :destroy_voivodeship

  # Offers
  get '/edytuj-paragraf-oferta/' => 'offer_paragraphs#edit', as: :edit_offer_paragraph
  post '/edytuj-paragraf-oferta/' => 'offer_paragraphs#update', as: :update_offer_paragraph

  # FAQ
  get '/edytuj-faq/' => 'faq_pages#edit', as: :edit_faq_page
  post '/edytuj-faq/' => 'faq_pages#update', as: :update_faq_page

  get '/dodaj-faq/' => 'faq_questions#add', as: :add_faq_question
  post '/dodaj-faq/' => 'faq_questions#create', as: :create_faq_question
  get '/edytuj-pytanie-faq/' => 'faq_questions#edit', as: :edit_faq_question
  patch '/zapisz-pytanie-faq/' => 'faq_questions#update', as: :update_faq_question
  post '/usun-faq/' => 'faq_questions#destroy', as: :destroy_faq_question

  # Contact
  get '/edytuj-kontakt/' => 'contact_info#edit', as: :edit_contact_info
  post '/edytuj-kontakt/' => 'contact_info#update', as: :update_contact_info

  as :user do
    get 'login/' => 'devise/sessions#new', as: :login
    get 'logout/' => 'devise/sessions#destroy', as: :logout
  end
end
