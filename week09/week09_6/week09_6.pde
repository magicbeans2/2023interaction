PImage img;
int [][] pos = {{94,488},{247,524},{179,524},{160,490},{151,456},
{194,489},{231,491},{264,489},{323,456},{300,489},{330,490},{367,491}
,{315,523},{280,526},{357,454},{389,457},{83,456},{188,457},{129,490}
,{220,456},{287,457},{211,524},{118,457},{145,525},{252,456},{109,524}};
void setup(){
  size(800, 600);
  img = loadImage("keyboard.png");
  rectMode(CENTER); 
}
void draw(){
  background(#FFFFF2); 
  image(img, 0, 600-266);
  fill(255,0,0, 128); 
  rect(mouseX, mouseY, 28, 30, 5);
  fill(0,255,0, 128);
  for(int i=0; i<26; i++){
    if(typing.charAt(0)-'a'==i) rect(pos[i][0], pos[i][1], 28, 30, 5);
    if(pressed[i]) rect(pos[i][0], pos[i][1], 28, 30, 5);
  }
  fill(0);
  textSize(50);
  text(typing,50,50);
  text(typed,50,100);
  fill(255,0,0);
  text(typed+typing.charAt(ID),50,100);
  fill(0);
  text(typed,50,100);
}
String typing="printfprintfprintf";
String typed="";
int ID = 0;
boolean [] pressed = new boolean[26];
void keyPressed(){
  if(key>='a'&&key<='z') pressed[key-'a'] = true;
  typed+=key;
  ID++;
}
void keyReleased(){
  if(key>='a'&&key<='z') pressed[key-'a'] = false;
}
void mousePressed(){
  print(mouseX, mouseY); 
}
