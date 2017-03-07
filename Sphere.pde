class Sphere
{
  private PVector _location;
  private PVector _Color;
  private float _size = 100;
  private boolean _changeBackColor = false;
  
  Sphere(PVector location, PVector Color, float size, boolean changeBackColor)
  {
    _location = location;
    _Color = Color;
    _size = size;
    _changeBackColor = changeBackColor;
  }
  
  private void Update()
  {
    Collision();
    keyReleased();
  }
  
  private void Draw()
  {
    if (mousePressed) 
    {
      directionalLight(255, 255, 255, 1, -1, 0);
    }

    // used for translating, the top board to only move this object   
    pushMatrix(); 
    //location(x,y,z = front to back - changes size)
    // translate(10,10,10); == makes it in the middle of the screen
    translate(_location.x, _location.y, _location.z); 
    fill(_Color.x,_Color.y,_Color.z);
    stroke(0);
    // size of the sphere
    sphere(_size); 
    // leaves it in place and takes out the matric formed in the beginning
    popMatrix(); 
    
  }
  
  void keyReleased()
  {
    if(key == 'i')
    {
      _size ++;
    }

    if(key == 'k')
    {
      _size --;
    }

    if(key == 'd')
    {
      _location.x++;
    }

    if(key == 'a')
    {
      _location.x--;
    }

    if(key == 'w')
    {
      _location.y--;
    }

    if(key == 's')
    {
      _location.y++;
    }
  }
  
  private void Collision()
  {
    if(dist(mouseX,mouseY,10,_location.x,_location.y,_location.z) < 10)
    {
      _changeBackColor = true;
    }
    
    BackgroundColor();
  }
  
  private void BackgroundColor()
  {
    if(_changeBackColor == false)
    {
      background(0);
    }
  
    if(_changeBackColor == true)
    {
      background(random(255), random(255), random(255));
    }
  }  
}