class A{
    static int add(Object ...a){
        int sum = 0;
        for(int i : a){
            sum+=i;
        }
        return sum;
    }
    public static void main(String... args) {
        System.out.println(add());
        System.out.println(add(1,2));
        System.out.println(add(90,1000,200,44));
        System.out.println(add(1,12,3,56,7,7,8,8,89,8,8));
    }
}