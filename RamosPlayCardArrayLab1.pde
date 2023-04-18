/* name: Anisa Ramos

LAB #1:
Base on the random name or days program from last week, write a program
that has two arrays of Strings, declared as: 
String [] card = {"2", "3", …,"9", "10", "J", "Q", "K", "A"}; 
and the other as 
String[] suit = {"C", "D", "H", "S"};. 

Your  program will display a random playcard consisting of a 
card name from the card array and a random suit name from the 
suit array.  You should generate two random numbers, one for 
the card and one for the suit name. Add a mouseClicked function 
to generate two new random numbers that will display a different
random playcard.  

The Text display will be, for example, 10D (for 10 of Diamond),
3H (for 3 of Heart), QC (for Queen of Club), ...etc.
*/
PImage img;
// array of animal image filenames
String[] card = {"2", "3", "4", "5" , "6", "7", "8", "9",  "10" , "J", "Q", "K" , "A"};
String[] suit = {"C", "D", "H", "S"};

// generate a random number from 0 to the length of the array
int  idx  = int(random(card.length));
int  sdx = int(random(suit.length));

void setup() {
      size(520, 440);
      img = loadImage(card[idx]+suit[sdx]+ ".jpg"); // load the initial image
}
void draw() {
     background(0);
     imageMode(CENTER);
     image(img, width/2, height/2);
}
void mouseClicked(){
   idx  = int(random(card.length));  // generate new index
   sdx = int(random(suit.length));
   img = loadImage(card[idx]+suit[sdx]+ ".jpg"); // load the initial image 
}
