int enter=0;
m destiny;
m tokoyomi;
m roca;
m calaca;
m panda;
m ave;

m destinyp1;
m tokoyomip1;
m rocap1;
m calacap1;
m pandap1;
m avep1;

m destinyp2;
m tokoyomip2;
m rocap2;
m calacap2;
m pandap2;
m avep2;

circulo cir1;
circulo cir2;
circulo cir3;
circulo cir4;
circulo cir5;
circulo cir6;
float [] p1 = new float [2];
float [] p2 = new float [2];
int p1p,p2p;
float turno = random(2);
float vidap1,vidap2;

void setup (){
  size(1200,800);
  
  ave = new m(12,7,210,320,-0.4,0.4);
  destiny = new m(20,4,75,40,0.4,0.4);
  tokoyomi = new m(25,3,400,45,0.55,0.55);
  roca = new m(26,3,720,15,0.32,0.32);
  calaca = new m(15,5,960,60,0.32,0.32);
  panda = new m(17,4,1150,320,-0.4,0.4);
         
  cir1 = new circulo(150,150,150,255,255,255);
  cir2 = new circulo(400,150,150,255,255,255);
  cir3 = new circulo(150,400,150,255,255,255);
  cir4 = new circulo(1050,150,150,255,255,255);
  cir5 = new circulo(800,150,150,255,255,255);
  cir6 = new circulo(1050,400,150,255,255,255);
  
  p1[0]=0;
  p2[0]=0;
  
  if (turno>1)
  turno=2;
  if (turno<1)
  turno=1;
}

void draw(){
  if (enter == 0){                                    //Inicio
      pantalla1();
      println (p1[0],p1[1],p2[0],p2[1],key, turno);
  }else if(enter == 1){                               //Instrucciones
      pantalla2();
  }else if(enter == 2){                               //seleccion de personajes p1
      pantalla3();
      println (p1[0],p1[1],p2[0],p2[1],key);
  }else if(enter == 3){                               //seleccion de personajes p2
      background(0);
      println (p1[0],p1[1],p2[0],p2[1],key);
      pantalla4();
  }else if(enter == 4){                               //game over
      background(39);
      println (p1[0],p1[1],p2[0],p2[1],key, turno);
      pantalla5();
  }else if (enter == 5){                               //final
      background(0);
      println (p1[0],p1[1],p2[0],p2[1],key, turno);
      pantalla6();
}
}
     



void keyReleased (){
   
  if(key == ENTER){
        if (enter == 0){
          enter+=1;
        }else if(enter == 1){                               //Instrucciones
          enter+=1;
        }
     }else if(key == BACKSPACE){
        if (enter == 0){                                    //Inicio
        }else if(enter == 1){                               //Instrucciones
          enter-=1;
        }else if(enter == 2){                               // seleccion de personajes
          enter-=1;
        }
     }else if(key == TAB){
       if (enter == 5) 
       enter = 0;
     }
     
    if(enter==2||enter==3){
     if(p1[0] == 0){
      if (key == '1'){
           p1[0]=ave.atq;
           p1[1]=ave.hp;
           p1p=1;
           enter=3;
           key = 'y';}
       if (key == '2'){
           p1[0]=destiny.atq;
           p1[1]=destiny.hp;
           p1p=2;
           enter=3;
           key = 'y';}
       if (key == '3'){
           p1[0]=tokoyomi.atq;
           p1[1]=tokoyomi.hp;
           p1p=3;
           enter=3;
           key = 'y';}
       if (key == '4'){
           p1[0]=roca.atq;
           p1[1]=roca.hp;
           p1p=4;
           enter=3;
           key = 'y';}
       if (key == '5'){
           p1[0]=calaca.atq;
           p1[1]=calaca.hp;
           p1p=5;
           enter=3;
           key = 'y';}
       if (key == '6'){
           p1[0]=panda.atq;
           p1[1]=panda.hp;
           p1p=6;
           enter=3;
           key = 'y';}
      }
      
      
      
      if(p2[0] == 0){
      if (key == '1'){
           p2[0]=ave.atq;
           p2[1]=ave.hp;
           p2p=1;
           enter=4;
           key = 'y';}
       if (key == '2'){
           p2[0]=destiny.atq;
           p2[1]=destiny.hp;
           p2p=2;
           enter=4;
           key = 'y';}
       if (key == '3'){
           p2[0]=tokoyomi.atq;
           p2[1]=tokoyomi.hp;
           p2p=3;
           enter=4;
           key = 'y';}
       if (key == '4'){
           p2[0]=roca.atq;
           p2[1]=roca.hp;
           p2p=4;
           enter=4;
           key = 'y';}
       if (key == '5'){
           p2[0]=calaca.atq;
           p2[1]=calaca.hp;
           p2p=5;
           enter=4;
           key = 'y';}
       if (key == '6'){
           p2[0]=panda.atq;
           p2[1]=panda.hp;
           p2p=6;
           enter=4;
           key = 'y';}
      }
    }
}


void pantalla1(){
      background(0);
      fill(255);
      textSize(50);
      textAlign(CENTER);
      text("The Reincarnation Of",600,140);
      textSize(200);
      text("DESTINY", 600,300);
      textSize(20);
      text("Press ENTER to continue",600,700);
}

void pantalla2(){
      background(0);
      fill(255);
      textSize(70);
      textAlign(CENTER);
      text("INSTRUCTIONS",600,140);
      textSize(45);
      text("Players select your champion with the keys below it",600,240);
      
      text("Player 1 attack with A       Player 2 atack with L ",600,440);
      textSize(20);
      text("Press ENTER to continue",600,700);
}

void pantalla3(){
      
  
      background(0);
      textSize(300);
      text("P1", 600,500);
      
      cir1.circulodisplay();
      destiny.displaydestiny();
      
      cir2.circulodisplay();
      tokoyomi.displaytokoyomi();
      
      cir3.circulodisplay();
      ave.displayave();
      
      cir4.circulodisplay();
      calaca.displaycalaca();
      
      cir5.circulodisplay();
      roca.displayroca();
      
      cir6.circulodisplay();
      panda.displayanda();
      textSize(50);
      text("1",150,550);
      text("2",150,300);
      text("3",400,300);
      text("4",800,300);
      text("5",1050,300);
      text("6",1050,550);
      
      
}

void pantalla4(){
      
  
      background(0);
      textSize(300);
      text("P2", 600,500);
      
      cir1.circulodisplay();
      destiny.displaydestiny();
      
      cir2.circulodisplay();
      tokoyomi.displaytokoyomi();
      
      cir3.circulodisplay();
      ave.displayave();
      
      cir4.circulodisplay();
      calaca.displaycalaca();
      
      cir5.circulodisplay();
      roca.displayroca();
      
      cir6.circulodisplay();
      panda.displayanda();
      textSize(50);
      text("1",150,550);
      text("2",150,300);
      text("3",400,300);
      text("4",800,300);
      text("5",1050,300);
      text("6",1050,550);
      
      
}


void pantalla5 (){
  personajes ();
  if (turno==1){
      textSize(50);
      text("P1", 600,55);
    if (key == 'a' || key == 'A'){
      p2[1]=p2[1]-p1[0];
      if(p2[1]<=0){
        enter = 5;
      }else
      turno=2;
    }
    
  }
  
  
  if (turno==2){
      textSize(50);
      text("P2", 600,55);
    if (key == 'l' || key == 'L'){
      p1[1]=p1[1]-p2[0];
      if(p1[1]<=0){
        enter = 5;
      }else
      turno=1;
    }
  }
  
  float e=0,d=0;
  
  vidap1=p1[1]*10/p1[1];
  vidap2=p2[1]*10/p2[1];
  
  e=p1[1]/vidap1;
  d=p2[1]/vidap2;
  
  rect(150,750,e*100,30);
  rect(750,750,d*100,30);
  
}

void personajes (){
  avep1 = new m(12,7,450,90,-1,1);              //
  destinyp1 = new m(20,4,150,200,0.7,0.7);
  tokoyomip1 = new m(25,3,325,200,1,1);
  rocap1 = new m(30,3,150,90,0.7,0.7);
  calacap1 = new m(15,5,500,100,-0.8,0.8);            //
  pandap1 = new m(17,4,50,140,1,1);
  
  avep2 = new m(12,7,700,90,1,1);             //
  destinyp2 = new m(20,4,750,200,0.7,0.7);
  tokoyomip2 = new m(25,3,900,200,-1,1);
  rocap2 = new m(30,3,670,90,0.7,0.7);
  calacap2 = new m(15,5,700,100,0.8,0.8);              //
  pandap2 = new m(17,4,1200,140,-1,1);
  
  
  if (p1p == 1){
  avep1.displayave();
  }
  if (p1p == 2){
  destinyp1.displaydestiny();  }
  if (p1p == 3){
  tokoyomip1.displaytokoyomi();
  }
  if (p1p == 4){
  rocap1.displayroca();
  }
  if (p1p == 5){
  calacap1.displaycalaca();
  }
  if (p1p == 6){
  pandap1.displayanda();
  }
      
      
      
  if (p2p == 1){
  avep2.displayave();
  }
  if (p2p == 2){
  destinyp2.displaydestiny();  
  }
  if (p2p == 3){
  tokoyomip2.displaytokoyomi();
  }
  if (p2p == 4){
  rocap2.displayroca();
  }
  if (p2p == 5){
  calacap2.displaycalaca();  
  }
  if (p2p == 6){
  pandap2.displayanda();
  }
  
  
  
}

void pantalla6(){
  if (turno==1){
      textSize(200);
      text("P1", 600,300);
      text("WIN", 600,500);
      textSize(50);
      text("P2 LOSE", 600,700);
      textSize(30);
      text("Press TAB to play again", 600,740);
      p1[0]=0;
      p1[1]=0;
      p2[0]=0;
      p2[1]=0;
  }
  
  if (turno==2){
      textSize(200);
      text("P2", 600,300);
      text("WIN", 600,500);
      textSize(50);
      text("P1 LOSE", 600,700);
      textSize(30);
      text("Press TAB to play again", 600,740);
      p1[0]=0;
      p1[1]=0;
      p2[0]=0;
      p2[1]=0;
  }
  
  
}

class m{
  int hp,atq;
  float x,y;
  float scalax,scalay;
  
  m(int hp_,int atq_, float x_, float y_,float scalax_,float scalay_){
  hp = hp_;
  atq = atq_;
  x = x_;
  y = y_;
  scalax = scalax_;
  scalay=scalay_;
  }
  
