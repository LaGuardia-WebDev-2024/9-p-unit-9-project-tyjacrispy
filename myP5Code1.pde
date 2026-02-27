setup = function() {
    size(600, 400);
};

//Background Images
var apartmentImage = loadImage("https://theagencyre.com/blog/wp-content/uploads/2021/10/original.jpg");

var forestImage = loadImage("https://cdn.britannica.com/75/191975-050-11C255AA/Woman-emotion.jpg");

var suitImage = loadImage("https://popculturecomm348.wordpress.com/wp-content/uploads/2014/09/barneystinson.jpg")

var streetImage = loadImage("https://i.ytimg.com/vi/uYWTfPBx9W4/maxresdefault.jpg")

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



