 float[][] matA = {
     {1,0},
     {0,1}
 };
 float[][] matB = {
     {0,0},
     {0,0}
 };
 float rate = 0.04;
 Matrix A = new Matrix(matA);
 Matrix B = new Matrix(matB);
 Point[] pers = new Point[10];
void setup(){
    size(700, 700);
    background(0, 0, 0, 255);
    translate(width/2, height/2);
    scale(1, -1);
    stroke(255,128);
    Grid();
    stroke(255);
    strokeWeight(4);
    for(int i =0; i<10; i++){
        pers[i] = new Point(i*20,i*20);
    }
    for(int i =0; i<10; i++){
        pers[i].show();
    }
    stroke(255,0,0);
    for(int i =0; i<10; i++){
        A.timesp(pers[i]).show();
    }

 }
void draw(){
    background(0, 0, 0, 255);
    translate(width/2, height/2);
    scale(1, -1);
    stroke(255,128);
    strokeWeight(1);
    Grid();
     stroke(128,128,0,128+64);
     A.self[0][0]=lerp(A.self[0][0], B.self[0][0], rate);
     A.self[0][1]=lerp(A.self[0][1], B.self[0][1], rate);
     A.self[1][0]=lerp(A.self[1][0], B.self[1][0], rate);
     A.self[1][1]=lerp(A.self[1][1], B.self[1][1], rate);

     Grid(A);
     for(int i =0; i<10; i++){
        A.timesp(pers[i]).show();
    }
    
     println(frameCount);
     println(frameRate);
     saveFrame("/home/asif/matrices/dim//diminished-###.tif");
     if(frameCount == 300){
         noLoop();
     }

}
