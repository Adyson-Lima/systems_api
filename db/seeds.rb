#require 'faker'

puts 'Gerando systems...'

10.times do |i|
  System.create(
    name: ["debian", "ubuntu", "opensuse"].sample   ,
    manufacturer: ["community", "colaborators"].sample
    )
end

puts 'systems gerados com sucesso!'
