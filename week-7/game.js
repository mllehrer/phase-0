// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: You have crashed on an alien planet and must survive as long as possible.
// Goals: Choose the right tools to aid your survival
// Characters: You, astronaut
// Objects: bags, tools, and your bag
// Functions: chooseBag, takeItem

// Pseudocode
//Create the bags, tools, and your bag objects
//Create functions that will display certain things when these are chosen
//Write an adventure that can be run in the console
//
//
//
// Initial Code

alert("You are flying through space, and have been for some time. Through the windows of your spacecraft, the stars, which had been a blur as you whirred through the cosmos at hyperspeed, have begun to resolve into the wash of glitter that has been your only sky for five years. You are slowing down, planning to enter the orbit of an earthlike planet that has been your destination: it is humanity's only hope for a new world.");
alert("Suddenly, your spacecraft begins to shake");
alert("There is an unexpected gravitational anomaly! You lose control of your navigation system and begin plummeting to the surface of an alien planet!");
//code here to open a new window with a pretty picture if I get time
alert("...");
confirm("You are awake. You are alive. From the rubble of your spacecraft, you hear the sound of an alien wind. Astronaut, are you ready?");
if (false){
  alert("You were not ready, but you are far from home. The atmosphere is not as oxygen-rich as Earth's, and you die slowly but painlessly of asphyxiation.");
}
else
  prompt("You will need supplies. Choose a bag. You have a duffel that is heavy but can hold three items, a backpack that is lighter and can hold two, and a belt bag that will not weigh you down at all but can only hold one thing. Which will you choose? Input 'duffel', 'backpack', or 'belt bag'.");
this.chooseBag;
  prompt("There are a few tools left in the spacecraft. You can take up to three if you chose the duffel, two if you chose the backpack, and one if you chose the belt bag. The tools are a shovel, a gps, a blaster gun, and an oxygen mask. To fill your bag, input 'shovel', 'gps', 'blaster', or 'oxygen mask'.");
  this.takeItem;
  if (yourBag.myBag.duffel !== undefined){
    prompt("You may choose two more tools. What is your next choice? Remember the options are 'shovel', 'gps', 'blaster', or 'oxygen mask'.");
  this.takeItem;
    prompt("You may choose one more tool. What will it be? Remember the options are 'shovel', 'gps', 'blaster', or 'oxygen mask'.");
  }
  elsif (yourBag.myBag.backpack !== undefined){
      prompt("You may choose one more tool. What will it be? Remember the options are 'shovel', 'gps', 'blaster', or 'oxygen mask'.");
  this.takeItem;
    }
  else{
    alert("Wow, you must be very brave. I hope that was the right choice.");
  }
  alert("You begin walking. Around you is lush forest of strange plants with waxy leaves. Something small darts into the bushes. You are not alone.");
  alert("As you lose sight of the smoking, twisted heap of what used to be your spacecraft, you begin to feel lightheaded.");
  if (yourBag.tool.oxygenMask = undefined){
    alert("Oh dear, looks like you didn't bring an oxygen mask. You die of asphyxiation.");
  }
  else{
    alert("It's probably a good idea to put on your oxgen mask.");
    confirm("Breathing normally again, you take stock of your surroundings. The only way forward seems to be through a clearing, but the ground looks soft and boggy. Do you risk it?");
    if (false){
      alert("Staying in one place gets you eaten by an alien carnivore. You never saw it coming.");
    }
    else{
      alert("Brave explorer! You trek ahead.");
    }
  }
    if (yourBag.myBag.duffel !== undefined){
      alert("The soft ground gives way under your feet. You try to climb out but your bag is too heavy! You perish in the quicksand.");
    }
    else{
      confirm("The ground is soft under your feet, and you flounder a bit but manage to cross into a wide meadow carpeted with bright flowers. A structure sits at the far end of the clearing. It looks as if it were built by something. Do you approach?");
      if (false){
      alert("Prudent, but a bad idea. You wander around in the forest until you die of starvation.");
    }
      else{
      alert("Something stirs in the windows of the building. A set of tentacles ooze out of the door, followed by a head with large, intelligent eyes. It looks like a terrestrial squid, and it is moving toward you.");
    }
  }
    if (yourBag.tool.blaster = "got it"){
      confirm("You have your blaster. Do you want to shoot it?");
      if (true);
        alert("What is wrong with you? Game over. Close your laptop and feel guilty for a little while. It only wanted to help.");
      else{
        alert("Your pacifism is rewarded. The land-squids adopt you and teach your their sign language, since you cannot understand their telepathy. You teach them to read. Eventually they bear you to their capitol city where the land-squid scientists are able to craft an emergency beacon and get you rescued by other humans in a few years. The other humans like the new planet so much they stay and you form a peaceful community.");
      }
    }
    else{
      alert("It's a strange alien, but a friendly one.  The land-squids adopt you and teach your their sign language, since you cannot understand their telepathy. You teach them to read. Eventually they bear you to their capitol city where the land-squid scientists are able to craft an emergency beacon and get you rescued by other humans in a few years. The other humans like the new planet so much they stay and you form a peaceful community.");
    }
    alert("Game over!");

var bagTypes = {
  duffel: "duffel",
  backpack: "backpack",
  beltBag: "belt bag"
};

var tools = {
  shovel: "shovel",
  gps: "GPS",
  blaster: "blaster",
  oxygenMask: "oxygen mask"
};

var yourBag = {};

function chooseBag(bag){
  var theBag = document.getElementById("userInput");
  yourBag.myBag.theBag = "got it";
alert("You have chosen" + bag + ".");
}

function takeItem(item){
  var thing = document.getElementById("userInput");
  yourBag.tool.thing = "got it";
  alert("The" + item + "has been added to your bag.");
}








// Refactored Code






// Reflection
/*What was the most difficult part of this challenge?
The syntax is really hard. I think it's still not right, and I'm going to keep playing with it.
What did you learn about creating objects and functions that interact with one another?
I think the manipulating objects exercise earlier in the session was really helpful.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I never got to the refactoring step before the assignment was due, I'm afraid.
How can you access and manipulate properties of objects?
Either in the object directly or just interacting with the object elsewhere in the program.
*/
//
//
//
//
//
//
