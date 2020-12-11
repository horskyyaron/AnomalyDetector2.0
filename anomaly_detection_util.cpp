/*
 * anomaly_detection_util.cpp
 *
 * Author: 204351670
 */

#include "math.h"
#include <assert.h>
#include "anomaly_detection_util.h"

float avg(float* x, int size){
    float* iter = x;
    float samplesSum = 0;

    //calculating the sum of all the samples of x.
    for (int i = 0; i < size; ++i) {
        samplesSum += *iter;
        iter++;
    }

    //normalizing by dividing by the number of samples made.
    return samplesSum / size;
}

// returns the variance of X and Y
float var(float* x, int size){
    float* iter = x;
    float samplesSquareSum = 0;

    for (int i = 0; i < size; ++i) {
        samplesSquareSum += pow(*iter, 2);
        iter++;
    }

    return (samplesSquareSum / size) - pow(avg(x, size), 2);
}

// returns the covariance of X and Y
float cov(float* x, float* y, int size){
    float x_ExpectedValue = avg(x, size);
    float y_ExpectedValue = avg(y, size);

    float* x_iter = x;
    float* y_iter = y;

    float cov = 0;

    for (int i = 0; i < size; ++i) {
        cov += (*x_iter - x_ExpectedValue) * (*y_iter - y_ExpectedValue);
        x_iter++;
        y_iter++;
    }

    //dividing by the number of samples - 1. (according to the cov formula)
    return cov / size;
}

float getStandardDeviation(float* variable, int size) {
    return sqrt(var(variable,size));
}

// returns the Pearson correlation coefficient of X and Y
float pearson(float* x, float* y, int size){
    float x_std_deviation = getStandardDeviation(x, size);
    float y_std_deviation = getStandardDeviation(y, size);

    return cov(x, y, size) / (x_std_deviation * y_std_deviation);
}

float* getSamples(Point** const & points, int size, char axis) {
    float* samples = new float [size];
    switch (axis) {
        case 'x': {
            for (int i = 0; i < size; ++i) {
                samples[i] = points[i]->x;
            }
            break;
        }
        case 'y': {
            for (int i = 0; i < size; ++i) {
                samples[i] = points[i]->y;
            }
            break;
        }
        default: {
            //enter correct axis.
            assert(!(axis != 'x' && axis != 'y'));

        }
    }
    return samples;
}

float get_linear_reg_slope(float* x, float* y, int size) {
    return cov(x,y,size) / var(x, size);
}

float get_linear_reg_free_component(float* x, float* y, int size) {
    return avg(y, size) - get_linear_reg_slope(x, y, size) * avg(x, size);
}

// performs a linear regression and returns the line equation
Line linear_reg(Point** points, int size){

    //separating to X and Y samples.
    float* x_samples = getSamples(points,size,'x');
    float* y_samples = getSamples(points,size,'y');

    //calculating a and b in in the liner regression | Y =
    float slope = get_linear_reg_slope(x_samples, y_samples, size);
    float free_comp = get_linear_reg_free_component(x_samples, y_samples, size);

    //freeing allocated memory.
    delete[] x_samples;
    delete[] y_samples;

    return Line(slope,free_comp);

}

// returns the deviation between point p and the line equation of the points
float dev(Point p,Point** points, int size){
    Line linearRegLine = linear_reg(points, size);

    //p.y = true value of the point at x, f(x) = linearRegLine.f(p.x) = the value on the regression line at x.
    return fabs(p.y - linearRegLine.f(p.x));
}

// returns the deviation between point p and the line
float dev(Point p,Line l){
    //p.y = true value of the point at x, f(x) = l.f(p.x) = the value on the regression line at x.
    return fabs(p.y - l.f(p.x));

}




