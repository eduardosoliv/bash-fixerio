Fixer.io: Use fixer.io on the command line
========================================

Installation
------------

.. code-block:: bash

    $ git clone https://github.com/entering/bash-fixerio.git

Usage
-----

.. code-block:: bash

    $ ./fixerio --help
    ./fixerio: illegal option -- -
    Fixe.io for cli (http://fixer.io/)
    Usage: ./fixerio [-d <yyyy-mm-dd>] [-b <base currency>] [-s <symbols>] [-f <prettify|prettify-colorful|no>]
    -d <yyyy-mm-dd> If no date is specified the latest foreign exchange rates will be fetched
    -b <base currency> Rates are quoted against the EUR by default
    -s <symbols> Specific exchange rates by setting the symbols, eg: -s USD,GBP
    -f <prettify|prettify-colorful|no> Default is no
    prettify: will output the JSON formatted
    prettify-colorful: will display color if the output is terminal
    no: will output the json without any formatting