  void displaydestiny (){
    noStroke();
 pushMatrix();
   translate(x,y);
   scale(scalax,scalay);
fill(#D7D1D5); // blanco 1
    rect(0,450,10,10);
    
    rect(10,430,10,10);
    rect(10,440,10,10);
    
    rect(20,410,10,10);
    rect(20,420,10,10);
 
fill(#827979); // blanco 3
    rect(30,400,10,10);
    
    rect(40,380,10,10);
    rect(40,390,10,10);
    
    rect(50,360,10,10);
    rect(50,370,10,10);
    
    rect(60,340,10,10);
    rect(60,350,10,10);
   
fill(0); // negro
    rect(70,300,10,10);
    rect(70,310,10,10);
    rect(70,320,10,10);
fill(#827979); // blanco 3
    rect(70,330,10,10);
    
fill(0); // negro
    rect(80,290,10,10);
fill(#1B2622); // verde 3
    rect(80,300,10,10);
fill(#D7C4B4); // carne
    rect(80,310,10,10);
fill(0); // negro
    rect(80,320,10,10);
    rect(80,330,10,10);
    
fill(#334539);   //verde 1
    rect(90,270,10,10);
    rect(90,280,10,10);
    rect(90,290,10,10);
fill(#1B2622); // verde 3
    rect(90,300,10,10);
fill(#D7C4B4); // carne
    rect(90,310,10,10);
    rect(90,320,10,10);
    
fill(#334539);   //verde 1
    rect(100,240,10,10);
    rect(100,250,10,10);
    rect(100,260,10,10);
    rect(100,270,10,10);
    rect(100,280,10,10);
    rect(100,290,10,10);
fill(#1B2622); // verde 3
    rect(100,300,10,10);
    rect(100,310,10,10);
    
fill(#334539);   //verde 1
    rect(110,210,10,10);
    rect(110,220,10,10);
    rect(110,230,10,10);
    rect(110,240,10,10);
    rect(110,250,10,10);
    rect(110,260,10,10);
    rect(110,270,10,10);
    rect(110,280,10,10);
fill(#2B3B30); // verde 2
    rect(110,290,10,10);
fill(#1B2622); // verde 3
    rect(110,300,10,10);
    rect(110,310,10,10);
fill(#827979); // blanco 3
    rect(110,330,10,10);
fill(#2C2424); // cafe 4
    rect(110,340,10,10);
    rect(110,350,10,10);
    rect(110,360,10,10);
    rect(110,370,10,10);
fill(#827979); // blanco 3
    rect(110,380,10,10);
    
fill(#334539);   //verde 1
    rect(120,190,10,10);
    rect(120,200,10,10);
    rect(120,210,10,10);
    rect(120,220,10,10);
    rect(120,230,10,10);
    rect(120,240,10,10);
    rect(120,250,10,10);
    rect(120,260,10,10);
fill(#2B3B30); // verde 2
    rect(120,270,10,10);
    rect(120,280,10,10);
    rect(120,290,10,10);
fill(#1B2622); // verde 3
    rect(120,300,10,10);
    rect(120,310,10,10);
fill(#827979); // blanco 3
    rect(120,330,10,10);
    rect(120,340,10,10);
    rect(120,350,10,10);
    rect(120,360,10,10);
    rect(120,370,10,10);
    rect(120,380,10,10);
    
fill(#334539);   //verde 1
    rect(130,70,10,10);
    rect(130,80,10,10);
    rect(130,90,10,10);
    rect(130,100,10,10);
    rect(130,110,10,10);
    rect(130,170,10,10);
    rect(130,180,10,10);
    rect(130,190,10,10);
    rect(130,200,10,10);
    rect(130,210,10,10);
    rect(130,220,10,10);
    rect(130,230,10,10);
fill(#2B3B30); // verde 2
    rect(130,240,10,10);
    rect(130,250,10,10);
    rect(130,260,10,10);
    rect(130,270,10,10);
    rect(130,280,10,10);
fill(#334539);   //verde 1
    rect(130,290,10,10);
    rect(130,300,10,10);
fill(#1B2622); // verde 3
    rect(130,310,10,10);
fill(#352626); // cafe3
    rect(130,320,10,10);
fill(#827979); // blanco 3
    rect(130,330,10,10);
fill(#2C2424); // cafe 4
    rect(130,340,10,10);
    rect(130,350,10,10);
    rect(130,360,10,10);
    rect(130,370,10,10);
fill(#827979); // blanco 3
    rect(130,380,10,10);
    
fill(#334539);   //verde 1
    rect(140,50,10,10);
    rect(140,60,10,10);
fill(#2B3B30);   //verde2   
    rect(140,70,10,10);
    rect(140,80,10,10);
    rect(140,90,10,10);
fill(#334539);   //verde 1
    rect(140,100,10,10);
    rect(140,110,10,10);
    rect(140,120,10,10);
fill(#2B3B30);   //verde2 
    rect(140,140,10,10);
fill(#334539);   //verde 1
    rect(140,150,10,10);
    rect(140,160,10,10);
    rect(140,170,10,10);
fill(#2B3B30);   //verde2 
    rect(140,180,10,10);
    rect(140,190,10,10);
    rect(140,200,10,10);
fill(#334539);   //verde 1
    rect(140,210,10,10);
    rect(140,220,10,10);
    rect(140,230,10,10);
    rect(140,240,10,10);
    rect(140,250,10,10);
    rect(140,260,10,10);
    rect(140,270,10,10);
    rect(140,280,10,10);
    rect(140,290,10,10);
    fill(#1B2622);   //verde3 
    rect(140,300,10,10);
    fill(#352626); // cafe3
    rect(140,310,10,10);
    rect(140,320,10,10);
    rect(140,330,10,10);
     fill(#D7D1D5); // blanco1
    rect(140,340,10,10);
    
fill(#334539);   //verde1         
    rect(150,30,10,10);
    rect(150,40,10,10);
    rect(150,50,10,10);
    fill(#2B3B30);   //verde2
    rect(150,60,10,10);
    rect(150,70,10,10);
    rect(150,80,10,10);
fill(#334539);   //verde1   
    rect(150,90,10,10);
    fill(#1B2622);   //verde3
    rect(150,100,10,10);
    rect(150,110,10,10);
fill(#334539);   //verde1  
    rect(150,120,10,10); 
    fill(#2B3B30);   //verde2
    rect(150,130,10,10);
    rect(150,140,10,10);
fill(#334539);   //verde1 
    rect(150,150,10,10);
    fill(#2B3B30);   //verde2
    rect(150,160,10,10);
    rect(150,170,10,10);
    rect(150,180,10,10);
fill(#334539);   //verde1 
    rect(150,190,10,10);
    rect(150,200,10,10);
    rect(150,210,10,10);
    fill(#1B2622);   //verde3 
    rect(150,220,10,10);
    rect(150,230,10,10);
    rect(150,240,10,10);
    rect(150,250,10,10);
    rect(150,260,10,10);
    rect(150,270,10,10);
    rect(150,280,10,10);
    rect(150,290,10,10);
    rect(150,300,10,10);
    fill(#352626); // cafe3
    rect(150,310,10,10);
     fill(#BAB8B6); // blanco2
    rect(150,320,10,10);
    fill(#352626); // cafe3
    rect(150,330,10,10);
     fill(#D7D1D5); // blanco1
    rect(150,340,10,10);
    fill(#443131);   //cafe1
    rect(150,350,10,10);
     fill(#D7D1D5); // blanco1
    rect(150,360,10,10);
    rect(150,370,10,10);
    fill(#443131);   //cafe1
    rect(150,380,10,10);
    rect(150,390,10,10);
    rect(150,400,10,10);
    rect(150,410,10,10);
    rect(150,420,10,10);
    
fill(#334539);   //verde1         
    rect(160,20,10,10);
    rect(160,30,10,10);
    fill(#2B3B30);   //verde2
    rect(160,40,10,10);
    rect(160,50,10,10);
    rect(160,60,10,10);
    rect(160,70,10,10);
fill(#334539);   //verde1   
    rect(160,80,10,10);
    fill(#1B2622);   //verde3
    rect(160,90,10,10);
    rect(160,100,10,10);
    rect(160,110,10,10);
    rect(160,120,10,10); 
    fill(#2B3B30);   //verde2
    rect(160,130,10,10);
    fill(#BAB8B6); // blanco2
    rect(160,140,10,10);
    fill(#1B2622);   //verde3
    rect(160,150,10,10);
    rect(160,160,10,10);
    rect(160,170,10,10);
    rect(160,180,10,10);
    rect(160,190,10,10);
    rect(160,200,10,10);
    rect(160,210,10,10);
fill(#2B3B30);   //verde2 
rect(160,220,10,10);
    rect(160,230,10,10);
    rect(160,240,10,10);
    rect(160,250,10,10);
    fill(#1B2622);   //verde3 
    rect(160,260,10,10);
    rect(160,270,10,10);
    rect(160,280,10,10);
    rect(160,290,10,10);
    rect(160,300,10,10);
    fill(#352626); // cafe3
    rect(160,310,10,10);
    fill(#BAB8B6); // blanco2
    rect(160,320,10,10);
    fill(#352626); // cafe
    rect(160,330,10,10);
    fill(#BAB8B6); // blanco2
    rect(160,340,10,10);
    fill(#443131);   //cafe1
    rect(160,350,10,10);
    fill(#BAB8B6); // blanco2
    rect(160,360,10,10);
    rect(160,370,10,10);
    fill(#443131);   //cafe1
    rect(160,380,10,10);
    rect(160,390,10,10);
    rect(160,400,10,10);
    rect(160,410,10,10);
    rect(160,420,10,10);
    rect(160,430,10,10);
    rect(160,440,10,10);
    fill(#392E2A);   //cafe2 
    rect(160,450,10,10);
    rect(160,460,10,10);
    rect(160,470,10,10);
    rect(160,480,10,10);
    rect(160,490,10,10);
    
fill(#334539);   //verde1         
    rect(170,20,10,10);
    fill(#2B3B30);   //verde2
    rect(170,30,10,10);
    rect(170,40,10,10);
    rect(170,50,10,10);
    rect(170,60,10,10);
fill(#334539);   //verde1
    rect(170,70,10,10);
    fill(#1B2622);   //verde3 
    rect(170,80,10,10);
    rect(170,90,10,10);
    rect(170,100,10,10);
    rect(170,110,10,10);
    rect(170,120,10,10);
    fill(#2B3B30);   //verde2
    rect(170,130,10,10);
    rect(170,140,10,10);
    rect(170,150,10,10);
    rect(170,160,10,10);
    rect(170,170,10,10);
    rect(170,180,10,10);
    rect(170,190,10,10);
    rect(170,200,10,10);
    rect(170,210,10,10);
fill(#334539);   //verde1
    rect(170,220,10,10);
    rect(170,230,10,10);
    rect(170,240,10,10);
    rect(170,250,10,10);
    rect(170,260,10,10);
    rect(170,270,10,10);
    fill(#1B2622);   //verde3 
    rect(170,280,10,10);
    rect(170,290,10,10);
    rect(170,300,10,10);
    fill(#352626); // cafe3
    rect(170,310,10,10);
    fill(#827979); // blanco3
    rect(170,320,10,10);
    fill(#352626); // cafe3
    rect(170,330,10,10);
    fill(#827979); // blanco3
    rect(170,340,10,10);
    fill(#2C2424); // cafe 4
    rect(170,350,10,10);
    fill(#827979); // blanco3
    rect(170,360,10,10);
    rect(170,370,10,10);
    fill(#2C2424); // cafe 4
    rect(170,380,10,10);
    rect(170,390,10,10);
    rect(170,400,10,10);
    rect(170,410,10,10);
    rect(170,420,10,10);
    rect(170,430,10,10);
    rect(170,440,10,10);
    rect(170,450,10,10);
    fill(#392E2A);   //cafe2 
    rect(170,460,10,10);
    rect(170,470,10,10);
    rect(170,480,10,10);
    rect(170,490,10,10);
    fill(#352626); // cafe3
    rect(170,500,10,10);
    rect(170,510,10,10);
    rect(170,520,10,10);
    rect(170,530,10,10);
    
fill(#334539);
    rect(180,10,10,10);
    rect(180,20,10,10);
    fill(#2B3B30);   //verde2
    rect(180,30,10,10);
    rect(180,40,10,10);
    rect(180,50,10,10);
    rect(180,60,10,10); 
fill(#334539);
    rect(180,70,10,10);
fill(#1B2622);   //verde3 
    rect(180,80,10,10);
    rect(180,90,10,10);
    rect(180,100,10,10);
    rect(180,110,10,10);
    rect(180,120,10,10);
    fill(#2B3B30);   //verde2
    rect(180,130,10,10);
    rect(180,140,10,10);
fill(#334539);
    rect(180,150,10,10);
    fill(#2B3B30);   //verde2
    rect(180,160,10,10);
    rect(180,170,10,10);
    rect(180,180,10,10);
    rect(180,190,10,10);
fill(#334539);
    rect(180,200,10,10);
    rect(180,210,10,10);
    rect(180,220,10,10);
    rect(180,230,10,10);
    rect(180,240,10,10);
    rect(180,250,10,10);
    rect(180,260,10,10);
    rect(180,270,10,10);
    rect(180,280,10,10);
    rect(180,290,10,10);
    rect(180,300,10,10);
    fill(#352626); // cafe3
    rect(180,310,10,10);
     fill(#BAB8B6); // blanco2
    rect(180,320,10,10);
    fill(#352626); // cafe3
    rect(180,330,10,10);
    fill(#D7D1D5); // blanco1
    rect(180,340,10,10);
fill(#443131);   //cafe1 
    rect(180,350,10,10);
    fill(#D7D1D5); // blanco1
    rect(180,360,10,10);
    rect(180,370,10,10);
fill(#443131);   //cafe1 
    rect(180,380,10,10);
    rect(180,390,10,10);
    rect(180,400,10,10);
    rect(180,410,10,10);
    rect(180,420,10,10);
    rect(180,430,10,10);
    rect(180,440,10,10);
    fill(#392E2A);   //cafe2  
    rect(180,450,10,10);
    fill(#2C2424); // cafe 4
    rect(180,460,10,10);
    rect(180,470,10,10);
    rect(180,480,10,10);
    rect(180,490,10,10);
    rect(180,500,10,10);
    rect(180,510,10,10);
    rect(180,520,10,10);
    rect(180,530,10,10);  
    
fill(#334539);
    rect(190,10,10,10);
    rect(190,20,10,10);
fill(#2B3B30);   //verde2
    rect(190,30,10,10);
    rect(190,40,10,10);
    rect(190,50,10,10);
    rect(190,60,10,10);
fill(#334539);
    rect(190,70,10,10);
fill(#1B2622);   //verde3    
    rect(190,80,10,10);
    rect(190,90,10,10);
    rect(190,100,10,10);
    rect(190,110,10,10);
    rect(190,120,10,10);
fill(#2B3B30);   //verde2
    rect(190,130,10,10);
    rect(190,140,10,10);
fill(#334539);
    rect(190,150,10,10);
    rect(190,160,10,10);
    rect(190,170,10,10);
    rect(190,180,10,10);
fill(#2B3B30);   //verde2
    rect(190,190,10,10);
    rect(190,200,10,10);
    rect(190,210,10,10);
fill(#334539);
    rect(190,220,10,10);
    rect(190,230,10,10);
    rect(190,240,10,10);
    rect(190,250,10,10);
    rect(190,260,10,10);
    rect(190,270,10,10);
    rect(190,280,10,10);
    rect(190,290,10,10);
    rect(190,300,10,10);
    fill(#352626); // cafe3
    rect(190,310,10,10);
     fill(#BAB8B6); // blanco2
    rect(190,320,10,10);
    fill(#352626); // cafe3
    rect(190,330,10,10);
    fill(#D7D1D5); // blanco1
    rect(190,340,10,10);
fill(#443131);   //cafe1 
    rect(190,350,10,10);
    fill(#D7D1D5); // blanco1
    rect(190,360,10,10);
    rect(190,370,10,10);
fill(#443131);   //cafe1 
    rect(190,380,10,10);
    rect(190,390,10,10);
    rect(190,400,10,10);
    rect(190,410,10,10);
    rect(190,420,10,10);
    rect(190,430,10,10);
    fill(#392E2A);   //cafe2  
    rect(190,440,10,10);
    rect(190,450,10,10);
    rect(190,460,10,10);
    rect(190,470,10,10);
    rect(190,480,10,10);
    rect(190,490,10,10);
    fill(#352626); // cafe3
    rect(190,500,10,10);
    rect(190,510,10,10);
    rect(190,520,10,10);
    rect(190,530,10,10);
    
fill(#334539);   //verde1
    rect(200,20,10,10);
fill(#2B3B30);   //verde2
    rect(200,30,10,10);
    rect(200,40,10,10);
    rect(200,50,10,10);
    rect(200,60,10,10);
fill(#334539);   //verde1
    rect(200,70,10,10);
fill(#1B2622);   //verde3    
    rect(200,80,10,10);
    rect(200,90,10,10);
    rect(200,100,10,10);
    rect(200,110,10,10);
    rect(200,120,10,10);
fill(#2B3B30);   //verde2
    rect(200,130,10,10);
    rect(200,140,10,10);
fill(#334539);   //verde1
    rect(200,150,10,10);
    rect(200,160,10,10);
    rect(200,170,10,10);
    rect(200,180,10,10);
    rect(200,190,10,10);
    rect(200,200,10,10);
fill(#2B3B30);   //verde2
    rect(200,210,10,10);
    rect(200,220,10,10);
fill(#334539);   //verde1
    rect(200,230,10,10);
    rect(200,240,10,10);
    rect(200,250,10,10);
    rect(200,260,10,10);
    rect(200,270,10,10);
    rect(200,280,10,10);
    rect(200,290,10,10);
    rect(200,300,10,10);
    fill(#352626); // cafe3
    rect(200,310,10,10);
 fill(#BAB8B6); // blanco2
    rect(200,320,10,10);
    fill(#352626); // cafe3
    rect(200,330,10,10);
    fill(#BAB8B6); // blanco2
    rect(200,340,10,10);
fill(#443131);   //cafe1    
    rect(200,350,10,10);
fill(#D7D1D5); // blanco1
    rect(200,360,10,10);
    rect(200,370,10,10);
fill(#443131);   //cafe1    
    rect(200,380,10,10);
    rect(200,390,10,10);
    rect(200,400,10,10);
    rect(200,410,10,10);
    rect(200,420,10,10);
    fill(#392E2A);   //cafe2  
    rect(200,430,10,10);
    rect(200,440,10,10);
    rect(200,450,10,10);
    rect(200,460,10,10);
    rect(200,470,10,10);
    rect(200,480,10,10);
    rect(200,490,10,10);
    fill(#352626); // cafe3
    rect(200,500,10,10);
    
fill(#334539);   //verde1
    rect(210,30,10,10);
fill(#2B3B30);   //verde2
    rect(210,40,10,10);
    rect(210,50,10,10);
    rect(210,60,10,10);
    rect(210,70,10,10);
fill(#334539);   //verde1
    rect(210,80,10,10);
fill(#1B2622);   //verde3                
    rect(210,90,10,10);
    rect(210,100,10,10);
    rect(210,110,10,10);
fill(#334539);   //verde1
    rect(210,120,10,10);
fill(#2B3B30);   //verde2
    rect(210,130,10,10);
    rect(210,140,10,10);
fill(#334539);   //verde1
    rect(210,150,10,10);
    rect(210,160,10,10);
    rect(210,170,10,10);
    rect(210,180,10,10);
    rect(210,190,10,10);
    rect(210,200,10,10);
    rect(210,210,10,10);
    rect(210,220,10,10);
    rect(210,230,10,10);
    rect(210,240,10,10);
    rect(210,250,10,10);
    rect(210,260,10,10);
    rect(210,270,10,10);
    rect(210,280,10,10);
    rect(210,290,10,10);
    rect(210,300,10,10);
    fill(#352626); // cafe3
    rect(210,310,10,10);
    rect(210,320,10,10);
    rect(210,330,10,10);
 fill(#BAB8B6); // blanco2
    rect(210,340,10,10);
fill(#443131);   //cafe1                  
    rect(210,350,10,10);
 fill(#BAB8B6); // blanco2
    rect(210,360,10,10);
    rect(210,370,10,10);
fill(#443131);   //cafe1    
    rect(210,380,10,10);
    rect(210,390,10,10);
    rect(210,400,10,10);
    rect(210,410,10,10);
    rect(210,420,10,10);

fill(#334539);   //verde1 
    rect(220,40,10,10);
fill(#2B3B30);   //verde2
    rect(220,50,10,10);
    rect(220,60,10,10);
    rect(220,70,10,10);
    rect(220,80,10,10);
fill(#334539);   //verde1 
    rect(220,90,10,10);
    rect(220,100,10,10);
    rect(220,110,10,10);
fill(#2B3B30);   //verde2
    rect(220,120,10,10);
    rect(220,130,10,10);
    rect(220,140,10,10);
    rect(220,150,10,10);
fill(#334539);   //verde1 
    rect(220,160,10,10);
    rect(220,170,10,10);
    rect(220,180,10,10);
    rect(220,190,10,10);
    rect(220,200,10,10);
    rect(220,210,10,10);
    rect(220,220,10,10);
    rect(220,230,10,10);
    rect(220,240,10,10);
    rect(220,250,10,10);
    rect(220,260,10,10);
    rect(220,270,10,10);
    rect(220,280,10,10);
    rect(220,290,10,10);
    rect(220,300,10,10);
fill(#1B2622);   //verde3
    rect(220,310,10,10);
    fill(#352626); // cafe3
    rect(220,320,10,10);
    fill(#827979); // blanco3
    rect(220,330,10,10);
    fill(#2C2424); // cafe 4
    rect(220,340,10,10);
    rect(220,350,10,10);
    rect(220,360,10,10);
    rect(220,370,10,10);
    fill(#827979); // blanco3
    rect(220,380,10,10);
    
fill(#2B3B30);   //verde2
    rect(230,60,10,10);
    rect(230,70,10,10);
    rect(230,80,10,10);
    rect(230,90,10,10);
    rect(230,100,10,10);
    rect(230,110,10,10);
    rect(230,140,10,10);
fill(#334539);   //verde1 
    rect(230,150,10,10);
    rect(230,160,10,10);
    rect(230,170,10,10);
    rect(230,180,10,10);
    rect(230,190,10,10);
    rect(230,200,10,10);
    rect(230,210,10,10);
    rect(230,220,10,10);
    rect(230,230,10,10);
fill(#2B3B30);   //verde2
    rect(230,240,10,10);
    rect(230,250,10,10);
    rect(230,260,10,10);
    rect(230,270,10,10);
    rect(230,280,10,10);
    rect(230,290,10,10);
fill(#1B2622);   //verde3 
    rect(230,300,10,10);
    rect(230,310,10,10);
fill(#827979); // blanco3
    rect(230,330,10,10);
    rect(230,340,10,10);
    rect(230,350,10,10);
    rect(230,360,10,10);
    rect(230,370,10,10);
    rect(230,380,10,10);
    
fill(#2B3B30);   //verde2
    rect(240,170,10,10);
fill(#334539);   //verde1 
    rect(240,180,10,10);
    rect(240,190,10,10);
    rect(240,200,10,10);
    rect(240,210,10,10);
    rect(240,220,10,10);
    rect(240,230,10,10);
    rect(240,240,10,10);
    rect(240,250,10,10);
    rect(240,260,10,10);
fill(#2B3B30);   //verde2
    rect(240,270,10,10);
    rect(240,280,10,10);
    rect(240,290,10,10);
fill(#1B2622);   //verde3 
    rect(240,300,10,10);
    rect(240,310,10,10);
fill(#827979); // blanco3
    rect(240,330,10,10);
fill(#2C2424); // cafe 4
    rect(240,340,10,10);
    rect(240,350,10,10);
    rect(240,360,10,10);
    rect(240,370,10,10);
fill(#827979); // blanco3
    rect(240,380,10,10);
    
fill(#334539);   //verde1 
    rect(250,210,10,10);
    rect(250,220,10,10);
    rect(250,230,10,10);
    rect(250,240,10,10);
    rect(250,250,10,10);
    rect(250,260,10,10);
    rect(250,270,10,10);
fill(#2B3B30);   //verde2
    rect(250,280,10,10);
fill(#1B2622);   //verde3 
    rect(250,290,10,10);
    rect(250,300,10,10);
    
fill(#334539);   //verde1 
    rect(260,230,10,10);
    rect(260,240,10,10);
    rect(260,250,10,10);
    rect(260,260,10,10);
    rect(260,270,10,10);
    rect(260,280,10,10);
fill(#1B2622);   //verde3 
    rect(260,290,10,10);
fill(#D7C4B4);   //carne 
    rect(260,300,10,10);
    rect(260,310,10,10);
    
fill(#334539);   //verde1 
    rect(270,250,10,10);
    rect(270,260,10,10);
    rect(270,270,10,10);
    rect(270,280,10,10);
    rect(270,290,10,10);
fill(#D7C4B4);   //carne 
    rect(270,300,10,10);
fill(0); // negro
    rect(270,310,10,10);
    rect(270,320,10,10);
    
fill(#334539);   //verde1 
    rect(280,270,10,10);
    rect(280,280,10,10);
    rect(280,290,10,10);
fill(0); // negro
    rect(280,300,10,10);
    rect(280,310,10,10);
fill(#827979); // blanco3
    rect(280,320,10,10);
    
    
fill(#334539);   //verde1   
    rect(290,290,10,10);
fill(#1B2622);   //verde3 
    rect(290,300,10,10);
fill(#827979); // blanco3
    rect(290,330,10,10);
    rect(290,340,10,10);
    
    rect(300,350,10,10);
    rect(300,360,10,10);
    
    rect(310,370,10,10);
    rect(310,380,10,10);
    
    rect(320,390,10,10);
    rect(320,400,10,10);
    
    rect(330,410,10,10);
fill(#D7D1D5); // blanco1
    rect(330,420,10,10);
    
    rect(340,430,10,10);
    rect(340,440,10,10);
    
    rect(350,450,10,10);
    rect(350,460,10,10);
    popMatrix();
    translate(0,0);
  }
  
  
  void displaytokoyomi (){
    noStroke();
     pushMatrix();
     translate(x,y);
     scale(scalax,scalay);
fill(#504E6A);          //shadow
  beginShape();
  vertex(-42, 156);
  vertex(24, 286);
  vertex(-40, 326);
  vertex(-20, 365);
  vertex(114, 293);
  vertex(120, 207);
  vertex(84, 52);
  vertex(-51, 7);
  vertex(-113, 107);
  vertex(-85, 157);
  vertex(-30,200);
  endShape();

  fill(0);           //capa2
  beginShape();
  vertex(-87, 226);
  vertex(-73, 239);
  vertex(0, 280);
  vertex(77, 220);
  vertex(16, 203);
  vertex(22, 177);
  vertex(-87, 226);
  endShape();


  fill(#676758);        //pies
  beginShape();
  vertex(-17, 297);
  vertex(-9, 286);
  vertex(3, 304);
  vertex(5, 284);
  vertex(-4, 267);
  vertex(-21, 281);
  endShape();
  beginShape();
  vertex(15, 298);
  vertex(2, 342);
  vertex(-2, 362);
  vertex(6, 375);
  vertex(12, 361);
  vertex(9, 347);
  vertex(31, 309);
  endShape();

  fill(#7E7E6B);  //piernas
  beginShape();
  vertex(-29, 224);
  vertex(-36, 287);
  vertex(-30, 304);
  vertex(-17, 297);
  vertex(-8, 254);
  vertex(2, 254);
  vertex(15, 298);
  vertex(31, 309);
  vertex(24, 228);
  endShape();

  fill(#504E6A);          //shadow
  beginShape();
  vertex(-58, 379);
  vertex(-82, 348);
  vertex(-76, 290);
  vertex(-27, 227);
  vertex(-16, 225);
  vertex(-63, 293);
  vertex(-59, 339);
  vertex(-40, 326);
  vertex(-20, 365);
  endShape();


  fill(30);      //capa
  beginShape();
  vertex(0, 130);
  vertex(-20, 138);
  vertex(-43, 150);
  vertex(-77, 220);
  vertex(-87, 226);
  vertex(-71, 231);
  vertex(-48, 221);
  vertex(-32, 232);
  vertex(1, 238);
  vertex(28, 234);
  vertex(56, 214);
  vertex(65, 223);
  vertex(76, 220);
  vertex(60, 200);
  vertex(33, 151);
  vertex(0, 130);
  endShape();


  fill(#B3B49B); // pico oscuro
  beginShape();
  vertex(0, 160);
  vertex(-14, 140);
  vertex(0, 130);  
  endShape();

  fill(#C8C9AF); //pico claro
  beginShape();
  vertex(0, 160);
  vertex(14, 140);
  vertex(0, 130);  
  endShape();

  fill(#232639);
  beginShape();  //cabeza
  vertex(14, 140);
  vertex(0, 130);
  vertex(-14, 140);
  vertex(-34, 110);
  vertex(-29, 115);
  vertex(-34, 90);
  vertex(-24, 100);
  vertex(-22, 87);
  vertex(-14, 93);
  vertex(-2, 70);
  vertex(3, 87);
  vertex(11, 80);
  vertex(16, 95);
  vertex(21, 80);
  vertex(22, 97);
  vertex(31, 90);
  vertex(26, 110);
  vertex(36, 100);
  vertex(26, 120);
  vertex(14, 140);
  endShape();
  fill(#181927);
  beginShape();  //sombracabeza
  vertex(0, 130);
  vertex(-14, 140);
  vertex(-34, 110);
  vertex(-29, 115);
  vertex(-34, 90);
  vertex(-24, 100);
  vertex(-22, 87);
  vertex(-14, 93);
  vertex(-2, 70);
  endShape();


  fill(230);
  beginShape();  //ojos
  vertex(4, 127);
  vertex(16, 120);
  bezierVertex(16, 120, 16, 132, 4, 127);  
  endShape();

  beginShape();  //ojos
  vertex(-7, 127);
  vertex(-19, 120);
  bezierVertex(-19, 120, -19, 132, -7, 127);  
  endShape();

  stroke(0);    //pupilas
  strokeWeight(4);
  point(-12, 125);
  point(7, 125);
    popMatrix();
  }
  
  
  
  
  
  
  void displayroca(){
    
    pushMatrix();
    translate(x,y);
    scale(scalax,scalay);
    
    noStroke();
   fill(#43393C); // cafe 3
    beginShape();
      vertex(250,150);
      vertex(125,170);
      vertex(108,254);
      vertex(197,375);
      vertex(250,375);
    endShape();
    
    beginShape();
      vertex(171,404);
      vertex(217,472);
      vertex(172,602);
      vertex(116,552);
    endShape();
    
   fill(#292325); // cafe 4
    beginShape();
     vertex(250,150);
     vertex(375,170);
     vertex(392,254);
     vertex(303,375);
     vertex(250,375);
    endShape();
    
    beginShape();
      vertex(329,404);
      vertex(384,580);
      vertex(341,620);
      vertex(279,476);
    endShape();
    
   fill(#43393C); // cafe 3
    beginShape();
     vertex(303,375);
     vertex(250,375);
     vertex(250,500);
     vertex(270,500);
     vertex(330,400);
    endShape();
    
  fill(#5A4D51); // cafe 3
    beginShape();
     vertex(197,375);
     vertex(250,375);
     vertex(250,500);
     vertex(230,500);
     vertex(170,400);
    endShape();
  
    fill(#BEB4A6); // cafe1
    beginShape();
      vertex(250,200);
      vertex(170,135);
      vertex(250,110);
  
    endShape();
  
   fill(#A29A8F); // cafe 2
   beginShape();
      vertex(250,200);
      vertex(330,135);
      vertex(250,110);
  
    endShape();
    
   fill(#43393C); // cafe 3
   beginShape();
     vertex(170,135);
     vertex(250,200);
     vertex(250,250);
     vertex(180,170);
  
    endShape();
    
    fill(#7E776C); // cafe 3
    beginShape();
     vertex(170,135);
     vertex(250,200);
     vertex(250,250);
     vertex(180,170);
  
    endShape();
    
    fill(#43393C); // cafe 4
    beginShape();
      vertex(330,135);
      vertex(250,200);
      vertex(250,250);
      vertex(320,170);
    
    endShape();
    
    
    fill(#DE9400);          //ojos
    beginShape();
      vertex(268,201);
      vertex(280,192);
      vertex(276,199);
    endShape();
    
    fill(#DE9400);
    beginShape();
      vertex(232,201);
      vertex(220,192);
      vertex(224,199);
    endShape();
    
    fill(#DE9400);
    beginShape();
      vertex(268,191);
      vertex(280,182);
      vertex(276,189);
    endShape();
    
    fill(#DE9400);
    beginShape();
      vertex(232,191);
      vertex(220,182);
      vertex(224,189);
    endShape();
    
   fill(#868077);         // brazos
    beginShape();
      vertex(119,184);
      vertex(146,197);
      vertex(144,247);
      vertex(138,307);
      vertex(170,400);
      vertex(160,577);
      vertex(211,656);
      vertex(200,693);
      vertex(88,694);
      vertex(57,539);
      vertex(79,274);
    endShape();
    
    beginShape();
      vertex(376,174);
      vertex(361,301);
      vertex(335,397);
      vertex(365,581);
      vertex(310,645);
      vertex(327,695);
      vertex(411,695);
      vertex(436,555);
      vertex(415,261);
    endShape();
  
   fill(#A29A8F);           // piedras
    beginShape();
      vertex(126,166);
      vertex(130,172);
      vertex(156,184);
      vertex(156,200);
      vertex(118,198);
      vertex(112,181);
    endShape();
    
    beginShape();
      vertex(93,215);
      vertex(102,215);
      vertex(137,235);
      vertex(131,254);
      vertex(79,256);
    endShape();
    
    beginShape();
      vertex(114,288);
      vertex(73,270);
      vertex(64,304);
      vertex(110,306);
    endShape();
    
    beginShape();
      vertex(118,327);
      vertex(66,322);
      vertex(62,356);
      vertex(88,355);
      vertex(112,344);
    endShape();
    
    beginShape();
      vertex(113,377);
      vertex(90,383);
      vertex(61,376);
      vertex(57,423);
      vertex(108,403);
    endShape();
    
    beginShape();
      vertex(96,458);
      vertex(51,444);
      vertex(46,478);
      vertex(91,470);
      vertex(118,456);
      vertex(116,443);
    endShape();
    
    beginShape();
      vertex(59,436);
      vertex(100,422);
      vertex(113,427);
      vertex(97,452);
    endShape();
    
    beginShape();
      vertex(113,480);
      vertex(53,491);
      vertex(51,508);
      vertex(83,520);
      vertex(104,506);
    endShape();
    
    beginShape();
      vertex(116,525);
      vertex(90,543);
      vertex(49,546);
      vertex(60,578);
      vertex(104,560);
    endShape();
    
    beginShape();
      vertex(115,603);
      vertex(144,647);
      vertex(106,659);
      vertex(75,659);
      vertex(66,611);
    endShape();
    
    
    
    
    
    
    beginShape();
      vertex(348,187);
      vertex(369,180);
      vertex(368,164);
      vertex(383,176);
      vertex(387,194);
      vertex(372,207);
    endShape();
    
    beginShape();
      vertex(396,204);
      vertex(412,235);
      vertex(401,256);
      vertex(370,248);
      vertex(368,224);
      vertex(387,221);
    endShape();
    
    beginShape();
      vertex(424,273);
      vertex(422,314);
      vertex(382,295);
      vertex(378,276);
      vertex(402,279);
    endShape();
    
    beginShape();
      vertex(427,335);
      vertex(427,377);
      vertex(389,361);
      vertex(383,329);
      vertex(410,325);
    endShape();
    
    beginShape();
      vertex(436,393);
      vertex(437,431);
      vertex(399,444);
      vertex(386,422);
      vertex(406,401);
    endShape();
    
    beginShape();
      vertex(438,458);
      vertex(439,483);
      vertex(405,475);
    endShape();
    
    beginShape();
      vertex(434,500);
      vertex(442,532);
      vertex(414,537);
      vertex(403,519);
      vertex(410,493);
    endShape();
    
    beginShape();
      vertex(429,386);
      vertex(407,392);
      vertex(384,409);
      vertex(391,373);
    endShape();
    
    beginShape();
      vertex(442,551);
      vertex(434,587);
      vertex(409,576);
      vertex(412,548);
    endShape();
    
    beginShape();
      vertex(434,609);
      vertex(424,659);
      vertex(393,662);
      vertex(373,632);
      vertex(395,598);
    endShape();
    popMatrix();
    
    fill(255);
  }
  
  
  
  void displaycalaca(){
    
    pushMatrix();
    translate(x,y);
    scale(scalax,scalay);
    fill(0);
  rect(25,175,25,25);
  rect(25,200,25,25);
  rect(25,225,25,25);
  
  fill(0);
  rect(50,150,25,25);
  fill(#F59802);
  rect(50,175,25,25);
  rect(50,200,25,25);
  rect(50,225,25,25);
  fill(0);
  rect(50,250,25,25);

  fill(0);
  rect(75,100,25,25);
  rect(75,125,25,25);
  fill(#F59802);
  rect(75,150,25,25);
  rect(75,175,25,25);
  rect(75,200,25,25);
  rect(75,225,25,25);
  rect(75,250,25,25);
  fill(0);
  rect(75,275,25,25);
  
  fill(0);
  rect(100,75,25,25);
  fill(#F59802);
  rect(100,100,25,25);
  rect(100,125,25,25);
  rect(100,150,25,25);
  rect(100,175,25,25);
  rect(100,200,25,25);
  rect(100,225,25,25);
  rect(100,250,25,25);
  fill(0);
  rect(100,275,25,25);
  
  fill(0);
  rect(125,50,25,25);
  fill(#F59802);
  rect(125,75,25,25);
  rect(125,100,25,25);
  rect(125,125,25,25);
  rect(125,150,25,25);
  rect(125,175,25,25);
  rect(125,200,25,25);
  rect(125,225,25,25);
  rect(125,250,25,25);
  rect(125,275,25,25);
  fill(0);
  rect(125,300,25,25);
  
  fill(0);
  rect(125,375,25,25);
  
  fill(0);
  rect(150,50,25,25);
  fill(#F59802);
  rect(150,75,25,25);
  rect(150,100,25,25);
  rect(150,125,25,25);
  rect(150,150,25,25);
  fill(255);
  rect(150,175,25,25);
  fill(0);
  rect(150,200,25,25);
  rect(150,225,25,25);
  fill(#F59802);
  rect(150,250,25,25);
  rect(150,275,25,25);
  fill(0);
  rect(150,300,25,25);
  rect(150,325,25,25);
  rect(150,350,25,25);
  fill(200);
  rect(150,375,25,25);
  fill(0);
  rect(150,400,25,25);
  
  fill(0);
  rect(175,50,25,25);
  fill(#F59802);
  rect(175,75,25,25);
  rect(175,100,25,25);
  rect(175,125,25,25);
  rect(175,150,25,25);
  fill(0);
  rect(175,175,25,25);
  rect(175,200,25,25);
  rect(175,225,25,25);
  fill(#F59802);
  rect(175,250,25,25);
  rect(175,275,25,25);
  fill(0);
  rect(175,300,25,25);
  fill(#EDCA00);
  rect(175,325,25,25);
  rect(175,350,25,25);
  fill(0);
  rect(175,375,25,25);
  rect(175,400,25,25);
  
  fill(0);
  rect(200,50,25,25);
  fill(#F59802);
  rect(200,75,25,25);
  rect(200,100,25,25);
  rect(200,125,25,25);
  rect(200,150,25,25);
  rect(200,175,25,25);
  rect(200,200,25,25);
  rect(200,225,25,25);
  rect(200,250,25,25);
  rect(200,275,25,25);
  rect(200,300,25,25);
  fill(#EDCA00);
  rect(200,325,25,25);
  rect(200,350,25,25);
  rect(200,375,25,25);
  fill(0);
  rect(200,400,25,25);
  
  fill(0);
  rect(225,75,25,25);
  fill(#F59802);
  rect(225,100,25,25);
  rect(225,125,25,25);
  rect(225,150,25,25);
  rect(225,175,25,25);
  rect(225,200,25,25);
  rect(225,225,25,25);
  rect(225,250,25,25);
  rect(225,275,25,25);
  rect(225,300,25,25);
  fill(0);
  rect(225,325,25,25);
  fill(#EDCA00);
  rect(225,350,25,25);
  rect(225,375,25,25);
  rect(225,400,25,25);
  fill(0);
  rect(225,425,25,25);
  
  fill(0);
  rect(250,100,25,25);
  rect(250,125,25,25);
  fill(#F59802);
  rect(250,150,25,25);
  rect(250,175,25,25);
  rect(250,200,25,25);
  rect(250,225,25,25);
  rect(250,250,25,25);
  rect(250,275,25,25);
  fill(0);
  rect(250,300,25,25);
  fill(#F59802);
  rect(250,325,25,25);
  fill(0);
  rect(250,350,25,25);
  fill(#EDCA00);
  rect(250,375,25,25);
  rect(250,400,25,25);
  fill(0);
  rect(250,425,25,25);
  rect(250,450,25,25);
  
  fill(0);
  rect(275,150,25,25);
  rect(275,175,25,25);
  fill(#F59802);
  rect(275,200,25,25);
  rect(275,225,25,25);
  rect(275,250,25,25);
  rect(275,275,25,25);
  rect(275,300,25,25);
  rect(275,325,25,25);
  fill(0);
  rect(275,350,25,25);
  fill(#F59802);
  rect(275,375,25,25);
  rect(275,400,25,25);
  fill(0);
  rect(275,425,25,25);
  fill(200);
  rect(275,450,25,25);
  fill(0);
  rect(275,475,25,25);
  
  fill(0);
  rect(300,200,25,25);
  rect(300,225,25,25);
  fill(#F59802);
  rect(300,250,25,25);
  rect(300,275,25,25);
  rect(300,300,25,25);
  rect(300,325,25,25);
  rect(300,350,25,25);
  rect(300,375,25,25);
  rect(300,400,25,25);
  rect(300,425,25,25);
  rect(300,450,25,25);
  fill(0);
  rect(300,475,25,25);
  
  fill(0);
  rect(325,250,25,25);
  fill(#F59802);
  rect(325,275,25,25);
  rect(325,300,25,25);
  rect(325,325,25,25);
  rect(325,350,25,25);
  rect(325,375,25,25);
  rect(325,400,25,25);
  fill(0);
  rect(325,425,25,25);
  fill(200);
  rect(325,450,25,25);
  fill(0);
  rect(325,475,25,25);
  
  fill(0);
  rect(350,275,25,25);
  rect(350,300,25,25);
  fill(#F59802);
  rect(350,325,25,25);
  rect(350,350,25,25);
  rect(350,375,25,25);
  fill(0);
  rect(350,400,25,25);
  rect(350,425,25,25);
  rect(350,450,25,25);
  rect(350,475,25,25);
  
  fill(0);
  rect(375,300,25,25);
  rect(375,325,25,25);
  rect(375,350,25,25);
  rect(375,375,25,25);
  rect(375,400,25,25);
  
  fill(0);
  rect(400,150,25,25);
  rect(400,175,25,25);
  rect(400,200,25,25);
  
  fill(0);
  rect(400,275,25,25);
  fill(#F59802);
  rect(400,300,25,25);
  rect(400,325,25,25);
  rect(400,350,25,25);
  fill(0);
  rect(400,375,25,25);
  
  fill(0);
  rect(425,75,25,25);
  rect(425,100,25,25);
  rect(425,125,25,25);
  fill(#C42D28);
  rect(425,150,25,25);
  rect(425,175,25,25);
  rect(425,200,25,25);
  fill(0);
  rect(425,225,25,25);
  rect(425,250,25,25);
  fill(#F59802);
  rect(425,275,25,25);
  rect(425,300,25,25);
  rect(425,325,25,25);
  fill(0);
  rect(425,350,25,25);
  
  fill(0);
  rect(450,50,25,25);
  fill(#C42D28);
  rect(450,75,25,25);
  rect(450,100,25,25);
  rect(450,125,25,25);
  rect(450,150,25,25);
  rect(450,175,25,25);
  fill(#EDCA00);
  rect(450,200,25,25);
  rect(450,225,25,25);
  fill(#F59802);
  rect(450,250,25,25);
  rect(450,275,25,25);
  fill(0);
  rect(450,300,25,25);
  rect(450,325,25,25);
  
  fill(0);
  rect(475,75,25,25);
  rect(475,100,25,25);
  fill(#C42D28);
  rect(475,125,25,25);
  rect(475,150,25,25);
  fill(#EDCA00);
  rect(475,175,25,25);
  rect(475,200,25,25);
  fill(0);
  rect(475,225,25,25);
  rect(475,250,25,25);
  rect(475,275,25,25);
  
  fill(0);
  rect(500,100,25,25);
  rect(500,125,25,25);
  fill(#C42D28);
  rect(500,150,25,25);
  rect(500,175,25,25);
  rect(500,200,25,25);
  fill(0);
  rect(500,225,25,25);
  
  fill(0);
  rect(525,150,25,25);
  rect(525,175,25,25);
  rect(525,200,25,25);
  popMatrix();
  
  fill(255);
  }
  
  
  
  
  
  void displayanda(){
    
    pushMatrix();
    translate(x,y);
    scale(scalax,scalay);
     noStroke();
     
     
     fill(#08D1A7);
 rect(90,240,100,100);
 rect(120,340,80,20);
     rect(190,240,30,110);
     
  fill(#215A87);
  
     //resto azul
     
     rect(395,225,5,120);
     rect(390,230,5,130);
     rect(385,235,5,130);
     rect(380,240,5,135);
     rect(375,240,5,130);
     rect(370,240,5,125);
     rect(365,235,5,120);
     rect(360,235,5,115);
     rect(350,235,10,130);
     rect(340,235,10,125);
     rect(330,240,10,130);
     rect(325,240,5,135);
     rect(320,235,5,145);
     rect(315,235,5,160);
     rect(310,230,5,115);
     rect(305,230,5,120);
     rect(295,225,10,125);
     rect(290,220,5,130);
     rect(285,215,5,145);
     rect(280,210,5,145);
     rect(275,205,5,145);
     rect(270,200,5,150);
     rect(265,195,5,120);
     rect(260,185,5,120);
     rect(255,175,5,125);
     rect(250,180,5,115);
     rect(245,180,5,110);
     rect(235,185,10,105); // aqui empieza la armor
     
     rect(185,190,50,5);
     rect(175,185,30,5);
     rect(150,180,35,5);
     rect(120,175,40,5);
     rect(125,180,5,5);
     rect(115,170,30,5);
     rect(110,165,25,5);
     rect(105,160,20,5);
     rect(105,155,15,5);
     rect(105,150,10,5);
     rect(105,145,5,5);
     
     rect(230,200,5,95);
     rect(225,210,5,90);
     rect(220,215,5,75);
     rect(215,220,5,90);
     rect(210,225,5,60);
     rect(205,230,5,45);
     rect(200,230,5,30);
     rect(195,235,5,20);
     rect(185,235,10,15);
     rect(155,235,60,5);
     rect(145,230,15,5);
     rect(135,225,15,5);
     rect(125,220,15,5);
     rect(110,215,20,5);
     rect(100,210,20,5);
     
     rect(170,135,5,5);
     rect(165,140,5,5);
     rect(160,145,5,10);
     
     
     rect(85,315,5,20);
     rect(90,330,5,10);
     rect(95,335,5,5);
     rect(100,335,5,20);   //
     rect(105,350,5,10);
     rect(110,355,5,10);
     rect(115,360,20,5);
     rect(125,365,30,5);
     rect(140,370,45,5);
     rect(185,365,5,5);
     rect(190,360,5,5);
     

     rect(110,325,5,20); 


     
     
     
   fill(#08D1A7);                        //verde oscuro
  beginShape();
      vertex(215,90);
      vertex(220,90);
      vertex(220,95);
      vertex(215,95);
      vertex(215,90);
  endShape();
      
  beginShape();
      vertex(210,100);
      vertex(210,105);
      vertex(200,105);
      vertex(200,100);
      vertex(210,100);
  endShape();
      
  beginShape();
      vertex(190,105);
      vertex(185,105);
      vertex(185,95);
      vertex(190,95);
      vertex(190,105);
   endShape();
     
      
   beginShape();
      vertex(180,100);
      vertex(175,100);
      vertex(175,95);
      vertex(165,95);
      vertex(165,90);
      vertex(160,90);
      vertex(160,85);
      vertex(155,85);
      vertex(155,80);
      vertex(150,80);
      vertex(150,75);
      vertex(155,75);
      vertex(155,80);
      vertex(165,80);
      vertex(165,85);
      vertex(170,85);
      vertex(170,90);
      vertex(175,90);
      vertex(175,95);
      vertex(180,95);
      vertex(180,100);
    endShape();
    
    
    beginShape();
      vertex(250,85);
      vertex(255,85);
      vertex(255,80);
      vertex(275,80);
      vertex(275,75);
      vertex(350,75);
      vertex(350,80);
      vertex(365,80);
      vertex(365,85);
      vertex(375,85);
      vertex(375,90);
      vertex(410,90);
      vertex(410,125);
      vertex(415,125);
      vertex(415,130);
      vertex(420,130);
      vertex(420,140);
      vertex(425,140); 
      vertex(425,165);
      vertex(420,165);
      vertex(420,180);
      vertex(425,180);
      vertex(425,190);
      vertex(420,190);
      vertex(420,200);
      vertex(415,200);
      vertex(415,215);
      vertex(405,215);
      vertex(405,220);
      vertex(400,220);
      vertex(400,225);
      vertex(395,225);
      vertex(395,230);
      vertex(390,230);
      vertex(390,235);
      vertex(385,235);
      vertex(385,240);
      vertex(370,240);
      vertex(370,245);
      vertex(340,245);
      vertex(340,240);
      vertex(325,240);
      vertex(325,235);
      vertex(315,235);
      vertex(315,230);
      vertex(305,230);
      vertex(305,225);
      vertex(295,225);
      vertex(295,220);
      vertex(290,220);
      vertex(290,215);
      vertex(285,215);
      vertex(285,210);
      vertex(280,210);
      vertex(280,205);
      vertex(275,205);
      vertex(275,200);
      vertex(270,200);
      vertex(270,195);
      vertex(265,195);
      vertex(265,185);
      vertex(260,185);
      vertex(260,175);
      vertex(270,175);
      vertex(270,120);
      vertex(265,120);
      vertex(265,105);
      vertex(260,105);
      vertex(260,95);
      vertex(255,95);
      vertex(255,90);
      vertex(250,90);
      vertex(250,85);
  endShape();
  
  rect(105,135,5,5);
  rect(110,140,15,5);
  rect(120,145,10,5);
  rect(125,150,15,5);
  rect(140,155,10,5);
  rect(155,145,5,20);
  rect(160,140,5,5);
  rect(165,135,5,5);
  rect(160,155,5,10);
  rect(165,160,10,10);
  rect(175,165,15,5);
  rect(185,170,20,5);
  rect(200,175,15,5);
  rect(215,155,5,10);
  rect(220,165,5,10);
  rect(225,175,15,5);
  rect(235,170,10,5);
  rect(245,160,5,10);
  
  
 
 fill(#215A87);                       //azul oscuro
 beginShape();
   vertex(235,50);
   vertex(240,50);
   vertex(240,75);
   vertex(245,75);
   vertex(245,85);
   vertex(250,85);
   vertex(250,90);
   vertex(255,90);
   vertex(255,105);
   vertex(260,105);
   vertex(260,120);
   vertex(265,120);
   vertex(265,175);
   vertex(260,175);
   vertex(260,125);
   vertex(255,125);
   vertex(255,120);
   vertex(250,120);
   vertex(250,115);
   vertex(245,115);
   vertex(245,110);
   vertex(235,110);
   vertex(235,115);
   vertex(240,115);
   vertex(240,120);
   vertex(245,120);
   vertex(245,110);
   vertex(235,110);
   vertex(235,115);
   vertex(240,115);
   vertex(240,120);
   vertex(245,120);
   vertex(245,130);
   vertex(250,130);
   vertex(250,160);
   vertex(245,160);
   vertex(245,145);
   vertex(240,145);
   vertex(240,135);
   vertex(235,135);
   vertex(235,125);
   vertex(230,125);
   vertex(230,120);
   vertex(225,120);
   vertex(225,115);
   vertex(205,115);
   vertex(205,120);
   vertex(185,120);
   vertex(185,115);
   vertex(170,115);
   vertex(170,110);
   vertex(155,110);
   vertex(155,100);
   vertex(150,100);
   vertex(150,80);
   vertex(155,80);
   vertex(155,90);
   vertex(160,90);
   vertex(160,95);
   vertex(165,95);
   vertex(165,100);
   vertex(170,100);
   vertex(170,105);
   vertex(180,105);
   vertex(180,110);
   vertex(210,110);
   vertex(210,105);
   vertex(220,105);
   vertex(220,100);
   vertex(225,100);
   vertex(225,80);
   vertex(220,80);
   vertex(220,75);
   vertex(215,75);
   vertex(215,70);
   vertex(210,70);
   vertex(210,65);
   vertex(205,65);
   vertex(205,70);
   vertex(210,70);
   vertex(210,75);
   vertex(215,75);
   vertex(215,80);
   vertex(220,80);
   vertex(220,90);
   vertex(215,90);
   vertex(215,80);
   vertex(205,80);
   vertex(205,75);
   vertex(200,75);
   vertex(200,60);
   vertex(205,60);
   vertex(205,55);
   vertex(210,55);
   vertex(210,60);
   vertex(215,60);
   vertex(215,65);
   vertex(220,65);
   vertex(220,70);
   vertex(225,70);
   vertex(225,65);
   vertex(230,65);
   vertex(230,55);
   vertex(235,55);
   vertex(235,50);
 endShape();
 
 rect(410,95,5,30);
 rect(415,95,5,35);
 rect(420,100,5,40);
 rect(425,105,5,155);
 rect(430,110,5,145);
 rect(435,120,5,130);
 rect(440,130,5,65);
 rect(445,140,5,50);
 rect(450,150,5,35);
 rect(455,160,5,20);
 rect(460,165,5,10);
 rect(440,215,5,30);
 rect(445,230,5,10);
 rect(420,190,5,95);
 rect(415,200,5,90);
 rect(410,210,5,80);
 rect(405,215,5,80);
 rect(400,220,5,85);
 rect(355,210,5,15);
 rect(360,205,35,15);
 rect(360,220,30,5); 
 rect(360,225,25,5);
 
 
 
 
 fill(#2A6DAD);                  //azul medio
 beginShape();
   vertex(195,75);
   vertex(205,75);
   vertex(205,80);
   vertex(215,80);
   vertex(215,95);
   vertex(210,95);
   vertex(210,100);
   vertex(190,100);
   vertex(190,95);
   vertex(175,95);
   vertex(175,90);
   vertex(170,90);
   vertex(170,85);
   vertex(180,85);
   vertex(180,80);
   vertex(195,80);
   vertex(195,75);
 endShape();
 
  rect(290,105,10,5);
  rect(290,110,20,5);
  rect(295,115,15,5);

  rect(290,150,30,5); 
  rect(285,155,45,5);
  rect(280,160,15,25);
  rect(295,160,5,5);
  rect(295,180,5,5);
  rect(285,185,30,5);
  rect(285,190,70,5);
  rect(285,195,70,5);
  rect(290,200,65,5);
  rect(295,205,60,5);
  rect(305,210,45,5);
  rect(315,215,35,5);
  rect(325,220,25,5);
  rect(340,225,15,5);
  rect(325,160,5,5);
  rect(330,160,5,10);
  rect(335,165,5,10); 
  rect(340,170,5,10);
  rect(345,175,5,15);
  rect(350,185,5,5);
  //ojo der.
  rect(390,175,5,10);
  rect(395,170,5,40);
  rect(400,160,5,45);
  rect(410,155,5,45);
  rect(405,150,5,50);
  
  rect(150,110,20,5);
  rect(150,115,35,5);
  rect(145,120,85,15);
  rect(205,115,20,5);
  rect(220,125,5,20);
  rect(140,130,5,5);
  rect(130,135,30,5);
  rect(125,140,30,5);
  rect(130,145,20,5);
  rect(140,150,10,5);
  rect(230,125,5,10);
  
  rect(235,110,10,5);
  rect(240,115,10,5);
  rect(245,120,10,5);
  rect(250,125,10,5);
  rect(255,130,5,45);
  rect(250,170,10,5);
  rect(245,175,10,5);
  
  
  rect(175,135,65,5);
  rect(170,140,70,5);
  rect(165,145,80,10);
  rect(165,155,50,5);
  rect(175,160,40,5);
  rect(190,165,25,5);
  rect(205,170,10,5);
  
  
  rect(220,155,25,10);
  rect(225,165,20,5);
  rect(225,170,10,5);
  
  
   rect(130,180,20,5);
   rect(120,185,55,5);
   rect(115,190,70,5);
   rect(105,195,45,5);
   rect(125,200,20,5);
   rect(135,205,5,5);
   
   rect(160,195,60,5);
   rect(155,200,65,5);
   rect(150,205,65,5);
   rect(150,210,60,5);
   rect(155,215,50,5);
   rect(170,220,25,5);
   
   rect(225,195,10,5);
   rect(225,200,5,5);
   rect(220,205,10,5);
   rect(215,210,10,5);
   
   rect(105,235,45,5);
   rect(100,240,5,5);
   rect(95,245,5,5);
   rect(90,250,5,10);
   rect(85,260,5,55);
   rect(90,295,5,10);
   rect(90,320,5,10);
   rect(95,330,5,5);
   rect(135,240,25,5);
   rect(130,245,55,5);
   rect(110,250,25,5);
   rect(110,255,5,10);
   rect(150,250,15,5);
   rect(160,255,5,5);
   rect(185,250,10,5);
   rect(195,255,5,5);
   rect(200,260,5,5);
   rect(165,260,20,5);
   rect(170,265,5,20);
   rect(180,265,15,5);
   rect(190,270,10,5);
   rect(195,275,10,5);
   rect(200,280,5,5);
   rect(205,285,5,25);

   rect(110,250,25,5);
   rect(120,255,5,5);
   rect(125,255,5,20);
   rect(130,265,5,15);
   rect(135,275,5,5);
   rect(135,280,20,5);
   rect(150,285,20,5);
   rect(145,290,5,5);
   rect(170,290,10,5);
   rect(170,310,5,5);
   rect(145,295,30,5);
   rect(150,300,35,5);
   rect(160,305,30,5);
   rect(175,275,5,30);
   rect(135,305,20,5);
   rect(135,310,15,5);
   rect(130,315,10,5);
   rect(120,325,5,5);
   rect(115,330,5,5);
   rect(105,335,10,10);
   rect(105,345,15,5);
   rect(110,350,15,5);
   rect(115,355,35,5);
   rect(150,350,5,5);
   rect(155,345,5,5);
   rect(165,360,10,5);
   rect(155,365,30,5);
   rect(175,355,5,5);
   rect(180,350,5,5);
   rect(185,360,5,5);
   rect(190,355,5,5);
   rect(195,350,5,5);
   rect(205,350,5,5);
   rect(210,340,5,15);
   rect(215,340,5,5);
   
   rect(100,285,10,5);
   rect(105,280,20,5);
   rect(115,275,5,5);
   



 fill(#2F97BB);                        //azul claro
    //oreja oreja izq.
    rect(275,100,5,15);
    rect(280,95,5,5);
    rect(285,90,10,5);
    rect(295,85,15,5);
    rect(310,90,5,5);
    rect(315,95,5,5);
    rect(320,100,5,5);
    //int oreja izq
    rect(290,100,20,5);
    rect(300,105,15,5); 
    rect(310,110,10,5);
    rect(310,115,5,5);
    //int oreja derecha
    rect(400,95,5,5);
    rect(395,100,10,15);
    //separacion cabeza armadura
    rect(255,95,5,10);
    rect(260,105,5,15);
    rect(265,120,5,55);
    //cara
    rect(275,170,5,20);
    rect(280,185,5,15); 
    rect(285,200,5,10); 
    rect(290,205,5,10); 
    rect(295,210,10,10);
    rect(305,215,10,10); 
    rect(315,220,10,10); 
    rect(325,225,15,10); 
    rect(335,230,45,5); 
    rect(340,235,30,5); 
    rect(385,225,5,5); 
    rect(390,220,5,5); 
    
    
    rect(395,210,5,10); 
    rect(400,205,5,10); 
    rect(405,200,5,10); 
    rect(410,195,5,5); 
    rect(415,180,5,10); 
    rect(420,165,5,15); 
    rect(405,165,5,15);
    rect(395,180,10,5);
    rect(355,225,5,5);
    rect(350,210,5,15);
    rect(355,180,5,30);
    
    
    rect(340,180,5,5);
    rect(315,185,30,5);
    rect(300,180,20,5);
    rect(295,165,20,15);
    rect(300,160,25,5);

 
 beginShape();
   vertex(155,85);
   vertex(155,90);
   vertex(160,90);
   vertex(160,95);
   vertex(165,95);
   vertex(165,100);
   vertex(170,100);
   vertex(170,105);
   vertex(180,105);
   vertex(180,110);
   vertex(210,110);
   vertex(210,105);
   vertex(220,105);
   vertex(220,100);
   vertex(225,100);
   vertex(225,80);
   vertex(220,80);
   vertex(220,75);
   vertex(215,75);
   vertex(215,70);
   vertex(210,70);
   vertex(210,65);
   vertex(205,65);
   vertex(205,70);
   vertex(210,70);
   vertex(210,75);
   vertex(215,75);
   vertex(215,80);
   vertex(220,80);
   vertex(220,95);
   vertex(215,95);
   vertex(215,100);
   vertex(210,100);
   vertex(210,105);
   vertex(185,105);
   vertex(185,100);
   vertex(175,100);
   vertex(175,95);
   vertex(165,95);
   vertex(165,90);
   vertex(160,90);
   vertex(160,85);
   vertex(155,85);
  endShape();
  
  
     rect(105,140,5,5);
     rect(110,145,10,5);
     rect(115,150,10,5);
     rect(120,155,20,5);
     rect(125,160,30,5);
     rect(135,165,30,5);
     rect(145,170,40,5);
     rect(160,175,40,5);
     rect(150,145,5,15);
     rect(155,140,5,5);
     rect(160,135,5,5);
     rect(185,180,60,5);
     rect(205,185,30,5);
     rect(240,175,5,5);
     rect(245,170,5,5);
     rect(250,130,5,40);
     rect(245,125,5,5);
     rect(215,165,5,15);
     rect(220,175,5,5);
     
     
     rect(90,205,35,5);
     rect(100,200,5,5);
     rect(120,210,30,5);
     rect(130,215,20,5);
     rect(140,220,15,5);
     rect(150,225,10,5);
     rect(160,230,40,5);
     rect(200,225,10,5);
     rect(205,220,10,5);
     rect(210,215,10,5);
     rect(215,205,5,5);
     rect(220,195,5,10);
     rect(145,205,5,5);
     rect(150,200,5,5);
     
     rect(115,230,5,5);
     rect(120,220,5,15);
     rect(125,225,10,10);
     rect(135,230,10,5);
     rect(115,240,20,5);
     rect(105,245,25,5);
     rect(100,250,10,5);
     rect(100,255,5,5);
     rect(95,260,5,20);
     rect(100,265,5,10);
     rect(105,270,10,5);
     rect(115,265,5,5);
     rect(90,275,5,20);
     rect(90,305,5,15);
     rect(95,295,5,35);
     rect(100,295,5,40);
     rect(105,305,5,30);
     rect(110,310,5,20);
     rect(115,310,5,10);
     rect(120,305,5,10);
     rect(125,300,5,10);
     rect(130,285,5,15);
     rect(130,255,5,10);
     rect(135,255,5,20);
     rect(140,260,5,20);
     rect(145,265,5,15);
     rect(150,270,5,10);
     rect(155,275,10,10);
     rect(165,280,5,5);
     rect(150,235,5,5);
     rect(160,240,25,5);
     rect(165,250,5,5);
     rect(180,250,5,10);
     rect(175,255,5,5);
     rect(185,260,10,5);
     rect(195,265,5,5);
     rect(200,270,5,5);
     rect(205,275,5,10);
     rect(210,285,5,20);
     rect(180,285,5,15);
     rect(185,295,5,10);
     rect(190,295,5,15);
     rect(190,315,5,5);
     rect(185,320,5,25);
     rect(180,355,10,5);
     rect(175,360,10,5);
     rect(170,355,5,5);
     rect(160,355,5,10);
     rect(155,350,5,15);
     rect(150,355,5,10);
     rect(135,360,15,5);
     
     rect(160,335,5,15);
     rect(165,310,5,25);
     rect(155,305,10,5);
     rect(150,310,5,5);
     rect(140,315,10,5);
     rect(125,320,15,10);
     rect(120,330,15,5);
     rect(115,335,20,5);
     rect(115,340,25,5);
     rect(120,345,30,5);
     rect(125,350,25,5);
     
     
     
     
  
  fill(#2FFFC2);                          // verde medio
  
  beginShape();
    vertex(215,95);
    vertex(215,100);
    vertex(210,100);
    vertex(210,95);
    vertex(215,95);
     endShape();
      beginShape();
    
    vertex(200,100);
    vertex(200,105);
    vertex(190,105);
    vertex(190,100);
    vertex(200,100);
     endShape();
      beginShape();
    
    vertex(185,95);
    vertex(185,100);
    vertex(180,100);
    vertex(180,95);
    vertex(185,95);
  endShape();
  
    rect(280,100,5,10);
    rect(285,95,10,5);
    rect(295,90,15,5);
    rect(310,95,5,5);
    rect(315,100,5,5);
    rect(280,100,5,10);
    rect(285,95,10,5);
    rect(295,90,15,5);
    rect(310,95,5,5);
    rect(315,100,5,5);
    
    
    rect(385,85,20,5);
    rect(380,90,15,5);
    rect(385,95,10,5);
    rect(390,100,5,10);
    
    
    rect(325,165,5,5);
    rect(320,170,10,5);
    rect(325,175,10,5);
    
    
    rect(320,145,10,10);
    rect(330,150,5,10);
    rect(335,155,5,10);
    rect(340,160,10,5);
    rect(340,165,60,5);
    rect(345,170,50,5);
    rect(350,175,10,5);
    rect(350,180,5,5);
    rect(390,165,10,5);
    rect(390,160,10,5);
    rect(395,155,10,5);
    rect(405,145,15,5);
    rect(400,150,15,5);
    rect(420,150,5,10);
    rect(415,150,5,20);
    rect(300,140,20,5);
    rect(290,145,30,5);
    rect(285,150,5,5);
    rect(280,155,5,5);
    rect(275,160,5,10);
    
    
    rect(145,70,5,30);
    rect(150,100,5,10);
    rect(145,110,5,10);
    rect(140,120,5,10);
    rect(130,130,10,5);
    rect(110,135,20,5);
    rect(105,130,15,5);
    rect(105,110,5,5);
    rect(110,115,5,15);
    
    
    rect(125,145,5,5);
    rect(130,150,5,5);
    rect(145,155,5,5);
    
    rect(160,155,5,5);
    rect(170,165,5,5);
    rect(175,165,5,5);
    rect(185,165,5,5);
    
    rect(190,170,10,5);
    rect(220,170,5,5);
    
    rect(230,175,5,5);
    rect(245,165,5,5);
    
    rect(100,135,5,35);
    rect(95,140,5,25);
    rect(90,150,5,5);
    rect(85,145,5,5);
    rect(105,165,5,10);
    rect(110,170,5,25);
    rect(115,175,5,15);
    rect(120,180,5,5);
    rect(105,185,5,10);
    rect(100,190,5,10);
    rect(95,190,5,15);
    rect(90,195,5,10);   //
    rect(85,195,5,20);
    rect(80,190,5,20);
    rect(75,180,5,25);
    rect(90,210,10,10);
    rect(100,215,5,5);
    rect(105,215,5,20);
    rect(110,220,5,15);
    rect(115,220,5,10);
    rect(100,235,5,5);
    rect(95,235,5,10);
    rect(90,240,5,10);
    rect(85,240,5,20);
    rect(80,245,5,95);
    rect(75,250,5,20);
    rect(70,240,5,25);
    rect(75,290,5,5);
    rect(75,300,5,35);
    rect(70,300,5,20);
    rect(65,295,5,10);
    rect(70,325,5,10);
    rect(65,325,5,5);
    
    
    
    
    rect(105,200,20,5);
    rect(125,205,10,5);
    rect(150,195,10,5);
    rect(150,215,5,5);
    rect(155,220,15,5);
    rect(160,225,40,5);
    rect(195,220,10,5);
    rect(205,215,5,5);
    rect(210,210,5,5);

    
    
  fill(#E1FFF4);                     //verde claro
    rect(330,170,5,5);
  
  fill(#08D1A7);                     //verde oscuro
    rect(400,175,5,5);
    
    rect(105,200,10,5);
    rect(120,200,5,5);
    rect(125,205,5,5);
    rect(150,195,5,5);
    rect(140,205,5,5);
    rect(145,200,5,5);
    rect(155,220,5,5);    
    rect(165,220,5,5);
    
    rect(160,225,10,5);
    rect(185,225,5,5);
    rect(195,225,5,5);
    
    rect(205,215,5,5);
    rect(210,210,5,5);
    fill(255);
    popMatrix();
  }
  
  void displayave(){
    pushMatrix();
    translate(x,y);
    scale(scalax,scalay);
  noStroke();
  fill(#626262);
  beginShape();
    vertex(173,392);
    vertex(166,401);
    vertex(156,402);
    vertex(147,396);
    vertex(154,374);
  endShape();
  
  fill(#7E7E7E);
  beginShape();
    vertex(190,325);
    vertex(196,370);
    vertex(191,389);
    vertex(177,398);
    vertex(158,384);
    vertex(145,399);
    vertex(131,402);
    vertex(114,391);
    vertex(114,369);
    vertex(126,354);
    vertex(140,323);
  endShape();
  
  
  
  fill(#673F24);
  beginShape();
    vertex(95,310);
    vertex(245,310);
    vertex(274,312);
    vertex(328,340);
    vertex(333,365);
    vertex(289,366);
    vertex(286,351);
    vertex(266,329);
    vertex(100,324);
    vertex(68,345);
    vertex(63,362);
    vertex(54,362);
    vertex(61,333);
  endShape();
  
  
  fill(#989898);
  beginShape();
    vertex(130,85);
    vertex(185,95);
    bezierVertex(185,95,163,126,130,85);
    vertex(141,153);
    vertex(130,85);
    vertex(128,181);
    vertex(107,163);
    vertex(100,175);
    vertex(94,198);
    vertex(101,222);
    vertex(90,233);
    vertex(77,267);
    vertex(82,292);
    vertex(95,310);
    
    vertex(245,310);
    
    vertex(262,170);
    vertex(271,163);
    vertex(273,155);
    vertex(253,140);
    vertex(279,147);
    vertex(285,147);
    vertex(291,140);
    vertex(288,137);
    vertex(286,131);
    vertex(267,113);
    vertex(282,117);
    vertex(287,115);
    vertex(289,108);
    vertex(284,101);
    vertex(249,83);
    vertex(268,90);
    vertex(272,91);
    vertex(274,87);
    vertex(270,80);
    vertex(223,67);
    vertex(171,65);
  endShape();
  
  fill(#F0D477);
  beginShape();
    vertex(141,153);
    vertex(128,181);
    vertex(110,169);
    vertex(72,150);
    vertex(39,148);
    vertex(58,106);
  endShape();
  
  
  fill(#FFEC81);
  beginShape();
    vertex(172,63);
    vertex(49,56);
    vertex(38,72);
    vertex(34,148);
    vertex(39,155);
    vertex(44,140);
    vertex(92,135);
    vertex(141,153);
    vertex(140,118);
    vertex(130,85);
  endShape();
  
  
  fill(#7E7E7E);
  beginShape();
    vertex(203,184);
    vertex(226,156);
    vertex(317,198);
    vertex(297,224);
    vertex(363,226);
    vertex(400,258);
    vertex(362,293);
    vertex(262,302);
    vertex(213,280);
    vertex(242,214);
  endShape();
  
  fill(0);
  ellipse(124,72,15,10);
  
  
  fill(255);
  beginShape();
    vertex(130,85);
    vertex(185,95);
    bezierVertex(185,95,163,126,130,85);
  endShape();
  popMatrix();
  }
  
}

class circulo{
  float x,y;
  int tamano;
  int r, g, b;
  float t3;
  
  circulo(float x_,float y_,int tamano_,int r_,int g_, int b_){
  x=x_;
  y=y_;
  tamano=tamano_;
  r=r_;
  g=g_;
  b=b_;
  }
  void circulodisplay(){
    noStroke();
    fill(r,g,b);
    ellipse(x,y,t3,t3); 
    
    
      if(((mouseX>x-tamano/2) & (mouseX < x+tamano/2))&((mouseY>y-tamano/2) & (mouseY < y+tamano/2))){
      t3=tamano*1.5;
      }else
      t3=tamano;
  }
}