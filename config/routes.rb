Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#main_page'

  get '/o-nas/' => 'pages#about_us', as: :about_as
  get '/oferta/' => 'pages#offer', as: :offer
  get '/realizacje/' => 'pages#realizations', as: :realizations
  get '/sprzedaż/' => 'pages#sale', as: :sale
  get '/kontakt/' => 'pages#contact', as: :contact

  get '/oferta/o_fotowoltaice/' => 'pages#about_photovoltaics', as: :about_photovoltaics
  get '/oferta/o_pompie_ciepla/' => 'pages#about_heat_pump', as: :about_heat_pump
  get '/oferta/o_klimatyzacji/' => 'pages#about_air_conditioning', as: :about_air_conditioning

  get '/admin/' => 'admin#admin_index', as: :admin_index

  as :user do
    get 'login/' => 'devise/sessions#new', as: :login
    get 'logout/' => 'devise/sessions#destroy', as: :logout
  end
end
