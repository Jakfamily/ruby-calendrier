class User
 # On crée une variable de classe @@all_users qui sera un array vide
  @@all_users = []

  # On définit les attributs email et age en lecture et écriture grâce à attr_accessor
  attr_accessor :email, :age

  # Le constructeur initialize permet de définir les attributs email et age dès la création d'un nouvel utilisateur
  def initialize(email, age)
    @email = email
    @age = age

    # On ajoute le nouvel utilisateur dans l'array @@all_users
    @@all_users << self # self represente l'instance de la classe 'User' sur laquelle on apelle la methode 
  end

  # On crée une méthode de classe qui retourne simplement l'array @@all_users
  def self.all
    @@all_users
  end

  def self.find_by_email(email)
    @@all_users.each do |user|
      if user.email == email
        return user
      end
    end
    return "n'est pas present"  
  end
end