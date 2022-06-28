package sample;

import javafx.application.Application;
import javafx.stage.Stage;

import java.io.IOException;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception {
    }

    public static void main(String[] args) throws IOException {
        String imagePath = "file:" + args[0];
        String convertedImagePath = args[1];
        int requestedWidth = Integer.parseInt(args[2]);
        int requestedHeight = Integer.parseInt(args[3]);
        int encodingMethod = Integer.parseInt(args[4]);
        boolean convertAsBraille;
        boolean enableDithering;
        double opacity = Double.parseDouble(args[7])  / 100.0d;

        if (args[5] == "1") {
            convertAsBraille = true;
        } else {
            convertAsBraille = false;
        }

        if (args[6] == "1") {
            enableDithering = true;
        } else {
            enableDithering = false;
        }

        OCIF.convert(imagePath, convertedImagePath, requestedWidth, requestedHeight, encodingMethod, convertAsBraille, enableDithering, opacity);

        System.exit(0);
    }
}