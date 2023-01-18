# oClassic
## About oClassic
**2Moons** is an oGame clone, which has been developed by many different teams. The goal of some  projects is to improve the game to attract new and younger players. 2 active Forks are:

- https://github.com/Yaro2709/New-Star

- https://github.com/steemnova/steemnova

  
**oClassic** tries the opposite: oClassic is a retro game. Not all features are exactly as they were in oGame many years ago. However, the game should feel like it is GameForge's retro universe.

## Status of this project
- Work in progress

## Local installation
1. Checkout the project from GIT
2. Install Docker and Docker-Compose (Windows or Linux)
3. Run the command:
```
docker-compose up
```
4. Use phpMyAdmin to create a Database, for example 'moon': http://localhost:8089/
5. Open Game in Browser: http://localhost:8088/
6. Install using DB password 'secret' (prefilled is not working)

## Major Changes from 2Moons 1.8
### Overview
<img src="https://i.ibb.co/8zwCKcJ/o-Classic1-8-1-Overview.png" alt="o-Classic1-8-1-Overview">

### Empire
<img src="https://i.ibb.co/pX52W94/o-Classic1-8-1-Empire.png" alt="o-Classic1-8-1-Empire">

### Buildings
<img src="https://i.ibb.co/BnTQFGk/o-Classic1-8-1-Buildings.png" alt="o-Classic1-8-1-Buildings">

### Galaxy
<img src="https://i.ibb.co/qRyfKcJ/o-Classic1-8-1-Galaxy.png" alt="o-Classic1-8-1-Galaxy">

### Officer
<img src="https://i.ibb.co/2qNKzNC/o-Classic1-8-1-Officer.png" alt="o-Classic1-8-1-Officer">

## Changelog in more detail
### oClassic v1.8.1 01/23
- DPP#1 Refactor Repo, Docker-Compose - Refactor the GIT repo to optimize for the use of Docker compose for local development and final deployment.
- DPP#2 Daily Reward - Daily reward on the Officers page to be able to receive up to 500 DM every 24 hours.
- DPP#3 Research in Overview - The overview shows what is currently being researched.
- DPP#4 Change Style to more Classic look (Buildings) - oClassic should look more like the classic oGame before the redesign.
- DPP#5 Colonization Bug - Although a player has researched Astrophysics 5, he cannot found another colony.
- DPP#7 Planet Count in Overview - The Overview should display the amount of plantes that can be colonized.
- DPP#8 Change left menu to more Classic look - oClassic should look more like the classic oGame before the redesign.
- DPP#9 Change Style to more Classic look (Research) - oClassic should look more like the classic oGame before the redesign.
- DPP#10 Change Style to more Classic look (Shipyard) - oClassic should look more like the classic oGame before the redesign.
- DPP#11 Change Style to more Classic look (Officer) - oClassic should look more like the classic oGame before the redesign.
- DPP#12/DPP#28 Show Count Player online - Like in 2Moons 2.0 in the overview the number of online users should be displayed.
- DPP#13 Remove Ships that are not in oGame - oClassic should only have ships, that are in the original oGame.
- DPP#14 Change Galaxy View Icons - Galaxy View Icons must be bigger.
- DPP#15 Color in Empire View - The Empire View should have colors showing planets with to low values and it should display average values.
- DPP#16 Fleet Sent (Page3) Link to Galaxy View and Fleet View - The User should have the choice if he wants to jump back to the galaxy view or to the fleet view after sending an attack.
- DPP#17 Galaxy View Improvements - Browser Refresh (F5) should be possible, and flying fleets should be visible.
- DPP#18 All Players deleted by CronJob - Bugfix in CronJobs.
- DPP#19 Daily Reward per calendar day - The daily reward should not run 24 hours, but always until 00:00.
- DPP#20 Navigation in Galaxy View by Keyboard - Left: prev System, Right: next System, Down: Update free Slots
- DPP#21 Galaxy View: Free slots are not updated - If you spy in the Galaxy View and all slots are used up, you can't spy anymore, even if you waited long enough. You even have to reload the page 2x so that you can spy again.
- DPP#24/25 Buildungs and Sience are to expensive - Buildings and Sience are always 1 level to expensive. Buy level 1 and pay for level 2.
- DPP#26 Light Cargo is to slow with Impulse Engine - Switch of engine at tech level 5 not working correctly. Still uses base speed 5000 and not 10000.
- DPP#27 Show 'In Progress' in Empire View - The Empire View shold show if with a '+1' if a Building or Research is in Progress.
- DPP#29 Update Buildings in Empire View - The Empire View sometimes needs second reload to handle finished buildings.


# Credits
* 2022-2023 [oClassic] (https://github.com/DarthPinkPapa/oClassic) - DarthPinkPapa
* 2009-2019 [2Moons Browsergame Engine](https://github.com/jkroepke/2Moons) - jkroepke
* 2008-2014 [XGProjecto](https://github.com/XG-Project/XG-Project-v2) - lucky
* 2008,2009 XNova *"XNova 0.9a"* - XNova Group / xnova.fr
* 2006-2007 UGamela 0.4 - Phoscur
* 2004-2006 UGamela 0.2h - Perberos