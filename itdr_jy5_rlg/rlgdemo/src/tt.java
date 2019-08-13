public class tt {
    public static void main(String[] args) {
        String [] a={"a","a","c"};
        String [] b={"b","a","b"};
        int c=0;
        for (int i = 0; i < a.length; i++) {
            if (a[i].equals(b[i])){
                c=c+1;
            }
        }
        System.out.println(c);
    }
}
