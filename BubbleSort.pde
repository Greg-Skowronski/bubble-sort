int[] data;
int N=40;
int i=0;
int j=0;
int k=0;

void setup(){
  frameRate(240);
  background(0);
  size(800,600);
  data = new int[N];
  for(int i=0; i<N; i++){
    data[i]=int(random(height));
    rect((width/N)*i,height-data[i],width/N,data[i]);
  }
}


void draw(){
  int x;
  
  if(i<N && i<N-j+1 && j!=N){    
    fill(0);
    rect((width/N)*i,0,width/N,height);
    if(i<N-j) fill(255,0,0);
    else fill(255);
    rect((width/N)*i,height-data[i],width/N,data[i]);
    if(i<N-1) rect((width/N)*(i+1),height-data[i+1],width/N,data[i+1]);
    if(i>0){
      fill(255);
      rect((width/N)*(i-1),height-data[i-1],width/N,data[i-1]);
    }
    if(i==N-1){
      rect((width/N)*i,height-data[i],width/N,data[i]);
    }
  }else if(j==N){
    fill(0);
    rect((width/N)*i,0,width/N,height);
    fill(0,255,0);
    rect((width/N)*i,height-data[i],width/N,data[i]);
    fill(255,0,0);
    if(i<N-1) rect((width/N)*(i+1),height-data[i+1],width/N,data[i+1]);
  }
  
  i++;
  
  if(i==N){
    if(j<N){
      for(k=0; k<N-1-j; k++){
        if(data[k]>data[k+1]){
          x=data[k];
          data[k]=data[k+1];
          data[k+1]=x;
        }
      }
    }else{
      println("finished");
      noLoop();
    }
    i=0;
    j++;
  }
  
}
