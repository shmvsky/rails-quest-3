class CharactersController < ApplicationController

	def add_knight()
		Character.create(team: 1, unit: 'knight')
		redirect_to :controller => 'home', :action => 'index'
	end

	def add_mage()
		Character.create(team: 1, unit: 'mage')
		redirect_to :controller => 'home', :action => 'index'
	end

	def add_jinn()
		Character.create(team: 2, unit: 'jinn')
		redirect_to :controller => 'home', :action => 'index'
	end

	def add_medusa()
		Character.create(team: 2, unit: 'medusa')
		redirect_to :controller => 'home', :action => 'index'
	end

	def first_team_ultimate_attack()
		Character.first_team_ultimate_attack()
		redirect_to :controller => 'home', :action => 'index'
	end

	def second_team_ultimate_attack()
		Character.second_team_ultimate_attack()
		redirect_to :controller => 'home', :action => 'index'
	end

end
