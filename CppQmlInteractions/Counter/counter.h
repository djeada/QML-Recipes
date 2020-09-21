#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>

class Counter: public QObject
{
    Q_OBJECT
public:
    Counter();

signals:
    void logsReady(int value);

public slots:
    void setValue(int v);
    void increment();
    void decrement();

private:
    int counterValue;
};
#endif // COUNTER_H
