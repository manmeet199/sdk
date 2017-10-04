// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/*element: main:[null]*/
main() {
  zero();
  one();
  half();
  zeroPointZero();
  onePointZero();
  large();
  huge();
  minusOne();
  minusHalf();

  emptyString();
  nonEmptyString();
  stringJuxtaposition();
  stringConstantInterpolation();
  stringNonConstantInterpolation();

  symbolLiteral();
  typeLiteral();
}

////////////////////////////////////////////////////////////////////////////////
/// Return a zero integer literal.
////////////////////////////////////////////////////////////////////////////////

/*element: zero:[exact=JSUInt31]*/
zero() => 0;

////////////////////////////////////////////////////////////////////////////////
/// Return a positive integer literal.
////////////////////////////////////////////////////////////////////////////////

/*element: one:[exact=JSUInt31]*/
one() => 1;

////////////////////////////////////////////////////////////////////////////////
/// Return a double literal.
////////////////////////////////////////////////////////////////////////////////

/*element: half:[exact=JSDouble]*/
half() => 0.5;

////////////////////////////////////////////////////////////////////////////////
/// Return an integer valued zero double literal.
////////////////////////////////////////////////////////////////////////////////

/*element: zeroPointZero:[exact=JSUInt31]*/
zeroPointZero() => 0.0;

////////////////////////////////////////////////////////////////////////////////
/// Return an integer valued double literal.
////////////////////////////////////////////////////////////////////////////////

/*element: onePointZero:[exact=JSUInt31]*/
onePointZero() => 1.0;

////////////////////////////////////////////////////////////////////////////////
/// Return a >31bit integer literal.
////////////////////////////////////////////////////////////////////////////////

/*element: large:[subclass=JSUInt32]*/
large() => 2147483648;

////////////////////////////////////////////////////////////////////////////////
/// Return a >32bit integer literal.
////////////////////////////////////////////////////////////////////////////////

/*element: huge:[subclass=JSPositiveInt]*/
huge() => 4294967296;

////////////////////////////////////////////////////////////////////////////////
/// Return a negative integer literal.
////////////////////////////////////////////////////////////////////////////////

/*element: minusOne:[subclass=JSInt]*/
minusOne() => /*invoke: [exact=JSUInt31]*/ -1;

////////////////////////////////////////////////////////////////////////////////
/// Return a negative double literal.
////////////////////////////////////////////////////////////////////////////////

/*element: minusHalf:[subclass=JSNumber]*/
minusHalf() => /*invoke: [exact=JSDouble]*/ -0.5;

////////////////////////////////////////////////////////////////////////////////
/// Return an empty string.
////////////////////////////////////////////////////////////////////////////////

/*element: emptyString:Value mask: [""] type: [exact=JSString]*/
emptyString() => '';

////////////////////////////////////////////////////////////////////////////////
/// Return a non-empty string.
////////////////////////////////////////////////////////////////////////////////

/*element: nonEmptyString:Value mask: ["foo"] type: [exact=JSString]*/
nonEmptyString() => 'foo';

////////////////////////////////////////////////////////////////////////////////
/// Return a string juxtaposition.
////////////////////////////////////////////////////////////////////////////////

/*element: stringJuxtaposition:[exact=JSString]*/
stringJuxtaposition() => 'foo' 'bar';

////////////////////////////////////////////////////////////////////////////////
/// Return a string constant interpolation.
////////////////////////////////////////////////////////////////////////////////

/*element: stringConstantInterpolation:[exact=JSString]*/
stringConstantInterpolation() => 'foo${'bar'}';

////////////////////////////////////////////////////////////////////////////////
/// Return a string non-constant interpolation.
////////////////////////////////////////////////////////////////////////////////

/*element: _method1:[exact=JSBool]*/
_method1(/*[exact=JSBool]*/ c) => c;

/*element: stringNonConstantInterpolation:[exact=JSString]*/
stringNonConstantInterpolation() => 'foo${_method1(true)}${_method1(false)}';

////////////////////////////////////////////////////////////////////////////////
/// Return a symbol literal.
////////////////////////////////////////////////////////////////////////////////

/*element: symbolLiteral:[exact=Symbol]*/
symbolLiteral() => #main;

////////////////////////////////////////////////////////////////////////////////
/// Return a type literal.
////////////////////////////////////////////////////////////////////////////////

/*element: typeLiteral:[exact=TypeImpl]*/
typeLiteral() => Object;
