import java.util.Scanner;

import static java.lang.System.exit;

public class Change extends Role {
    public Cells Map;

    public Change() {
        Map = new Cells();
        Int(Map.Cells);
    }
    public void GetResult()
    {
       getNew(Map);
        int [][] board;
        for(int i=0,j=0;i<MAX;i++) {
            for (j = 0; j < MAX; j++) {
                if (Map.Cells[i][j].next == 0) {
                    Map.Cells[i][j].life = 0;
                    System.out.print(Map.Cells[i][j].life);
                } else if (Map.Cells[i][j].next == 1) {
                    Map.Cells[i][j].life = 1;
                    System.out.print(Map.Cells[i][j].life);
                }
                else{System.out.print(Map.Cells[i][j].life);
                     }

            } System.out.print("\n");
        }
        System.out.println("是否进行下一次演化(0退出/1确认)");
        Scanner in=new Scanner(System.in);
        int i=in.nextInt();
        switch(i){
            case 1:GetResult();
            case 0:exit(0);
        }

    }
    }


