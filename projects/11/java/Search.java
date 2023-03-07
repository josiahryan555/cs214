/* Search.java finds the index of the specified value (99) in Java linked lists.
 *
 * Begun by: Dr. Adams, CS 214 at Calvin College.
 * Completed by:  Josiah Ryan
 * Date:          04/19/21
 */

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;

public class Search {

  public static void main(String [] args) {

    LinkedList<Integer> list1 = new LinkedList<Integer>();
    LinkedList<Integer> list2 = new LinkedList<Integer>();
    LinkedList<Integer> list3 = new LinkedList<Integer>();
    LinkedList<Integer> list4 = new LinkedList<Integer>();

    list1.add(99);    // 99, 88, 77, 66, 55
    list1.add(88);    // Search is first
    list1.add(77);
    list1.add(66);  
    list1.add(55);

    list2.add(55);    // 55, 66, 77, 88, 99
    list2.add(66);    // Search is last
    list2.add(77);  
    list2.add(88);  
    list2.add(99);  
  
    list3.add(55);    // 55, 77, 99, 88, 66
    list3.add(77);    // Search is in the middle
    list3.add(99);  
    list3.add(88);  
    list3.add(66);  
  
    print(list1); 
    System.out.println("Search of list1: " + search(list1, 99) );
    System.out.println();
    print(list2); 
    System.out.println("Search of list2: " + search(list2, 99) );
    System.out.println();
    print(list3);
    System.out.println("Search of list3: " + search(list3, 99) );
    System.out.println();
    print(list4);
    System.out.println("Search of list4: " + search(list4, 99) );
    System.out.println();
   // display Searchima of the 4 lists...
  }

  /** print() displays a LinkedList on the console.
   *
   * @param: aList, a LinkedList<Integer>
   * 
   * Postcondition: the Integer values in aList
   *                 have been displayed to System.out,
   *                 separated by spaces.
   */
  public static void print(LinkedList<Integer> aList){
    Iterator<Integer> listIterator = aList.iterator();
    while (listIterator.hasNext()){
        System.out.print(listIterator.next() + " ");
    }
    System.out.print('\n');
      }

  /* Receive: aList, a list of integers; and
   *        aValue, an integer.
   * Return: the position of aValue within aList, if aValue is present in aList;
   *        -1, otherwise.
   */
  public static int search(LinkedList<Integer> aList, Integer aValue) {
    Iterator<Integer> listIterator = aList.iterator();
    Integer index = 0;
    while (listIterator.hasNext()){
        if (aValue == listIterator.next()) {
          return index;
        }
        index += 1;
    }
    return -1;
  }
}

