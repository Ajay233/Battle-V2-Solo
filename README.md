# Battle

This app is live at: https://battle-demo.herokuapp.com/ so please feel free to give it a try.  Please note that this is still a work in progress with single player still to be added and the paralyse attack needs to be refined.

This is an extension of the Makers Bootcamp week 3 afternoon pairing challenge.  

The aim of this project is to use knowledge of HTTP, CSS, response-request mechanisms, Sinatra, Capybara and Ruby to create a battle game that meets the requirements of the following user stories:
```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first

As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage

As a lonely Player,
So I can keep my Battle skills up to scratch
I want to play a Computerised opponent

As a Player,
So I can enjoy a game of Battle with more variety,
I want to choose from a range of attacks I could make

As a Player,
So I can better enjoy a game of Battle,
I want some of my attacks to Paralyse an opponent (chance of losing their next attack)

As a Player,
So I can better enjoy a game of Battle,
I want one of my attacks to have a chance of Poisoning my Opponent (Opponent takes a small random amount of damage at the beginning of their turn)

As a Player,
So I can better enjoy a game of Battle,
I want to make an attack that has a chance of sending my Opponent to Sleep (Opponent definitely misses next turn)

As a Player,
So I can extend my joyous experience of Battle,
I want to have an attack that heals some of my Hit Points

As a Player,
So I can enjoy my game of Battle,
I want a sexy user interface
```
# Instructions for running the app

If you don't have rack installed you can install it by running ```gem install rack``` in the command line.

Once you have completed the steps above you will be able to run the app. In the command line, you need to be in the root of the chitter-challenge folder. You then just need to type: ```rackup```

You should see a message similar to the one below confirming the app fired up and is running on port 9292:
```
[2019-02-11 14:56:17] INFO  WEBrick 1.4.2
[2019-02-11 14:56:17] INFO  ruby 2.5.1 (2018-03-29) [x86_64-darwin15]
[2019-02-11 14:56:17] INFO  WEBrick::HTTPServer#start: pid=66059 port=9292
```
Now you can open your browser and type in localhost:9292 which will load the welcome page and where can start using the app.

To stop the app from running hit ```Ctrl + C``` in the command line and you should get a message similar to the one below confirming that the app is shutting down:
```
[2019-02-11 17:17:59] INFO  going to shutdown ...
[2019-02-11 17:17:59] INFO  WEBrick::HTTPServer#start done.
```
*** For full details about the rack gem are available on the rack Github page: https://github.com/rack/rack ***


# Screenshots

### Welcome Screen
![Welcome Screen](https://github.com/Ajay233/Battle-V2-Solo/blob/master/screenshots/Screen1.png?raw=true)

### The "Battle" screen
![Initial battle screen](https://github.com/Ajay233/Battle-V2-Solo/blob/master/screenshots/Screen2.png?raw=true)

### Attack
![Attack](https://github.com/Ajay233/Battle-V2-Solo/blob/master/screenshots/Screen3.png?raw=true)

### Paralyse
![Paralyse](https://github.com/Ajay233/Battle-V2-Solo/blob/master/screenshots/Screen4.png?raw=true)

### Poison
![Poison](https://github.com/Ajay233/Battle-V2-Solo/blob/master/screenshots/Screen5.png?raw=true)

### Sleep
![Sleep](https://github.com/Ajay233/Battle-V2-Solo/blob/master/screenshots/Screen6.png?raw=true)

### Heal
![Heal](https://github.com/Ajay233/Battle-V2-Solo/blob/master/screenshots/Screen7.png?raw=true)

### Game Over
![Game Over](https://github.com/Ajay233/Battle-V2-Solo/blob/master/screenshots/Screen8.png?raw=true)
