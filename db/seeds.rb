# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
flower = Flower.create(name: 'Trandefil', description: 'Trandefil i bukur i bukur')
flower2 = Flower.create(name: 'Trandefil', description: 'Trandefil i bukur i bukur')
flower3 = Flower.create(name: 'Trandefil', description: 'Trandefil i bukur i bukur')
flower4 = Flower.create(name: 'Trandefil', description: 'Trandefil i bukur i bukur')
flower5 = Flower.create(name: 'Trandefil', description: 'Trandefil i bukur i bukur')
flower6 = Flower.create(name: 'Trandefil', description: 'Trandefil i bukur i bukur')
flower7 = Flower.create(name: 'Trandefil', description: 'Trandefil i bukur i bukur')
flower8 = Flower.create(name: 'Trandefil', description: 'Trandefil i bukur i bukur')
flower9 = Flower.create(name: 'Trandefil', description: 'Trandefil i bukur i bukur')
flower10 = Flower.create(name: 'Trandefil', description: 'Trandefil i bukur i bukur')

flower.image.attach(io: File.open("#{Rails.root}/app/assets/flower1.jpg"), filename: "flower1.jpg")
flower2.image.attach(io: File.open("#{Rails.root}/app/assets/flower2.jpg"), filename: "flower2.jpg")
flower3.image.attach(io: File.open("#{Rails.root}/app/assets/flower3.jpg"), filename: "flower3.jpg")
flower4.image.attach(io: File.open("#{Rails.root}/app/assets/flower4.jpg"), filename: "flower4.jpg")
flower5.image.attach(io: File.open("#{Rails.root}/app/assets/flower5.jpeg"), filename: "flower5.jpeg")
flower6.image.attach(io: File.open("#{Rails.root}/app/assets/flower6.jpg"), filename: "flower6.jpg")
flower7.image.attach(io: File.open("#{Rails.root}/app/assets/flower7.jpeg"), filename: "flower7.jpeg")
flower8.image.attach(io: File.open("#{Rails.root}/app/assets/flower8.jpeg"), filename: "flower8.jpeg")
flower9.image.attach(io: File.open("#{Rails.root}/app/assets/flower9.jpg"), filename: "flower9.jpg")
flower10.image.attach(io: File.open("#{Rails.root}/app/assets/flower10.jpg"), filename: "flower10.jpg")
