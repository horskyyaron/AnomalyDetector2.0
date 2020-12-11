#include <string>
#include <fstream>
#include <vector>
#include <sstream>
#include "timeseries.h"

using namespace std;

void printSeparator() {
    cout << "-----------------------------" << endl;
}
void parseCSVRowIntoVector(vector<pair<string, vector<float>>> & extractedData, string csvRowString) {
    //variable to hold the numeric value of a numeric cell.
    string cellData;
    int colIndex = 0;
    stringstream csvRowStream(csvRowString);

    while(csvRowStream.good()) {
        //reading cell data.
        getline(csvRowStream, cellData, ',');
        float val = stof(cellData);
        //pushing data to te vector.
        extractedData.at(colIndex).second.push_back(stof(cellData));
        colIndex++;
    }
}

void getFeaturesFromCSV(vector<pair<string, vector<float>>> & extractedData, ifstream & csvFile) {
    string csvRowString, feature;

    //The first line in the csv holds the features names.
    getline(csvFile, csvRowString);

    stringstream csvRowStream(csvRowString);
    //adding features to vector and initializing an empty vector for numeric values in the pair.
    while (getline(csvRowStream, feature, ',')) {
        extractedData.push_back({feature, std::vector<float>{}});
    }
}

vector<pair<string,vector<float>>> TimeSeries::loadDataFromCSV(const char *csvFilePath) {

    vector<pair<string, vector<float>>> extractedData;

    //opening stream for extracting data from the csv file.
    ifstream csvFile(csvFilePath);

    //check for problems with the csv file.
    if(!csvFile.is_open()) {
        cout << "csv file won't load!" << endl;
        exit(-1);
    }
    //getting features names.
    if(csvFile.good()) {
        getFeaturesFromCSV(extractedData, csvFile);
    } else {
        //if empty, returns the empty vector.
        cout << "csv file is empty" << endl;
        return extractedData;
    }

    string csvRowString;

    //adding values to the data vector according to the col index (i-th column = i-th feature data)
    while(getline(csvFile, csvRowString)) {
        parseCSVRowIntoVector(extractedData, csvRowString);
    }

    //closing the stream.
    csvFile.close();

    return extractedData;
}

vector<string> TimeSeries::getFeatures() {
    vector<string> features;
    vector<pair<string,vector<float>>>::iterator iter;

    for (iter = this->m_dataTable.begin(); iter < this->m_dataTable.end(); iter++) {
        features.push_back(iter->first);
    }
    return features;
}

int TimeSeries::getNumberOfFeatures() {
    return this->m_dataTable.size();
}

void TimeSeries::addTimeStampRow(string csvRow) {
    parseCSVRowIntoVector(this->m_dataTable, csvRow);
}

void TimeSeries::printFeatureData(int featIndex) {
    printSeparator();
    cout << "Feature - \""<< this->m_dataTable.at(featIndex).first.data() << "\" data:" << endl;
    printSeparator();
    cout << "Time sample | measured value" << endl;

    int index = 0;
    for (vector<float>::iterator iter = this->m_dataTable.at(featIndex).second.begin(); iter <this-> m_dataTable.at(featIndex).second.end(); iter++) {
        cout << index++ << ": " << *iter << endl;
    }
    printSeparator();
}

void TimeSeries::printFeatureData(string featName) {

    int featIndex = getFeatureIndex(featName);
    if(featIndex != -1) {
        printFeatureData(featIndex);
    }
    else {
        cout << "Feature - \"" << featName << "\" doesn't exists!" << endl;
    }
}

int TimeSeries::getFeatureIndex(string feature) {
    vector<string> features = getFeatures();
    int index = 0;

    for (vector<string>::iterator iter = features.begin(); iter < features.end(); iter++) {
        if(iter->compare(feature) == 0) { return index; }
        index++;
    }
    return -1;

}

float TimeSeries::getFeatureValAt(string feature, int time) {
    try {
        int featIndex = getFeatureIndex(feature);
        vector<float> data = getFeatureData(featIndex);
        return data.at(time);
    } catch (out_of_range &e) {
        //time < 0 or time that is in the future.
        cout << "You asked for feature - \"" << feature << "\" value at time " << time << endl;
        cout << "unreachable time entered. (" << time << ")" << endl;
    }
    return -1;
}

vector<float> TimeSeries::getFeatureData(int featIndex) {
    return this->m_dataTable.at(featIndex).second;
}
