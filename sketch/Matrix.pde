class Matrix{
    int rows;
    int cols;
    float[][] self;
    public Matrix(int a, int b)
    {
        rows = a;
        cols = b;
        this.self = new float[a][b];

    }    
    public Matrix(){};
    public Matrix(float[][] data)
    {
        rows = data.length;
        cols = data[0].length;
        this.self = new float[rows][cols];
        for(int i = 0; i < rows ; i++)
        for(int j = 0; j < cols ; j++)
        {
            this.self[i][j] = data[i][j];
        }
    }
    Matrix(Matrix A) { this(A.self); }

    Matrix plus( Matrix A){
        if(this.rows == A.rows && this.cols == A.cols ){
                Matrix temp = new Matrix(this.rows,this.cols);
        for(int i = 0; i < rows ; i++)
        for(int j = 0; j < cols ; j++)
        {
          temp.self[i][j] =  this.self[i][j] + A.self[i][j];
        }
        return temp; 
        }
        else throw new RuntimeException("Illegal matrix dimensions.");

    }
     Matrix minus( Matrix A){
        if(this.rows == A.rows && this.cols == A.cols ){
                Matrix temp = new Matrix(this.rows,this.cols);
        for(int i = 0; i < rows ; i++)
        for(int j = 0; j < cols ; j++)
        {
          temp.self[i][j] =  this.self[i][j] - A.self[i][j];
        }
        return temp; 
        }
        else throw new RuntimeException("Illegal matrix dimensions.");

    }
    Matrix times(Matrix A){
    if(this.cols  == A.rows){
        Matrix temp = new Matrix(this.rows ,A.cols);
        for(int i = 0; i < temp.rows; i++)
        for(int j = 0; j < temp.cols; j++)
        for(int k = 0; k < this.cols; k++)
        {
            temp.self[i][j] += this.self[i][k] * A.self[k][j];
        }
        return temp;
    }
    else throw new RuntimeException("Illegal matrix dimensions.");
    }
    public Point timesp (Point p){
        if(cols==2 && rows == 2){
            Point temp = new Point();
            temp.x = this.self[0][0]*p.x + this.self[0][1]*p.y;
            temp.y = this.self[1][0]*p.x + this.self[1][1]*p.y; 
            return temp;
        }
        else throw new RuntimeException("Illegal mat dimensions.");
    }
     public Matrix times (float p){
        
        Matrix temp = new Matrix(this.rows,this.cols);
        for(int i = 0; i < temp.rows; i++)
        for(int j = 0; j < temp.cols; j++)
            temp.self[i][j]=this.self[i][j]*p;
        return temp;
        
        
    }
    
    public void show() {
        for (int i = 0; i < this.rows; i++) {
            for (int j = 0; j < this.cols; j++) 
                {print(this.self[i][j]);print("\t");}
            println();
        }
    }
}