#include "CoreSymbolication.h"
#include "CoreSymbolicationPrivate.h"

unsigned long long CSRangeMax(CSRange range) {
  return range.location + range.length;
}

CSRange CSRangeMake(unsigned long long location, unsigned long long length) {
  struct sCSRange range;
  range.location = location;
  range.length = length;
  return range;
}
