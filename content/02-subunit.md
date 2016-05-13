## SubUnit

SubUnit is a streaming protocol for test results. It allows communication
between unit tests and a test harness. Originally developed for unit testing in
2005 by Robert Collins. Subunit comes with command line filters to process a
SubUnit stream and language bindings for Python, C, C++ and Shell.

Subunit is a streaming protocol for test results. The protocol is a binary
encoding that is easily generated and parsed. By design all the components of
the protocol conceptually fit into the xUnit TestCase->TestResult interaction.

A number of useful things can be done easily with subunit:

* Test aggregation: Tests run separately can be combined and then
  reported/displayed together. For instance, tests from different languages
  can be shown as a seamless whole.
* Test archiving: A test run may be recorded and replayed later.
* Test isolation: Tests that may crash or otherwise interact badly with each
  other can be run seperately and then aggregated, rather than interfering
  with each other.
* Grid testing: subunit can act as the necessary serialisation and
  deserialiation to get test runs on distributed machines to be reported in
  real time.

* [Description](https://github.com/testing-cabal/subunit)
* [Wikipedia](https://en.wikipedia.org/wiki/Subunit_(format))
* [Website](https://launchpad.net/subunit)
