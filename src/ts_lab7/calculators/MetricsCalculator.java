package ts_lab7.calculators;

public class MetricsCalculator {
    private MetricsCalculator() {
    }

    public static double revpar(int averagePricePerDay, int allRoomsNumber, int roomOccupationNumber, int timePeriod) {
        return averagePricePerDay * ((double)roomOccupationNumber / (double)allRoomsNumber) * timePeriod;
    }//end of revpar

    public static double trevpar(int averagePricePerDay, int allRoomsNumber) {
        return averagePricePerDay * 0.92 / allRoomsNumber;
    }//end of trevpar

    public static double revpor(int averagePricePerDay, int roomOccupationNumber) {
        return averagePricePerDay * 0.92 / roomOccupationNumber;
    }//end of revpor

}//end of class
