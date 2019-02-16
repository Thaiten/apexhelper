import 'package:flutter/material.dart';

List weaponList = [
  {
    "category": "Assault Rifles",
    "weapons":[
      {
        "name": "Hemlock",
        "thumb": AssetImage("assets/images/weapons/assault/hemlock_thumb.png"),
        "image": Image.asset("assets/images/weapons/assault/hemlock.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Heavy Rounds",
          "mag": 18,
          "reload": "2.4s/2.8s",
          "dps": 108,
          "dmg": "18/36/13.5",
          "rate": 15,
          "slots": ["Barrel", "Mag", "Optics", "Stock"],
          "modes": "Single, Burst",
          "speed": 27500,
          "draw": "0.6s"
        }
      },
      {
        "name": "Flatline",
        "thumb": AssetImage("assets/images/weapons/assault/flatline_thumb.png"),
        "image": Image.asset("assets/images/weapons/assault/flatline.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Heavy Rounds",
          "mag": 20,
          "reload": "2.4s/3.1s",
          "dps": 160,
          "dmg": "16/32/12",
          "rate": 10,
          "slots": ["Mag", "Optics", "Stock"],
          "modes": "Single, Auto",
          "speed": 26000,
          "draw": "0.6s"
        }
      },
      {
        "name": "R-301",
        "thumb": AssetImage("assets/images/weapons/assault/r301_thumb.png"),
        "image": Image.asset("assets/images/weapons/assault/r301.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Light Rounds",
          "mag": 18,
          "reload": "2.4s/3.2s",
          "dps": 168,
          "dmg": "14/28/10.5",
          "rate": 12,
          "slots": ["Barrel", "Mag", "Optics", "Stock"],
          "modes": "Single, Auto",
          "speed": 29000,
          "draw": "0.6s"
        }
      }
    ]
  },
  {
    "category": "Sub-Machine Guns",
    "weapons":[
      {
        "name": "Alternator",
        "thumb": AssetImage("assets/images/weapons/smg/alternator_thumb.png"),
        "image": Image.asset("assets/images/weapons/smg/alternator.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Light Rounds",
          "mag": 16,
          "reload": "1.90s/2.23s",
          "dps": 160,
          "dmg": "13/19/10.4",
          "rate": 10.67,
          "slots": ["Barrel", "Mag", "Optics", "Stock"],
          "modes": "Auto",
          "speed": 19500,
          "draw": "0.35s"
        }
      },
      {
        "name": "	R-99",
        "thumb": AssetImage(""),
        "image": Image.asset("assets/images/weapons/smg/r99.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Light Rounds",
          "mag": 18,
          "reload": "1.8s/2.45s",
          "dps": 216,
          "dmg": "12/18/9.6",
          "rate": 18,
          "slots": ["Barrel", "Mag", "Optics", "Stock"],
          "modes": "Auto",
          "speed": 21000,
          "draw": "0.35s"
        }
      },
      {
        "name": "Prowler",
        "thumb": AssetImage("assets/images/weapons/assault/prowler_thumb.png"),
        "image": Image.asset("assets/images/weapons/smg/prowler.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Heavy Rounds",
          "mag": 20,
          "reload": "2s/2.6s",
          "dps": 122.78,
          "dmg": "14/21/11.2",
          "rate": 20,
          "slots": ["Mag", "Optics", "Stock", "Hop-Up"],
          "modes": "Burst (5 Shots)",
          "speed": 18000,
          "draw": "0.35s"
        }
      }
    ]
  },{
    "category": "Light-Machine Guns",
    "weapons":[
      {
        "name": "Devotion",
        "thumb": AssetImage("assets/images/weapons/lmg/devotion_thumb.png"),
        "image": Image.asset("assets/images/weapons/lmg/devotion.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Energy Ammo",
          "mag": 44,
          "reload": "2.8s/3.63s",
          "dps": 255,
          "dmg": "17/34/12.75",
          "rate": 15,
          "slots": ["Barrel", "Optics", "Stock", "Hop-Up"],
          "modes": "Auto (Wind-Up)",
          "speed": 33500,
          "draw": "0.7s"
        }
      },
      {
        "name": "Spitfire",
        "thumb": AssetImage(""),
        "image": Image.asset("assets/images/weapons/lmg/spitfire.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Heavy Rounds",
          "mag": 35,
          "reload": "2.8s/3.33",
          "dps": 170.67,
          "dmg": "20/40/16",
          "rate": 8.53,
          "slots": ["Barrel", "Mag", "Optics", "Stock"],
          "modes": "Auto",
          "speed": 27500,
          "draw": "0.7s"
        }
      },
    ]
  },
  {
    "category": "Sniper Rifles",
    "weapons":[
      {
        "name": "G7 Scout",
        "thumb": AssetImage("assets/images/weapons/sniper/scout_thumb.png"),
        "image": Image.asset("assets/images/weapons/sniper/scout.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Light Rounds",
          "mag": 10,
          "reload": "2.40s/3.00s",
          "dps": 142.5,
          "dmg": "30/60/21.75",
          "rate": 4.75,
          "slots": ["Barrel", "Mag", "Optics", "Stock"],
          "modes": "Single",
          "speed": 31500,
          "draw": "0.6s"
        }
      },
      {
        "name": "Longbow DMR",
        "thumb": AssetImage(""),
        "image": Image.asset("assets/images/weapons/sniper/longbow.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Heavy Rounds",
          "mag": 5,
          "reload": "2.66s/3.66s",
          "dps": 66,
          "dmg": "55/110/39.875",
          "rate": 1.2,
          "slots": ["Barrel", "Mag", "Optics", "Stock", "Hop-Up"],
          "modes": "Single",
          "speed": 30500,
          "draw": "0.9s"
        }
      },
      {
        "name": "Triple Take",
        "thumb": AssetImage(""),
        "image": Image.asset("assets/images/weapons/sniper/tripletake.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Energy Ammo",
          "mag": 5,
          "reload": "2.60s/3.60s",
          "dps": 86.25,
          "dmg": "23/46/16.675",
          "rate": 1.25,
          "slots": ["Optics", "Stock", "Hop-Up"],
          "modes": "Single (Triple-Shot spread)",
          "speed": 32000,
          "draw": "0.9s"
        }
      },
      {
        "name": "Kraber .50 CAL",
        "thumb": AssetImage(""),
        "image": Image.asset("assets/images/weapons/sniper/kraber.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Unique",
          "mag": 4,
          "reload": "3.20s/4.30s",
          "dps": 62.5,
          "dmg": "125/250/90.625",
          "rate": 0.5,
          "slots": ["None"],
          "modes": "Single",
          "speed": 29500,
          "draw": "1.2s"
        }
      }
    ]
  },
  {
    "category": "Shotguns",
    "weapons":[
      {
        "name": "EVA-8",
        "thumb": AssetImage("assets/images/weapons/shutgun/eva8_thumb.png"),
        "image": Image.asset("assets/images/weapons/shotgun/eva8.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Shotgun Shells",
          "mag": 8,
          "reload": "2.50s/3.50s",
          "dps": 134.19,
          "dmg": "7/10/5.6 (63/90/50.4)",
          "rate": 2.13,
          "slots": ["Mag", "Optics"],
          "modes": "Auto",
          "speed": 16000,
          "draw": "0.45s"
        }
      },
      {
        "name": "Peacekeeper",
        "thumb": AssetImage("assets/images/weapons/shotgun/peacekeeper_thumb.png"),
        "image": Image.asset("assets/images/weapons/shotgun/peacekeeper.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Shotgun Shells",
          "mag": 6,
          "reload": "2.50s/3.50s",
          "dps": 106.7,
          "dmg": "10/15/8 (110/165/88)",
          "rate": 0.97,
          "slots": ["Mag", "Optics", "Hop-Up"],
          "modes": "Single",
          "speed": 16000,
          "draw": "0.45s"
        }
      },
      {
        "name": "Mozambique",
        "thumb": AssetImage("assets/images/weapons/shotgun/mozambique_thumb.png"),
        "image": Image.asset("assets/images/weapons/shotgun/mozambique.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Shotgun Shells",
          "mag": 3,
          "reload": "2.10s/2.60s",
          "dps": 135,
          "dmg": "15/22/13.5 (45/66/40.5)",
          "rate": 3,
          "slots": ["Mag", "Optics"],
          "modes": "Auto",
          "speed": 10000,
          "draw": "0.45s"
        }
      },
      {
        "name": "Mastiff",
        "thumb": AssetImage(""),
        "image": Image.asset("assets/images/weapons/shotgun/mastif.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Unique",
          "mag": 4,
          "reload": "1.03s/1.70s",
          "dps": 230.4,
          "dmg": "18/36/18 (144/288/144)",
          "rate": 1.6,
          "slots": ["None"],
          "modes": "Single",
          "speed": 12000,
          "draw": "0.45s"
        }
      }
    ]
  },
  {
    "category": "Pistols",
    "weapons":[
      {
        "name": "P2020",
        "thumb": AssetImage("assets/images/weapons/pistol/p2020_thumb.png"),
        "image": Image.asset("assets/images/weapons/pistol/p2020.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Light Rounds",
          "mag": 10,
          "reload": "1.25s/1.25s",
          "dps": 86.04,
          "dmg": "12/18/10.8",
          "rate": 7.17,
          "slots": ["Mag", "Optics"],
          "modes": "Auto",
          "speed": 18500,
          "draw": "0.25s"
        }
      },
      {
        "name": "RE-45",
        "thumb": AssetImage("assets/images/weapons/pistol/re45_thumb.png"),
        "image": Image.asset("assets/images/weapons/pistol/re45.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Light Rounds",
          "mag": 15,
          "reload": "1.75s/2.12s",
          "dps": 137.5,
          "dmg": "11/16/9.9",
          "rate": 12.5,
          "slots": ["Barrel", "Mag", "Optics"],
          "modes": "Single",
          "speed": 19500,
          "draw": "0.25s"
        }
      },
      {
        "name": "Wingman",
        "thumb": AssetImage("assets/images/weapons/pistol/wingman_thumb.png"),
        "image": Image.asset("assets/images/weapons/pistol/wingman.jpg", fit: BoxFit.cover,),
        "stats": {
          "ammo": "Heavy Rounds",
          "mag": 6,
          "reload": "2.10s/2.10s",
          "dps": 153.9,
          "dmg": "45/90/40.5",
          "rate": 3.42,
          "slots": ["Mag", "Optics", "Hop-Up"],
          "modes": "Auto",
          "speed": 18000,
          "draw": "0.25s"
        }
      }
    ]
  },
];