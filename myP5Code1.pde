setup = function() {
    size(600, 400);
};

//Background Images
var apartmentImage = loadImage("https://theagencyre.com/blog/wp-content/uploads/2021/10/original.jpg");

var forestImage = loadImage("https://cdn.britannica.com/75/191975-050-11C255AA/Woman-emotion.jpg");

var suitImage = loadImage("https://popculturecomm348.wordpress.com/wp-content/uploads/2014/09/barneystinson.jpg")

var streetImage = loadImage("https://i.ytimg.com/vi/uYWTfPBx9W4/maxresdefault.jpg")

var barImage = loadImage("https://cdnb.artstation.com/p/assets/covers/images/016/610/039/large/thomas-djalloul-shot-0.jpg?1552813099")

var workImage = loadImage("https://static.wikia.nocookie.net/himym/images/b/b2/CompletedGNBTower.jpg/revision/latest/scale-to-width-down/1200?cb=20121226025415")

var dougImage = loadImage("https://m.media-amazon.com/images/M/MV5BMTc0MzUyOTk0NF5BMl5BanBnXkFtZTcwNDA2OTUxMg@@._V1_.jpg")

var fightImage = loadImage("https://static.tvtropes.org/pmwiki/pub/images/himym_4x10.jpg")

//Variable Declarations
var sceneImage = apartmentImage;
var sceneText = "Let's get out of this apartment.  [Press f to get out of here!]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'f'){
       sceneImage = forestImage;   
       sceneText = "What are you doing? you forgot to suit up! \ngo back and press g to suit up!  [Press s to restart]";
     } 
     if(key == 's'){
      sceneImage = apartmentImage;
      sceneText = "Let's get out of this apartment.  [Press f to get out of here!]";
    } 

    if(key == 'g'){
      sceneImage = suitImage;
      sceneText = "Lookin good! now lets go.  [Press L to get out of here!]";
    } 

    if(key == 'l'){
      sceneImage = streetImage;
      sceneText = "Alrighty now do you wanna go to work or to the bar!\n [Press W for work or B for bar]";
    } 

    if(key == 'b'){
      sceneImage = barImage;
      sceneText = "lets get crunk! [press d to drink]";
    }

    if(key == 'd'){
      sceneImage = dougImage;
      sceneText = "doug brings you a drink but he needs you to fight with him! \ngo fight with doug! [h to fight!]";
  
    }

     if(key == 'h'){
      sceneImage = fightImage;
      sceneText = "doug brings you a drink but he needs you to fight with him! \ngo fight with doug! [h to fight!]";
  
    }
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



