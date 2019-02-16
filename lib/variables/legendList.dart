import 'package:flutter/material.dart';

List legends = [
  {
    "name": "Bloodhound",
    "thumb": AssetImage("assets/images/bloodhound_thumb.png"),
    "image": Image.asset("assets/images/bloodhound.jpg", fit: BoxFit.cover,),
    "passive": ["Tracker", "See tracks left behind by your foes."],
    "tactical": ["Eye of the Allfather", "Briefly reveal hidden enemies, traps, and clues throughout structures in front of you."],
    "ultimate": ["Beast of the Hunt",
        "Enhances your senses, allowing you move faster and highlighting your prey."]
  },
  {
    "name": "Gibraltar",
    "thumb": AssetImage("assets/images/gibraltar_thumb.png"),
    "image": Image.asset("assets/images/gibraltar.jpg", fit: BoxFit.cover,),
    "passive": ["Gun Shield",
        "Aiming down sights deploys a gun shield that blocks incoming fire."],
    "tactical": ["Dome of Protection", "Throw down a dome-shield that blocks attacks for 15 seconds."],
    "ultimate": ["Defensive Bombardment", "Call in a concentrated mortar strike on a marked position."]
  },
  {
    "name": "Lifeline",
    "thumb": AssetImage("assets/images/lifeline_thumb.png"),
    "image": Image.asset("assets/images/lifeline.jpg", fit: BoxFit.cover,),
    "passive": ["Combat Medic",
        "Call your Drone of Compassion to automatically heal nearby teammates over time."],
    "tactical": ["D.O.C. Heal Drone",
        "Revive knocked down teammates faster while protected by a shield wall. Healing items are used 25% faster."],
    "ultimate": ["Care Package", "Call in a drop pod full of high-quality defensive gear."]
  },
  {
    "name": "Pathfinder",
    "thumb": AssetImage("assets/images/pathfinder_thumb.png"),
    "image": Image.asset("assets/images/pathfinder.jpg", fit: BoxFit.cover,),
    "passive": ["Insider Knowledge",
        "Scan a survey beacon to reveal the ring’s next location."],
    "tactical": ["Grappling Hook",
        "Grapple to get to out-of-reach places quickly."],
    "ultimate": ["Zipline Gun", "Create a zipline for everyone to use."]
  },
  {
    "name": "Wraith",
    "thumb": AssetImage("assets/images/wraith_thumb.png"),
    "image": Image.asset("assets/images/wraith.jpg", fit: BoxFit.cover,),
    "passive": ["Voices from the Void",
        "A voice warns you when danger approaches. As far as you can tell, it’s on your side."],
    "tactical": ["Into the Void",
        "Reposition quickly through the safety of void space, avoiding all damage."],
    "ultimate": ["Dimensional Rift",
        "Link two locations with portals for 60 seconds, allowing your entire team to use them."]
  },
  {
    "name": "Bangalore",
    "thumb": AssetImage("assets/images/bangalore_thumb.png"),
    "image": Image.asset("assets/images/bangalore.jpg", fit: BoxFit.cover,),
    "passive": ["Double Time",
        "Taking fire while sprinting makes you move faster for a brief time."],
    "tactical": ["Smoke Launcher",
        "Fire a high-velocity smoke canister that explodes into a smoke wall on impact."],
    "ultimate": ["Rolling Thunder",
        "Call in an artillery strike that slowly creeps across the landscape."]
  },
  {
    "name": "Caustic",
    "thumb": AssetImage("assets/images/caustic_thumb.png"),
    "image": Image.asset("assets/images/caustic.jpg", fit: BoxFit.cover,),
    "passive": ["Nox Vision", "Allows you to see enemies through your gas."],
    "tactical": ["Nox Gas Trap",
        "Drop canisters that release deadly Nox gas when shot or triggered by enemies."],
    "ultimate": ["Nox Gas Grenade", "Blankets a large area in Nox gas."]
  },
  {
    "name": "Mirage",
    "thumb": AssetImage('assets/images/mirage_thumb.png'),
    "image": Image.asset("assets/images/mirage.jpg", fit: BoxFit.cover,),
    "passive": ["Encore!",
        "Automatically drop a decoy and cloak for five seconds when knocked down."],
    "tactical": ["Psyche Out", "Send out a holographic decoy to confuse the enemy."],
    "ultimate": ["Vanishing Act", "Deploy a team of Decoys to distract enemies while you cloak."]
  },
];