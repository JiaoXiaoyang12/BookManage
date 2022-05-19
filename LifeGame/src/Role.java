public class Role extends Cells{
    public int MAX=10;

    public void getNew(Cells map){
        for(int i=0,j=0;i<MAX;i++)
            for(j=0;j<MAX;j++){
                int round=select(i,j,map);
                    if(round==2){map.Cells[i][j].next=2;}
                    else if(round==3){map.Cells[i][j].next=1;}
                    else{map.Cells[i][j].next=0;}
                //for(int m=i-1;m<4+i;m++)
                  //  for(int n=j-1;n<4+j;n++){
                  }
            }
    public int select(int i,int j,Cells map)
    {
        if(i==0&&j==0)
        {return map.Cells[i+1][j].life+map.Cells[i+1][j+1].life+map.Cells[i][j+1].life;}
        else if(i!=0&&j==0&&i!=MAX-1)
        {return map.Cells[i+1][j].life+map.Cells[i+1][j+1].life+map.Cells[i][j+1].life+map.Cells[i-1][j].life+map.Cells[i-1][j+1].life;}
        else if(i==MAX-1&&j==0)
        {return map.Cells[i-1][j].life+map.Cells[i-1][j+1].life+map.Cells[i][j+1].life;}
        else if(j!=0&&i==0&&j!=MAX-1)
        {   //if(map.Cells[i+1][j].life+map.Cells[i+1][j+1].life+map.Cells[i][j+1].life+map.Cells[i][j-1].life+map.Cells[i+1][j-1].life==3)System.out.println("wdnmd");
            return map.Cells[i+1][j].life+map.Cells[i+1][j+1].life+map.Cells[i][j+1].life+map.Cells[i][j-1].life+map.Cells[i+1][j-1].life;}
        else if(j!=MAX-1&&i==MAX-1&&j!=0)
        {return map.Cells[i-1][j].life+map.Cells[i-1][j+1].life+map.Cells[i][j+1].life+map.Cells[i-1][j-1].life+map.Cells[i][j-1].life;}
        else if(i==0&&j==MAX-1)
        {return map.Cells[i][j-1].life+map.Cells[i+1][j-1].life+map.Cells[i+1][j].life;}
        else if(i!=0&&j==MAX-1&&i!=MAX-1)
        {return map.Cells[i][j-1].life+map.Cells[i+1][j-1].life+map.Cells[i+1][j].life+map.Cells[i-1][j-1].life+map.Cells[i-1][j].life;}
        else if(i==MAX-1&&j==MAX-1)
        {return map.Cells[i-1][j-1].life+map.Cells[i-1][j].life+map.Cells[i][j-1].life;}
        else{return map.Cells[i-1][j-1].life+map.Cells[i-1][j].life
                +map.Cells[i-1][j+1].life+map.Cells[i][j-1].life
                +map.Cells[i][j+1].life+map.Cells[i+1][j-1].life
                +map.Cells[i+1][j].life+map.Cells[i+1][j+1].life;}
    }
    }


