package id.ac.polban.jtk.project3.travlendar2A.model;
import id.ac.polban.jtk.project3.travlendar2A.model.TransportationMode.Transport;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Reza Dwi Kurniawan
 */
public class EstimationTime {
    private double distance;
    private double speed;
    private double eta; //eta merupakan singkatan dari estimation time arrival
   
    /**
     * @return the distance
     */
    public double getDistance() {
        return distance;
        
    }

    /**
     * @param distance the distance to set
     */
    public void setDistance(double distance)    {
        this.distance = distance;
    }
 
    
    /**
     * @return the speed
     */
    public double getSpeed() {
        return speed;
    }

    /**
     * @param speed the speed to set
     */
    public void setSpeed(double speed) {
        this.speed = speed;
    }
    
    public double countEstimationTime(double speed, double distance){
        this.speed = speed; 
        this.distance = distance; 
        eta = distance/speed; //estimation time diisi nilai hasil bagi jarak/kecepatan
        return eta;
    }
    
    public void printEstimationTime(double eta){
        this.eta = eta;
        int inteta = (int) eta; //casting double to int
        eta = eta % 1 * 60; //menghitung hasil mod untuk dijadikan menit
        if ((inteta/1)<1){
            System.out.printf("%.0f",eta);
            System.out.print(" minutes");
        } else {
            System.out.print(inteta/1+" hours"); //membagi var eta yang telah dikonversi ke int dan akan dijadikan jam
            System.out.printf(" %.0f",eta);
            System.out.print(" minutes");
        }
    }
    
    public void transportRecomendation(double distance, long waktuKosong){
        double[] arrayOfEta = new double [5];
        TransportationMode tm = new TransportationMode();
        EstimationTime et = new EstimationTime();
        et.setDistance(distance);
        arrayOfEta[0] = et.countEstimationTime(tm.getSpeedKendaraan(Transport.PESAWAT),et.getDistance()); //var penampung estimation jika menggunakan pesawat
        arrayOfEta[1] = et.countEstimationTime(tm.getSpeedKendaraan(Transport.KERETA),et.getDistance()); //var penampung estimation jika menggunakan kereta
        arrayOfEta[2] = et.countEstimationTime(tm.getSpeedKendaraan(Transport.MOTOR),et.getDistance());  //var penampung estimation jika menggunakan motor
        arrayOfEta[3] = et.countEstimationTime(tm.getSpeedKendaraan(Transport.MOBIL),et.getDistance());  //var penampung estimation jika menggunakan mobil
        arrayOfEta[4] = et.countEstimationTime(tm.getSpeedKendaraan(Transport.BUS),et.getDistance());    //var penampung estimation jika menggunakan bus
        System.out.println("\nRekomendasi kendaraan yang dapat digunakan: \n");
        for (int i=0; i<5; i++){
            if (arrayOfEta[i]<=waktuKosong){    //pengecekan jika waktu yg diperlukan ketika menaiki kendaraan lebih kecil dari waktu kosong yang dimiliki
               switch(i){
                    case 0: 
                        System.out.print("- Pesawat, waktu tempuh ");
                        et.printEstimationTime(arrayOfEta[i]);
                        System.out.println("\n");
                        break;
                    case 1:
                        System.out.print("- Kereta, waktu tempuh ");
                        et.printEstimationTime(arrayOfEta[i]);    
                        System.out.println("\n");
                        break;
                    case 2:
                        System.out.print("- Motor, waktu tempuh ");
                        et.printEstimationTime(arrayOfEta[i]);
                        System.out.println("\n");
                        break;
                    case 3:
                        System.out.print("- Mobil, waktu tempuh ");
                        et.printEstimationTime(arrayOfEta[i]);
                        System.out.println("\n");
                        break;
                    case 4:
                        System.out.print("- Bus, waktu tempuh ");
                        et.printEstimationTime(arrayOfEta[i]);
                        System.out.println("\n");
                        break;
                }
            } else {
                    System.out.println("");
                    break;
                }
            }
        }
    
    /*public static void main(String[] args){
        EstimationTime et = new EstimationTime();
        et.transportRecomendation(200, 3);
    }*/
}