class Character < ApplicationRecord
	validates :team, :unit, presence: true
	validates :team, inclusion: [1, 2]
	validates :unit, inclusion: ['mage', 'knight'], if: :belongs_to_first_team
	validates :unit, inclusion: ['jinn', 'medusa'], if: :belongs_to_second_team

	# если в команде 1 есть хотя бы два мага и два рыцаря, они могут использовать ульту и призвать 5 рыцарей
	# если в команде два есть 2 джинна и 1 медуза, они могут убрать с поля 3 случайных персонажей противников

	def belongs_to_first_team
		team == 1
	end

	def belongs_to_second_team
		team == 2
	end

   def self.first_team_ultimate_attack
     if Character.where(unit: 'mage').count >= 2 && Character.where(unit: 'knight').count >= 2
       Character.create([{team: 1, unit: 'knight'}] * 5)
     end
   end

   def self.second_team_ultimate_attack
	if Character.where(unit: 'medusa').count == 1 && Character.where(unit: 'jinn').count == 2
		first_team_characters = Character.where(team: 1)
		3.times do
			first_team_characters.sample.destroy unless first_team_characters.empty?
		end
	end
  end

end  