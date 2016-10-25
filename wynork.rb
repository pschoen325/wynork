require 'securerandom'
require 'io/console'

def create_character
  puts "Hello Travler! What is your Name?"

  @name = gets.chomp.to_s.downcase.capitalize!

  puts "\n"

  puts "Hello #{@name}! Please enter and read all the scrolls.
Most of your decisions will be specified with numbers.
The scrolls are very picky so if you mess around they will decide for you."
  puts "\n"
  puts "#{@name} enters the arena to see a scroll with instructions.
  "
    def continue_story
      puts "Press Any Key to Continue"
      STDIN.getch
      print "            \r"
    end

  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "\n"

  continue_story

  puts '
  _______________________-------------------------------------------`\
  /:--__                                                              |
  ||< > |                                   ___________________________/
  | \__/_________________-------------------                         |
  |                                                                  |
  |                       Welcome to Wynork                          |
  |                                                                  |
  |            Welcome adventurer to Wynork. Wynork is a game        |
  |            in which you are challenged in a arena by            |
  |            diffirent abominbal creatures who could easily       |
  |            slay you in just one single blow. So task at hand    |
  |            is to choose what class you are:                     |
  |                                                                 |
  |                        1.Are you a nimble Ranger?               |
  |                        2.Are you a mighty Brute?                |
  |                        3.Are you an royal Knight?                |
  |                                                                  |
  |           Please choose a number for your class.                 |
  |                                                                  |
  |                                                                  |
  |                                              ____________________|_
  |  ___________________-------------------------                      `\
  |/`--_                                                                 |
  ||[ ]||                                            ___________________/
  \===/___________________--------------------------'

  @hero_class = gets.chomp.to_i

  case @hero_class
  when 1
    @hero_class = "a Ranger"
    puts  '
      _______________________-------------------------------------------`\
    /:--__                                                               |
    ||< > |                                   ___________________________/
    | \__/_________________-------------------                         |
    |                                                                  |
    |      Ah I hope your speed is swift because you will have to face |
    |      against a mighty beast. Who will you choose?                |
    |                                                                  |
    |       1.The mighty Ork who is equiped with a massive club        |
    |        2.Three Goblins equiped with Forks                        |
    |        3.A hooded figure known as... Auston                      |
    |                                                                  |
    |                                                                  |
    |                                              ____________________|_
    |  ___________________-------------------------                      `\
    |/`--_                                                                 |
    ||[ ]||                                            ___________________/
    \===/___________________--------------------------'
    puts "\n"
  when 2
    @hero_class = "a Brute"
    puts '
      _______________________-------------------------------------------`\
    /:--__                                                                |
    ||< > |                                   ___________________________/
    | \__/_________________-------------------                         |
    |                                                                  |
    |     Ah a Brute slow but very threatening and with lots of power. |
    |      now you must choose which beast to face in combat within    |
    |       the arena.                                                 |
    |                                                                  |
    |       1.The mighty Ork who is equiped with a massive club        |
    |        2.Three Goblins equiped with Forks                        |
    |        3.A hooded figure known as... Auston                      |
    |                                                                  |
    |                                                                  |
    |                                              ____________________|_
    |  ___________________-------------------------                      `\
    |/`--_                                                                 |
    ||[ ]||                                            ___________________/
    \===/___________________--------------------------'
    puts "\n"
  when 3
    @hero_class = "a Knight"
    puts '
      _______________________--------------------------------------------`\
    /:--__                                                                |
    ||< > |                                   ___________________________/
    | \__/_________________-------------------                         |
    |                                                                  |
    |      Ah one of the royal guard I would assume you do this         |
    |      type of thing all the time. Now you must choose which        |
    |      beast to face in combat.                                    |
    |                                                                  |
    |       1.The mighty Ork who is equiped with a massive club        |
    |        2.Three Goblins equiped with Forks                        |
    |        3.A hooded figure known as... Auston                      |
    |                                                                  |
    |                                                                  |
    |                                              ____________________|_
    |  ___________________-------------------------                      `\
    |/`--_                                                                 |
    ||[ ]||                                            ___________________/
    \===/___________________--------------------------'
    puts "\n"
  else
    @hero_class = "Stranger"
    puts '
    _______________________--------------------------------------------`\
  /:--__                                                                |
  ||< > |                                   ___________________________/
  | \__/_________________-------------------                         |
  |                                                                  |
  |         Oh your are neither of these things... strange. Alright   |
  |         now please choose a mighty beast to fight.                |
  |                                                                   |
  |            1.The mighty Ork who is equiped with a massive club    |
  |            2.Three Goblins equiped with Forks                     |
  |            3.A hooded figure known as... Auston                   |
   |                                              ____________________|_
    |  ___________________-------------------------                      `\
    |/`--_                                                                 |
    ||[ ]||                                            ___________________/
    \===/___________________--------------------------'
    puts "\n"
  end



  @monster = gets.chomp.to_i

  case @monster
  when 1
    @monster = "an Ork"
    puts '
     _______________________-------------------------------------------`\
    /:--__                                                              |
    ||< > |                                   ___________________________/
    | \__/_________________-------------------                         |
    |                                                                  |
    |          How will you ever come out of this one?                 |
    |          Now Please choose a weapon.                             |
    |                                                                  |
    |              1. Sword                                            |
    |              2. Axe                                              |
    |              3. Kitana                                           |
    |                                                                  |
    |                                              ____________________|_
    |  ___________________-------------------------                      `\
    |/`--_                                                                 |
    ||[ ]||                                            ___________________/
     \===/___________________--------------------------'
     puts "\n"
    when 2
      @monster = "Goblins"
      puts '
        _______________________------------------------------------------`\
      /:--__                                                              |
      ||< > |                                   ___________________________/
      | \__/_________________-------------------                         |
      |                                                                  |
      |           Do not underestimate goblins in pack.                  |
      |            Now chose a weapon to slay them with.                  |
      |                                                                  |
      |              1. Sword                                            |
      |              2. Axe                                              |
      |              3. Kitana                                           |
      |                                                                  |
      |                                              ____________________|_
      |  ___________________-------------------------                      `\
      |/`--_                                                                 |
      ||[ ]||                                            ___________________/
      \===/___________________--------------------------'
      puts "\n"
    when 3
      @monster = "Auston"
      puts '
        _______________________------------------------------------------`\
      /:--__                                                               |
      ||< > |                                   ___________________________/
      | \__/_________________-------------------                         |
      |                                                                  |
      |          Auston is a dark and mysterious figure                   |
      |           so choose your weapon wisly.                            |
      |                                                                  |
      |              1. Sword                                            |
      |              2. Axe                                              |
      |              3. Kitana                                           |
      |                                                                  |
      |                                              ____________________|_
      |  ___________________-------------------------                      `\
      |/`--_                                                                 |
      ||[ ]||                                            ___________________/
      \===/___________________--------------------------'
      puts "\n"
    else
      @monster = "Auston"
      puts '
       _______________________------------------------------------------`\
      /:--__                                                              |
      ||< > |                                   ___________________________/
      | \__/_________________-------------------                         | |                                                                  |
      |                                                                  |
      |          Unfortunatly that is not an option                      |
      |          so you will fight Auston. Now Please choose a weapon    |
      |                  1. Sword                                        |
      |                  2. Axe                                          |
      |                  3. Kitana                                       |
      |                                              ____________________|_
      |  ___________________-------------------------                      `\
      |/`--_                                                                 |
      ||[ ]||                                            ___________________/
      \===/___________________--------------------------'
      puts "\n"
  end

    @weapon = gets.chomp.to_i

    case @weapon
    when 1
      @weapon = "a Sword"
      puts '
      _______________________------------------------------------------`\
     /:--__                                                              |
     ||< > |                                   ___________________________/
     | \__/_________________-------------------                         |
    |            You have seem to pick such a basic weapon               |
    |            but yet effective. Alright are you ready                |
    |            to enter the Arena?                                     |
    |              1.Yes                                                 |
    |              2.No                                                 /
    |                                              ____________________|_
    |  ___________________-------------------------                      `\
    |/`--_                                                                 |
    ||[ ]||                                            ___________________/
    \===/___________________--------------------------'
    puts "\n"
    when 2
      @weapon = "an Axe"
      puts '

      _______________________------------------------------------------`\
     /:--__                                                              |
     ||< > |                                   ___________________________/
     | \__/_________________-------------------                         |
     |                                                                  |
     |      Such a harsh weapon but I believe this will do the trick.   |
     |      Alright are you ready to enter the Arena?                    |
    |            1.Yes                                                   |
    |            2.No                                                    |
    |                                              ____________________|_
    |  ___________________-------------------------                      `\
    |/`--_                                                                 |
    ||[ ]||                                            ___________________/
    \===/___________________--------------------------'
    puts "\n"
    when 3
      @weapon = "a Kitana"
      puts '
      _______________________-------------------------------------------`\
     /:--__                                                               |
     ||< > |                                   ___________________________/
     | \__/_________________-------------------                         |
      |                                                                 |
      |        Such fierce and fast weapon from such a distant land.    |
      |          Alright are you ready to enter the Arena?               |
      |            1.Yes                                                 |
      |            2.No                                                  |
      |                                              ____________________|_
      |  ___________________-------------------------                      `\
      |/`--_                                                                 |
      ||[ ]||                                            ___________________/
      \===/___________________--------------------------'
      puts "\n"

    else
      @weapon = "your Fist"
      puts '
      _______________________-------------------------------------------`\
     /:--__                                                               |
     ||< > |                                   ___________________________/
     | \__/_________________-------------------                         |
      |        AH hand to hand combat, is the basis of all combat       |
      |        only a fool trust his life to a weapon.                  |
      |        Alright are you ready to enter the Arena?                |
      |            1.Yes                                                |
      |            2.No                                                  |
     |                                              ____________________ |_
     |  ___________________-------------------------                      `\
     |/`--_                                                                 |
     ||[ ]||                                            ___________________/
      \===/___________________--------------------------
                  '
        puts "\n"
    end
end

  create_character

  enter_arena = gets.chomp.to_i


  if enter_arena == 1
    puts "Alright lets just check who you are."
    puts "\n"
  elsif enter_arena == 2
    puts "I guess we'll restart"
    puts "\n"
    create_character
  else
    puts "That is not a correct input so I'm going to assume you are ready"
    puts "\n"
    sleep(5)
    enter_arena = 1
  end

  puts "\n"

  puts "So you are #{@name} that is #{@hero_class} who is choosing to fight #{@monster} with #{@weapon}."

  puts "\n"

  @randomstring = SecureRandom.base64(10000000).to_s



  def story_time
    def winner
      puts "
 __   __  _______  __   __    _     _  ___   __    _  __
|  | |  ||       ||  | |  |  | | _ | ||   | |  |  | ||  |
|  |_|  ||   _   ||  | |  |  | || || ||   | |   |_| ||  |
|       ||  | |  ||  |_|  |  |       ||   | |       ||  |
|_     _||  |_|  ||       |  |       ||   | |  _    ||__|
  |   |  |       ||       |  |   _   ||   | | | |   | __
  |___|  |_______||_______|  |__| |__||___| |_|  |__||__| "
    end

    def game_over
       puts "          .                                                      .
            .n                   .                 .                  n.
      .   .dP                  dP                   9b                 9b.    .
     4    qXb         .       dX                     Xb       .        dXp     t
    dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
    9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
     9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
      `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
        `9XXXXXXXXXXXP' `9XX'   GAME    `98v8P'  OVER   `XXP' `9XXXXXXXXXXXP'
            ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
                            )b.  .dbo.dP'`v'`9b.odb.  .dX(
                          ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
                         dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
                        dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
                        9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
                         `'      9XXXXXX(   )XXXXXXP      `'
                                  XXXX X.`v'.X XXXX
                                  XP^X'`b   d'`X^XX
                                  X. 9  `   '  P )X
                                  `b  `       '  d'
                                   `             '
    "
    end
    if @monster == "an Ork"
      puts '
      _______________________-------------------------------------------`\
     /:--__                                                               |
     ||< > |                                   ___________________________/
     | \__/_________________-------------------                         |
     |                                                                  |
    |            You enter the arena and see before you a               |
    |            Ten foot beast with a club that is quite               |
    |            larger than your body. The Orc roars and               |
    |            charges you what do you do?                            |
     |                                              ____________________ |_
     | ___________________-------------------------                        `\
      |/`--_                                                                 |
      ||[ ]||                                            ___________________/
       \===/___________________--------------------------'
       if @hero_class == "a Ranger" && @weapon == "a Kitana"
         puts "Type what ever you think will save you! HURRY"
         @decision = gets.chomp.to_s.downcase
         puts "You #{@decision} which somehow sliced the Orc in half"
         winner
       else
         @decision = gets.chomp.to_s.downcase
         puts "\n"
         puts "You choose to #{@decision}. But it was useless... The Orks power was to much and couldn't be stopped. He smashes you with his club and you are now just a pile of goo."
         game_over
       end
    elsif @monster == "Goblins"
      puts '
      _______________________-------------------------------------------`\
     /:--__                                                               |
     ||< > |                                   ___________________________/
     | \__/_________________-------------------                         |
    |            You enter the arena and see before you a pack          |
    |            of goblins equiped with many Utinsils. Someone         |
    |            in the crowd throws a large cartoonish chicken         |
    |            leg at you and the goblins proceed to charge you.      |
    |            What do you do?                                        |
    |                                              ____________________ |_
    |  ___________________-------------------------                      `\
    |/`--_                                                                 |
    ||[ ]||                                            ___________________/
     \===/___________________--------------------------'
     if @hero_class == "a Brute" && @weapon == "an Axe"
       puts "Type what ever you think will save you! HURRY"
       @decision = gets.chomp.to_s.downcase
       puts "You #{@decision} which somehow led you to smash all the goblins in one blow. You also ate the piece of chicken which restored all your energy."
       puts "\n"
       winner
     else
      puts "Type what ever you think will save you! HURRY"
      @decision = gets.chomp.to_s.downcase
      puts "\n"
      puts "
      You choose to #{@decision}. But it was useless... You did seem to stop one goblin with what ever you did but the goblins swarmed you and the piece of chicken. All that was left is your skeleton."
      game_over
     end
    else
      puts '
      _______________________-------------------------------------------`\
     /:--__                                                               |
     ||< > |                                   ___________________________/
     | \__/_________________-------------------                         |
      |            You enter the arena and see before you a tall         |
      |            hooded figure. You see the hooded figure take         |
      |            off his hood and see that he just appears to be       |
      |            a young man but something happens unexpectly,         |
      |            a storm seems to form over the arena and code         |
      |            seems to swarm and him. He unleashes the code          |
      |            at you. What do you do.                                 |
      |                                              ____________________ |_
      |  ___________________-------------------------                      `\
      |/`--_                                                                 |
      ||[ ]||                                            ___________________/
       \===/___________________--------------------------'
      puts "Type what ever you think will save you! HURRY"
      @decision = gets.chomp.to_s.downcase
      puts "\n"
      puts "You choose to #{@decision}. But it was useless... You see a bunch of code invelope you! AAAAT̟̺̯͎̻o͍̖͍ ̠i̻̝̗n̜͙̼v҉̤̣̫͓o͈͍̫̰̭k͕e̗ ̨̪̘̳̫̝t͇̮̯̤̩́h̸͎͔̳̟̜̩e͏͚̟͙ ̺͖̫̙̱ͅh̦̣̯i̭̞͔̩v̠͙̮͖̭̲̕e͔͍͉̬͎-̧̭̯͙̹͈͇m̨̱i̛̤̣̩n̫͕d̟̺̭̤͓͟ "
      sleep(7)
      puts @randomstring
      system "Clear" or system "CLS"
      game_over
    end
  end

  def get_ye_flask
    if @decision == "get ye flask"
      sleep(5)
      system "Clear"
      puts "Wait... did you say get ye flask?"
      puts "\n"
      puts "Nice refrence bro"
      sleep(5)
      winner
    end
  end

story_time
get_ye_flask
