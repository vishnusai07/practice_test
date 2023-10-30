package org.example.API;

import io.restassured.response.Response;
import org.openqa.selenium.By;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;
import static io.restassured.RestAssured.given;

public class dogBreed {

    public static void main(String[] args) {

        open("https://dog.ceo/dog-api/");

        // Find the link to the breeds list
        String apiUrl = $(By.xpath("//a[contains(text(),'Breeds list')]")).getAttribute("href");

        // Use RestAssured to make the API request
        Response response = given().get(apiUrl);

        // Check if the request was successful (status code 200)
        response.then().statusCode(200);

        String jsonData = response.getBody().asString();
        System.out.println(jsonData);



    }



}
