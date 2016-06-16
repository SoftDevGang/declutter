package org.approvaltests.hadoop;

import java.util.Comparator;

import org.apache.hadoop.mrunit.types.Pair;

public class PairComparer implements Comparator<Pair>{

  /**
   * comment
   */
  public static final PairComparer INSTANCE = new PairComparer();

  /*
   * comment
   *
   */
  public int compare(Pair o1, Pair o2)
  {
    // line comment
      // return ((Comparable) o1.getFirst()).compareTo(o2.getFirst());
      return ((Comparable) o1.getFirst()).compareTo(o2.getFirst());
  }

  //public int compare(Pair o1, Pair o2)
  //{
  //  // line comment
  //    return ((Comparable) o1.getFirst()).compareTo(o2.getFirst());
  //}

  public void foo() {
      System.out.println("foo");
      System.out.println("foo"); // foo
  }

  //public int compare(Pair o1, Pair o2)
  //{
  //    return ((Comparable) o1.getFirst()).compareTo(o2.getFirst());
  //}
}
