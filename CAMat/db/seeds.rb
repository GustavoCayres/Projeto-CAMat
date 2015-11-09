# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
	for l in 'A'..'U' do
	  	unless l != 'K'
	  	else
	    	for i in 1..16 do
	    	  	Locker.create(owner: '', code: "#{l}#{i.to_s.rjust(2, '0')}")
	    	end
	    end
	end
	User.create(email: 'admin@camat.com', nome: 'administradorraiz', documento: '1', telefone:'11111', password: '123456', password_confirmation: '123456', admin: true)