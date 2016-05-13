# Comparison

| Параметр | TAP		| SubUnit	| JUnit |
| -------------	|:---------:| ---------:| ---------:|
| Human and Machine readable format		| Yes		| v1 - Yes, v2 - No		| Yes |
| Language independent	| Yes		| Yes		| Yes |
| Programming languages supported	| Perl, Python, PHP, Java, C, C++, C#, Lua, Shell, Ruby, Javascript, Pascal, PostgreSQL, Haskell, Lisp, Forth				 | Python, C, C++ and Shell | [C/C++, Fortran, Haskell, Perl, PHP, Python, Ruby](https://en.wikipedia.org/wiki/JUnit#Ports)
| Since				| 1988		| 2006		| [2000](http://c2.com/cgi/wiki?TenYearsOfTestDrivenDevelopment)?
| Grouping tests in some category/tag style | Proposal | Yes |
| Extensible						| Yes, YAML	| N/A?		| N/A?
| Documentation						 | [Good, but old](http://testanything.org/tap-version-13-specification.html). | Few examples, blogs or Wikis for beginners. |
| Yes, an enormous number of modules in CPAN use it	| [CPAN](http://stats.cpantesters.org/) | [Samba](https://www.stationary-traveller.eu/262-subunit-usage-in-Samba.html), [Ubuntu](http://www.tech-foo.net/making-the-most-of-subunit.html) |
| Format specification				| Draft at IETF	| Information on [Python Package Index](https://pypi.python.org/pypi/python-subunit) | [XSD](https://svn.jenkins-ci.org/trunk/hudson/dtkit/dtkit-format/dtkit-junit-model/src/main/resources/com/thalesgroup/dtkit/junit/model/xsd/)
| Show time of tests | Yes, with YAML | Yes, natively | Yes, natively
| Use custom test status | No		| No		| No?
| Attach files to test result | Yes, Base64 encoded in YAML	| Yes, Base64 encoded in test output | Yes?

# Example of output

# Popularity

* https://testanything.org/producers.html
* TAP/JUnit https://en.wikipedia.org/wiki/List_of_unit_testing_frameworks
* [Usage in opensource projects](https://github.com/ligurio/recidive/wiki/Test-reporting-in-opensource-projects)

# Tools

## Editor supports

* VIM plugin TAP
* VIM plugin SubUnit
* VIM plugin JUnit

## Analysis and conversion

* Testlog - lingua franca in SQA
* Récidive - standalone service to care about your test results

# Community

* Reddit: /r/testanythingprotocol
* Twitter: #testanything, #junit format, #subunit format
* StackOverflow: #tap, #junit
