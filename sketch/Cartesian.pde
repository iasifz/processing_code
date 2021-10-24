class Point {
     float x,y;

    public Point(){this.x = 0.0; this.y = 0.0;}
    public Point (float a, float b) {
        this.x = a;
        this.y = b; 
    }

    void show(){
        point(this.x,this.y);
    }
    public void eq(Point p){
        this.x = p.x;
        this.y = p.y;
        
    }
    public void eq(float a, float b){
        this.x = a; this.y = b; 
    }

}

class Line {
    Point p = new Point();
    Point q = new Point();
     public Line(){}


    public Line(Point a, Point b)
    {
        p = a;
        q = b; 
    }

    public void eq(Point a, Point b)
    {
        p = a;
        q = b; 
    }
    public Line(Line a){
        this.p = a.p;
        this.q= a.q;
    }
    public void eq(Line a){
        this.p = a.p;
        this.q= a.q;
    }
    void show(){
        line(p.x,p.y,q.x,q.y);
    }
    float distance(){
    return dist(this.p.x, this.p.y, this.q.x, this.q.y);
    }
}

void Grid(){
    Point a = new Point();
    Point b = new Point();
    Line  l = new Line();
    stroke(#c21b37);
for(int i = -2*height; i<= 2*height; i+=40){
    if(i==0)strokeWeight(3);else strokeWeight(1);
    a.eq(-2*width,i);
    b.eq(2*width,i);
    l.eq(a,b);
    l.show();
}
    stroke(#648767);
for(int i = -2*width; i<= 2*width; i+=40){
    if(i==0)strokeWeight(3);else strokeWeight(1);
    a.eq(i,-2*height);
    b.eq(i,2*height);
    l.eq(a,b);
    l.show();
}


}
void Grid(Matrix M){
    Point a = new Point();
    Point b = new Point();
    Line  l = new Line();
    stroke(#cc5f71,120);
for(int i = -2*height; i<= 2*height; i+=40){
    if(i==0)strokeWeight(3);else strokeWeight(1);
    a.eq(-2*width,i);
    b.eq(2*width,i);
    l.eq(M.timesp(a),M.timesp(b));
    l.show();
}
    stroke(#8abb8e,120);
for(int i = -2*width; i<= 2*width; i+=40){
    if(i==0)strokeWeight(3);else strokeWeight(1);
    a.eq(i,-2*height);
    b.eq(i,2*height);
    l.eq(M.timesp(a),M.timesp(b));
    l.show();
}


}
