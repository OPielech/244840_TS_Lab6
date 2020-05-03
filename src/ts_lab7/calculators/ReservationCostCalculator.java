package ts_lab7.calculators;

public class ReservationCostCalculator {
    private ReservationCostCalculator() {
    }

    public static double calculate(long daysNumber, double price) {
        return daysNumber * price;
    }//end of calculate
}//end of class
