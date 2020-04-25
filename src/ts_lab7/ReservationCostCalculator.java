package ts_lab7;

public class ReservationCostCalculator {
    private ReservationCostCalculator() {
    }

    public static double calculate(long daysNumber, int price) {
        return daysNumber * price;
    }//end of calculate
}//end of class
