#include "ember.h"

VALUE rb_mEmber;

void
Init_ember(void)
{
  rb_mEmber = rb_define_module("Ember");
}
