import java.util.ArrayList;
import java.util.Scanner;
import java.io.*;

class drop{
  public static ArrayList<Integer> dropEveryOther(ArrayList<Integer> list) {
    ArrayList<Integer> result = new ArrayList<Integer>();
    for (int i = 0; i < list.size(); i++) {
      if (i % 2 == 0)
        result.add(list.get(i));
    }
    return result;
  }

  public static void printList(ArrayList<Integer> list){
    if (list.size() == 0){
      System.out.println("[]");
      return;
    }
    System.out.print("[" + list.get(0));
    for (int i = 1; i < list.size(); i++){
      System.out.print(", " + list.get(i));
    }
    System.out.print("]\n");
  }

  public static void main(String[] args){
    ArrayList<Integer> list = new ArrayList<Integer>();
    System.out.println("Enter a list, terminate the list with a negative number.");
    while (true){
      System.out.print("Enter the next list element (negative value to terminate):");
      Scanner in = new Scanner(System.in);
      int getValue = in.nextInt();
      if (getValue < 0) break;
      list.add(getValue);
    }
    printList(list);
    ArrayList<Integer> result = dropEveryOther(list);
    printList(result);
  }
}
