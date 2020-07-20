class EventCreator < Event

  def initialize 
    puts "Salut, tu veux créer un événement ? Cool ! "
    puts "Commençons, quel est le nom de l'événement ?"
    @title = gets.chomp.to_s
    puts "Super, quand aura-t-il lieu ?"
    @start_date  = gets.chomp.to_s
    puts "Parfait, Combien de temps va-t-il durer (en minutes) ? "
    @duration = gets.chomp.to_i
    if @duration.is_a? Integer
      puts "Génial. Qui va participer ? Balance leurs e-mails"
      @attendees = gets.chomp.to_s
    else
      puts "Désolé, mais il me faut une durée en minutes"
      @duration = gets_chomp.to_i
    end
    
    puts "Félicitations, j'ai pu créer pour vous l'événement : #{@title} qui commencera le #{@start_date} pour une durée de #{@duration} minutes, voici les invités à qui je vais envoyer un e-mail de votre part : #{attendees} "
  end
end



