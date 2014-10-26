package ru.avtopark

import org.apache.log4j.Logger

class City {

    String name;
    String urlName;
    String gname;
    String descr;
    String descr1;

    static hasMany = [routes: Route];
    static mappedBy = [routes: "departureCity"]

    static constraints = {
        gname nullable: true
        descr nullable: true
        descr1 nullable: true
    }

    static mapping = {
        descr type: 'text'
        descr1 type: 'text'
    }

    public static void initData(){

        File dir=new File("./web-app/goroda");
        if (dir.exists() && dir.isDirectory()) {
            File[] files=dir.listFiles();
            for (File file:files){
                try {
                    FileReader reader=new FileReader(file.getPath());
                    BufferedReader br = new BufferedReader(reader);
                    City city=new City();
                    int ind=file.getName().indexOf('.');
                    city.setUrlName(file.getName().substring(0,ind));
                    city.setName(br.readLine());
                    city.setGenitiveName(br.readLine());
//                    city.setDescr(br.readLine());
//                    city.setDescr1(br.readLine());
                    city.save();
                    br.close();
                    reader.close();
                } catch (FileNotFoundException e) {
                    Logger.getLogger(City.class).error(e);
                } catch (IOException e) {
                    e.printStackTrace();
                    Logger.getLogger(City.class).error(e);
                } catch (Exception e){
                    Logger.getLogger(City.class).error(e)
                }

            }
        }

    }
}
