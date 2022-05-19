import java.util.Random;
import java.lang.Math;
public class Cells extends Cell{
    public int MAX = 10;
    public Cell[][] Cells=new Cell[MAX][MAX];
    public Cells(){
        for(int i=0,j=0;i<MAX;i++)
            for(j=0;j<MAX;j++)
            {
                Cell c=new Cell();
                Cells[i][j]=c;
            }
    }
    public void Int(Cell[][] Cells) {
        if (Cells == null || Cells.length == 0 || Cells[0] == null || Cells[0].length == 0) System.out.println("0");
        for (int i = 0, j = 0; i < MAX ; i++) {
            for (j = 0; j < MAX; j++) {
                Cells[i][j].life = (int) (Math.random() * 100);
                if (Cells[i][j].life > 20 && Cells[i][j].life <= 80) {
                    Cells[i][j].life = 1;
                } else {
                    Cells[i][j].life = 0;
                }
                //System.out.println(Cells[i][j].life);
            }
            //System.out.println("\n");
        }
    }
}

