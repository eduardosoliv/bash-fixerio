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

Get the latest foreign exchange reference rates in JSON format.

.. code-block:: bash

    $ ./fixerio
    {"base":"EUR","date":"2016-08-05","rates":{"AUD":1.4567,"BGN":1.9558,"BRL":3.5501,"CAD":1.4529,"CHF":1.0852,"CNY":7.411,"CZK":27.022,"DKK":7.4373,"GBP":0.8481,"HKD":8.6521,"HRK":7.4843,"HUF":310.62,"IDR":14617.71,"ILS":4.2633,"INR":74.4919,"JPY":112.73,"KRW":1237.73,"MXN":21.0282,"MYR":4.4927,"NOK":9.4022,"NZD":1.5473,"PHP":52.3,"PLN":4.2841,"RON":4.4622,"RUB":72.7967,"SEK":9.5043,"SGD":1.4953,"THB":38.848,"TRY":3.3471,"USD":1.1156,"ZAR":15.2536}}

Get the latest foreign exchange rates with USD as base currency and only for GBP and EUR.

.. code-block:: bash

    $ ./fixerio -b USD -s EUR,GBP
    {"base":"USD","date":"2016-08-05","rates":{"GBP":0.76022,"EUR":0.89638}}

Get the foreign exchange rates for 2016-04-27 with USD as base currency and only for GBP and EUR.

.. code-block:: bash

    $ ./fixerio -d 2016-04-27 -b USD -s EUR,GBP
    {"base":"USD","date":"2016-04-27","rates":{"GBP":0.68544,"EUR":0.88472}}
