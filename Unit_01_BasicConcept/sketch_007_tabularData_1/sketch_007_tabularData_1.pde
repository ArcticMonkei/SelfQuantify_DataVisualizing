Table myTable;
void setup(){
  size(640,400);
  smooth();
  String s = "64,100,32,7,87,22";
  myTable = loadTable("data.csv","header");//如果第一行有，就直接用加"header"的方式声明他是表头
}

void draw(){
  background(0);
  TableRow row = myTable.getRow(i);//get第i行的参数
  //for (i=0;i<=myTable.getRowCount;++i); 用于不知道多少行
  float x1 = row.getInt("x");
  float y1 = row.getInt("y");
  float w1 = row.getInt("width");
  float h1 = row.getInt("height");
  
  /*
float x = row.getInt(0);
float y = row.getInt(1);
float w = row.getInt(2);
float h = row.getInt(3);
*/

  rect(x1,y1,w1,h1);
  
}
