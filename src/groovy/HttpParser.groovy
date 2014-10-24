/**
 * Created by Valiev on 24.10.14.
 */
// Grap HTTPBuilder component from maven repository
@Grab(group='org.codehaus.groovy.modules.http-builder',
        module='http-builder', version='0.5.2')
// import of HttpBuilder related stuff
import groovyx.net.http.*

class City {
    String name;
    String gname;
    String descr;
}

def http = new HTTPBuilder("http://www.gumtree.com/cgi-bin/" +
        "list_postings.pl?search_terms=car&search_location=London&ubercat=1")

def html = http.get([:])


def getCityPage(String url){
    def http = new HTTPBuilder(url);

}


def create_files={ cities ->
    def dir=new File('./out')
    dir.mkdir()
    cities.each({ city->

        def file=new File('./out/'+city.name+'.txt');
        if (!file.exists())
            file.createNewFile();
        def fw= new FileWriter(file);
        fw.write(city.name+'\r\n');
        fw.write(city.gname+'\r\n');
        fw.write(city.descr+'\r\n');
    })
}


