class Arena
  def initialize(*fighters)
    fighters.each.with_index { |f, i| f.arena_id = i }
    @fighters = fighters.sort { |fighter_prev, fighter_next| fighter_next.agility <=> fighter_prev.agility }
  end

  def start_battle
    puts 'Round:'
    current_fighters = @fighters.select(&:alive?)
    current_fighters.each.with_index do |fighter, i|
      next unless fighter.alive?

      if current_fighters[i + 1]
        fighter.bit(current_fighters[i + 1])
      else
        fighter.bit(current_fighters[0])
      end
    end

    start_battle if @fighters.select(&:alive?).size > 1
  end

  def winner
    @winner ||= @fighters.detect(&:alive?)
  end

  def print_battle_results
    if winner
      puts "Battle Finished. Winner: #{winner.class} [#{winner.arena_id}]  - #{winner.name}- HP: #{winner.health}"
    else
      puts 'Draw!'
    end
  end
end
