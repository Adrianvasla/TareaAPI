package report;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class ReportGenerator {

    public static void main(String[] args) {
        String path="E:\\Diplomado Testing Software\\Modulo 4\\TareaAPI\\build\\reports\\cucumber\\";

        File reportOutPut = new File(path+"finalreport");

        List<String> jsonFiles = new ArrayList<>();
        jsonFiles.add(path+"report.json");

        Configuration configuration = new Configuration(reportOutPut, "UCB Diplomado");
        configuration.setBuildNumber("v1.0");
        configuration.addClassifications("SO", "Windows");
        configuration.addClassifications("Owner", "Adrian");
        configuration.addClassifications("Branch", "Cucumber");

        ReportBuilder reportBuilder = new ReportBuilder(jsonFiles,configuration);
        reportBuilder.generateReports();

    }


}
