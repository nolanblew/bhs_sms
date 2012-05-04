namespace :db do
  desc "Fill Database with default data."
  task populate: :environment do

    User.create(username: "nolanblew", password: "Jessie", password_confirmation: "Jessie")

    Language.create(name: "English", abbr: "ENG", available: true)




  end
end