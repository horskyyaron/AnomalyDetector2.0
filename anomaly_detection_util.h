
#ifndef ANOMALYDETECTORUTIL_H_
#define ANOMALYDETECTORUTIL_H_


float avg(float* x, int size);

// returns the variance of X and Y
float var(float* x, int size);

// returns the covariance of X and Y
float cov(float* x,  float* y, int size);


// returns the Pearson correlation coefficient of X and Y
float pearson(float* x, float* y, int size);

class Line{
public:
    //y=ax+b.
    float a,b;

    //default constructor.
    Line(): a(0),b(0) {}
    
    Line(float a, float b):a(a),b(b){}

    //calculates the value of y at the value x. y(x0) = a * x0 + b
    float f(float x){
        return a*x+b;
    }
};

class Point{
public:
    const float x,y;
    Point(float x, float y):x(x),y(y){}
};

// performs a linear regression and returns the line equation
Line linear_reg(Point** points, int size);

// returns the deviation between point p and the line equation of the points
float dev(Point p,Point** points, int size);

// returns the deviation between point p and the line
float dev(Point p,Line l);

#endif
