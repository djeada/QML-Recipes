#include "counter.h"

Counter::Counter() :
    counterValue(0){
}

void Counter::setValue(int v) {
    counterValue = v;
    emit logsReady(v);
}

void Counter::increment() {
    emit logsReady(++counterValue);
}

void Counter::decrement() {
    emit logsReady(--counterValue);
}
