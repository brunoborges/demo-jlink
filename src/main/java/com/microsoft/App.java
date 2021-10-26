package com.microsoft;

import java.util.logging.Logger;

import static spark.Spark.*;

/**
 * Hello world!
 *
 */
public class App {

    static Logger logger = Logger.getLogger(App.class.getName());

    public static void main(String[] args) {
        port(8080);
        get("/", (req, res) -> {
            logger.info("HTTP Request for / arrived ...");
            return "Hello World!";
        });
    }

}
