#ifndef TIMESERIES_H_
#define TIMESERIES_H_

#include <vector>
#include <string>
#include <iostream>

using namespace std;


class TimeSeries{
private:
    vector<pair<string, vector<float>>> m_dataTable;

    vector<pair<string, vector<float>>> loadDataFromCSV(const char *name);

public:

    explicit TimeSeries(const char* csvFileName) : m_dataTable(){
        m_dataTable = loadDataFromCSV(csvFileName);
	}

	vector<string> getFeatures();
    int getNumberOfFeatures();
    void addTimeStampRow(string csvRow);
    void printFeatureData(int featIndex);
    void printFeatureData(string featName);
    int getFeatureIndex(string feature);
    vector<float> getFeatureData(int featIndex);
    vector<float> getFeatureData(string featName);
    float getFeatureValAt(string feature, int time);




};



#endif /* TIMESERIES_H_ */
