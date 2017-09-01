//Matriz Aleatoria con class by Alejandro R. Nuñez
MatrizAl PC;
MatrizAl SC;

void setup()
{
  size(400,400);
  PC= new MatrizAl(5,100,65,50,0,0);
  SC= new MatrizAl(5,100,230,50,0,0);
}

void draw()
{
  background(0);
  PC.DM();
  PC.pantalla();
  SC.DM();
  SC.pantalla();
}

class MatrizAl
{
  int t, u, x, y, i, j;
  
  MatrizAl(int t1, int u1, int x1, int y1, int i1, int j1)
  {
    t=t1;
    u=u1;
    x=x1;
    y=y1;
    i=i1;
    j=j1;
  }
  
  void DM()
  {
    if ((mouseX >= x & mouseX <= x+x) & (mouseY >= y & mouseY <= y+x))
    {
    t= 10;
    }
    else 
    {
    t= 5;
    }

    if ((mouseX >= x & mouseX <= x+x) & (mouseY >= y & mouseY <= y+x)) 
    {
    t= 10;
    }
    else 
    {
    t= 5;
    }
  }
  
  void pantalla()
  {
    noStroke();
    for (i = 0; i<u; i+=t)
    {
      for (j = 0; j<u; j+=t)
      {
        fill (random(255));
        rect (x+i,y+j,t,t);
      }
    } 
  }
}