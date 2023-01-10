package raf.pp;

import java_cup.runtime.Scanner;
import java.io.FileReader;

public class Main {
    public static void main(String[] args) {
        try
        {
            FileReader file = new FileReader(args[0]);
            Scanner scanner = new MPLexer(file);
            MPParser parser = new MPParser(scanner);
            parser.debug_parse();
            if (parser.errNo == 0)
                System.out.println("Analiza zavrsena. U kodu nema gresaka.");
            else
                System.out.println("Analiza zavrsena. Broj gresaka: " + parser.errNo);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
