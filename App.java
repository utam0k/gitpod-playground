public class App {
    public static void main(String[] args){
        try {
            while (true) {
                System.out.printf("Runtime.availableProcessors: %d%n", Runtime.getRuntime().availableProcessors());
                Thread.sleep(10000);
            }
        } catch (InterruptedException ignored){}
    }
}
