# --
# Copyright (C) 2001-2016 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;

use vars qw( $Self );

    # CustomerCompany
    # (customer company database backend and custom settings)
    $Self->{CustomerCompany} = {
        Params => {
            Table => 'customer_company',
        },

        CustomerCompanyKey             => 'customer_id',
        CustomerCompanyValid           => 'valid_id',
        CustomerCompanyListFields      => [ 'customer_id', 'name' ],
        CustomerCompanySearchFields    => [ 'customer_id', 'name', 'city' ],
        CustomerCompanySearchPrefix    => '',
        CustomerCompanySearchSuffix    => '*',
        CustomerCompanySearchListLimit => 250,
        Map                            => [

            # var, frontend, storage, shown (1=always,2=lite), required, storage-type, http-link, readonly
            [ 'CustomerID',           'Customer ID',  'customer_id',   0, 1, 'var', '', 0 ],
            [ 'CustomerCompanyName',  'Company Name', 'name',          1, 1, 'var',
              'index.pl?Action=AdminCustomerCompany;Subaction=Change;CustomerID=[% Data.CustomerID | uri %];'
              , 0
            ],
            [ 'UserCompanyBranch',    'Industry',     'branch',        1, 1, 'var' ],
            [ 'UserCompanyEmployees', 'Employees',    'employees',     1, 0, 'var' ],
            [ 'UserCompanyStreet',    'Street',       'street',        1, 0, 'var' ],
            [ 'UserCompanyZip',       'Zip Code',     'postal',        1, 0, 'var' ],
            [ 'UserCompanyCity',      'City',         'city',          1, 0, 'var' ],
            [ 'UserCompanyState',     'Province',     'province',      1, 0, 'var' ],
            [ 'UserCompanyCountry',   'Country',      'country',       1, 0, 'var' ],
            [ 'UserCompanyPOBox',     'P.O. Box',     'po_box',        1, 0, 'var' ],
            [ 'UserCompanyPOBoxZip',  'P.O. Box Zip', 'po_box_postal', 1, 0, 'var' ],
            [ 'UserCompanyVAT',       'VAT Tax ID',   'taxid',         1, 0, 'var' ],
            [ 'UserCompanyDebitor',   'Debitor',      'debitor',       1, 0, 'var' ],
            [ 'CustomerCompanyOCS',   'OCS Web Link', 'comments',      1, 0, 'var',
                'https://wiki.otrs.com/twiki/bin/view/OCS/[% Data.CustomerCompanyOCS | uri %]',
                0, '_new'
            ],
            [ 'UserSalesRep',            'Sales Rep', 'salesrep',      1, 0, 'var' ],
            [ 'ValidID',                 'Valid',     'valid_id',      0, 1, 'int', '', 0 ],
            [ 'UserCompanySetupComment', 'Comment',   'setup_comment', 1, 0, 'var' ],
        ],

        # default selections
        Selections => {
            UserCompanyCountry => {
                ''                                             => '-',
                'AFGHANISTAN'                                  => 'AFGHANISTAN',
                'ALBANIA'                                      => 'ALBANIA',
                'ALGERIA'                                      => 'ALGERIA',
                'AMERICAN SAMOA'                               => 'AMERICAN SAMOA',
                'ANDORRA'                                      => 'ANDORRA',
                'ANGOLA'                                       => 'ANGOLA',
                'ANGUILLA'                                     => 'ANGUILLA',
                'ANTARCTICA'                                   => 'ANTARCTICA',
                'ANTIGUA AND BARBUDA'                          => 'ANTIGUA AND BARBUDA',
                'ARGENTINA'                                    => 'ARGENTINA',
                'ARMENIA'                                      => 'ARMENIA',
                'ARUBA'                                        => 'ARUBA',
                'AUSTRALIA'                                    => 'AUSTRALIA',
                'AUSTRIA'                                      => 'AUSTRIA',
                'AZERBAIJAN'                                   => 'AZERBAIJAN',
                'BAHAMAS'                                      => 'BAHAMAS',
                'BAHRAIN'                                      => 'BAHRAIN',
                'BANGLADESH'                                   => 'BANGLADESH',
                'BARBADOS'                                     => 'BARBADOS',
                'BELARUS'                                      => 'BELARUS',
                'BELGIUM'                                      => 'BELGIUM',
                'BELIZE'                                       => 'BELIZE',
                'BENIN'                                        => 'BENIN',
                'BERMUDA'                                      => 'BERMUDA',
                'BHUTAN'                                       => 'BHUTAN',
                'BOLIVIA'                                      => 'BOLIVIA',
                'BOSNIA AND HERZEGOWINA'                       => 'BOSNIA AND HERZEGOWINA',
                'BOTSWANA'                                     => 'BOTSWANA',
                'BOUVET ISLAND'                                => 'BOUVET ISLAND',
                'BRAZIL'                                       => 'BRAZIL',
                'BRITISH INDIAN OCEAN TERRITORY'               => 'BRITISH INDIAN OCEAN TERRITORY',
                'BRUNEI DARUSSALAM'                            => 'BRUNEI DARUSSALAM',
                'BULGARIA'                                     => 'BULGARIA',
                'BURKINA FASO'                                 => 'BURKINA FASO',
                'BURUNDI'                                      => 'BURUNDI',
                'CAMBODIA'                                     => 'CAMBODIA',
                'CAMEROON'                                     => 'CAMEROON',
                'CANADA'                                       => 'CANADA',
                'CAPE VERDE'                                   => 'CAPE VERDE',
                'CAYMAN ISLANDS'                               => 'CAYMAN ISLANDS',
                'CENTRAL AFRICAN REPUBLIC'                     => 'CENTRAL AFRICAN REPUBLIC',
                'CHAD'                                         => 'CHAD',
                'CHILE'                                        => 'CHILE',
                'CHINA'                                        => 'CHINA',
                'CHRISTMAS ISLAND'                             => 'CHRISTMAS ISLAND',
                'COCOS (KEELING) ISLANDS'                      => 'COCOS (KEELING) ISLANDS',
                'COLOMBIA'                                     => 'COLOMBIA',
                'COMOROS'                                      => 'COMOROS',
                'CONGO, Democratic Republic of (was Zaire)'    => 'CONGO, Democratic Republic of (was Zaire)',
                'CONGO, Republic of'                           => 'CONGO, Republic of',
                'COOK ISLANDS'                                 => 'COOK ISLANDS',
                'COSTA RICA'                                   => 'COSTA RICA',
                'COTE D\'IVOIRE'                               => 'COTE D\'IVOIRE',
                'CROATIA (local name: Hrvatska)'               => 'CROATIA (local name: Hrvatska)',
                'CUBA'                                         => 'CUBA',
                'CYPRUS'                                       => 'CYPRUS',
                'CZECH REPUBLIC'                               => 'CZECH REPUBLIC',
                'DENMARK'                                      => 'DENMARK',
                'DJIBOUTI'                                     => 'DJIBOUTI',
                'DOMINICA'                                     => 'DOMINICA',
                'DOMINICAN REPUBLIC'                           => 'DOMINICAN REPUBLIC',
                'ECUADOR'                                      => 'ECUADOR',
                'EGYPT'                                        => 'EGYPT',
                'EL SALVADOR'                                  => 'EL SALVADOR',
                'EQUATORIAL GUINEA'                            => 'EQUATORIAL GUINEA',
                'ERITREA'                                      => 'ERITREA',
                'ESTONIA'                                      => 'ESTONIA',
                'ETHIOPIA'                                     => 'ETHIOPIA',
                'FALKLAND ISLANDS (MALVINAS)'                  => 'FALKLAND ISLANDS (MALVINAS)',
                'FAROE ISLANDS'                                => 'FAROE ISLANDS',
                'FIJI'                                         => 'FIJI',
                'FINLAND'                                      => 'FINLAND',
                'FRANCE'                                       => 'FRANCE',
                'FRENCH GUIANA'                                => 'FRENCH GUIANA',
                'FRENCH POLYNESIA'                             => 'FRENCH POLYNESIA',
                'FRENCH SOUTHERN TERRITORIES'                  => 'FRENCH SOUTHERN TERRITORIES',
                'GABON'                                        => 'GABON',
                'GAMBIA'                                       => 'GAMBIA',
                'GEORGIA'                                      => 'GEORGIA',
                'GERMANY'                                      => 'GERMANY',
                'GHANA'                                        => 'GHANA',
                'GIBRALTAR'                                    => 'GIBRALTAR',
                'GREECE'                                       => 'GREECE',
                'GREENLAND'                                    => 'GREENLAND',
                'GRENADA'                                      => 'GRENADA',
                'GUADELOUPE'                                   => 'GUADELOUPE',
                'GUAM'                                         => 'GUAM',
                'GUATEMALA'                                    => 'GUATEMALA',
                'GUINEA'                                       => 'GUINEA',
                'GUINEA-BISSAU'                                => 'GUINEA-BISSAU',
                'GUYANA'                                       => 'GUYANA',
                'HAITI'                                        => 'HAITI',
                'HEARD AND MC DONALD ISLANDS'                  => 'HEARD AND MC DONALD ISLANDS',
                'HONDURAS'                                     => 'HONDURAS',
                'HONG KONG'                                    => 'HONG KONG',
                'HUNGARY'                                      => 'HUNGARY',
                'ICELAND'                                      => 'ICELAND',
                'INDIA'                                        => 'INDIA',
                'INDONESIA'                                    => 'INDONESIA',
                'IRAN (ISLAMIC REPUBLIC OF)'                   => 'IRAN (ISLAMIC REPUBLIC OF)',
                'IRAQ'                                         => 'IRAQ',
                'IRELAND'                                      => 'IRELAND',
                'ISRAEL'                                       => 'ISRAEL',
                'ITALY'                                        => 'ITALY',
                'JAMAICA'                                      => 'JAMAICA',
                'JAPAN'                                        => 'JAPAN',
                'JORDAN'                                       => 'JORDAN',
                'KAZAKHSTAN'                                   => 'KAZAKHSTAN',
                'KENYA'                                        => 'KENYA',
                'KIRIBATI'                                     => 'KIRIBATI',
                'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF'      => 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF',
                'KOREA, REPUBLIC OF'                           => 'KOREA, REPUBLIC OF',
                'KOSOVO'                                       => 'KOSOVO',
                'KUWAIT'                                       => 'KUWAIT',
                'KYRGYZSTAN'                                   => 'KYRGYZSTAN',
                'LAO PEOPLE\'S DEMOCRATIC REPUBLIC'            => 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC',
                'LATVIA'                                       => 'LATVIA',
                'LEBANON'                                      => 'LEBANON',
                'LESOTHO'                                      => 'LESOTHO',
                'LIBERIA'                                      => 'LIBERIA',
                'LIBYAN ARAB JAMAHIRIYA'                       => 'LIBYAN ARAB JAMAHIRIYA',
                'LIECHTENSTEIN'                                => 'LIECHTENSTEIN',
                'LITHUANIA'                                    => 'LITHUANIA',
                'LUXEMBOURG'                                   => 'LUXEMBOURG',
                'MACAU'                                        => 'MACAU',
                'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF'   => 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF',
                'MADAGASCAR'                                   => 'MADAGASCAR',
                'MALAWI'                                       => 'MALAWI',
                'MALAYSIA'                                     => 'MALAYSIA',
                'MALDIVES'                                     => 'MALDIVES',
                'MALI'                                         => 'MALI',
                'MALTA'                                        => 'MALTA',
                'MARSHALL ISLANDS'                             => 'MARSHALL ISLANDS',
                'MARTINIQUE'                                   => 'MARTINIQUE',
                'MAURITANIA'                                   => 'MAURITANIA',
                'MAURITIUS'                                    => 'MAURITIUS',
                'MAYOTTE'                                      => 'MAYOTTE',
                'MEXICO'                                       => 'MEXICO',
                'MICRONESIA, FEDERATED STATES OF'              => 'MICRONESIA, FEDERATED STATES OF',
                'MOLDOVA, REPUBLIC OF'                         => 'MOLDOVA, REPUBLIC OF',
                'MONACO'                                       => 'MONACO',
                'MONGOLIA'                                     => 'MONGOLIA',
                'MONTSERRAT'                                   => 'MONTSERRAT',
                'MOROCCO'                                      => 'MOROCCO',
                'MOZAMBIQUE'                                   => 'MOZAMBIQUE',
                'MYANMAR'                                      => 'MYANMAR',
                'NAMIBIA'                                      => 'NAMIBIA',
                'NAURU'                                        => 'NAURU',
                'NEPAL'                                        => 'NEPAL',
                'NETHERLANDS'                                  => 'NETHERLANDS',
                'NETHERLANDS ANTILLES'                         => 'NETHERLANDS ANTILLES',
                'NEW CALEDONIA'                                => 'NEW CALEDONIA',
                'NEW ZEALAND'                                  => 'NEW ZEALAND',
                'NICARAGUA'                                    => 'NICARAGUA',
                'NIGER'                                        => 'NIGER',
                'NIGERIA'                                      => 'NIGERIA',
                'NIUE'                                         => 'NIUE',
                'NORFOLK ISLAND'                               => 'NORFOLK ISLAND',
                'NORTHERN MARIANA ISLANDS'                     => 'NORTHERN MARIANA ISLANDS',
                'NORWAY'                                       => 'NORWAY',
                'OMAN'                                         => 'OMAN',
                'PAKISTAN'                                     => 'PAKISTAN',
                'PALAU'                                        => 'PALAU',
                'PALESTINIAN TERRITORY, Occupied'              => 'PALESTINIAN TERRITORY, Occupied',
                'PANAMA'                                       => 'PANAMA',
                'PAPUA NEW GUINEA'                             => 'PAPUA NEW GUINEA',
                'PARAGUAY'                                     => 'PARAGUAY',
                'PERU'                                         => 'PERU',
                'PHILIPPINES'                                  => 'PHILIPPINES',
                'PITCAIRN'                                     => 'PITCAIRN',
                'POLAND'                                       => 'POLAND',
                'PORTUGAL'                                     => 'PORTUGAL',
                'PUERTO RICO'                                  => 'PUERTO RICO',
                'QATAR'                                        => 'QATAR',
                'REUNION'                                      => 'REUNION',
                'ROMANIA'                                      => 'ROMANIA',
                'RUSSIAN FEDERATION'                           => 'RUSSIAN FEDERATION',
                'RWANDA'                                       => 'RWANDA',
                'SAINT HELENA'                                 => 'SAINT HELENA',
                'SAINT KITTS AND NEVIS'                        => 'SAINT KITTS AND NEVIS',
                'SAINT LUCIA'                                  => 'SAINT LUCIA',
                'SAINT PIERRE AND MIQUELON'                    => 'SAINT PIERRE AND MIQUELON',
                'SAINT VINCENT AND THE GRENADINES'             => 'SAINT VINCENT AND THE GRENADINES',
                'SAMOA'                                        => 'SAMOA',
                'SAN MARINO'                                   => 'SAN MARINO',
                'SAO TOME AND PRINCIPE'                        => 'SAO TOME AND PRINCIPE',
                'SAUDI ARABIA'                                 => 'SAUDI ARABIA',
                'SENEGAL'                                      => 'SENEGAL',
                'SERBIA'                                       => 'SERBIA',
                'SEYCHELLES'                                   => 'SEYCHELLES',
                'SIERRA LEONE'                                 => 'SIERRA LEONE',
                'SINGAPORE'                                    => 'SINGAPORE',
                'SLOVAKIA'                                     => 'SLOVAKIA',
                'SLOVENIA'                                     => 'SLOVENIA',
                'SOLOMON ISLANDS'                              => 'SOLOMON ISLANDS',
                'SOMALIA'                                      => 'SOMALIA',
                'SOUTH AFRICA'                                 => 'SOUTH AFRICA',
                'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS' => 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS',
                'SPAIN'                                        => 'SPAIN',
                'SRI LANKA'                                    => 'SRI LANKA',
                'SUDAN'                                        => 'SUDAN',
                'SURINAME'                                     => 'SURINAME',
                'SVALBARD AND JAN MAYEN ISLANDS'               => 'SVALBARD AND JAN MAYEN ISLANDS',
                'SWAZILAND'                                    => 'SWAZILAND',
                'SWEDEN'                                       => 'SWEDEN',
                'SWITZERLAND'                                  => 'SWITZERLAND',
                'SYRIAN ARAB REPUBLIC'                         => 'SYRIAN ARAB REPUBLIC',
                'TAIWAN'                                       => 'TAIWAN',
                'TAJIKISTAN'                                   => 'TAJIKISTAN',
                'TANZANIA, UNITED REPUBLIC OF'                 => 'TANZANIA, UNITED REPUBLIC OF',
                'THAILAND'                                     => 'THAILAND',
                'TIMOR-LESTE'                                  => 'TIMOR-LESTE',
                'TOGO'                                         => 'TOGO',
                'TOKELAU'                                      => 'TOKELAU',
                'TONGA'                                        => 'TONGA',
                'TRINIDAD AND TOBAGO'                          => 'TRINIDAD AND TOBAGO',
                'TUNISIA'                                      => 'TUNISIA',
                'TURKEY'                                       => 'TURKEY',
                'TURKMENISTAN'                                 => 'TURKMENISTAN',
                'TURKS AND CAICOS ISLANDS'                     => 'TURKS AND CAICOS ISLANDS',
                'TUVALU'                                       => 'TUVALU',
                'UGANDA'                                       => 'UGANDA',
                'UKRAINE'                                      => 'UKRAINE',
                'UNITED ARAB EMIRATES'                         => 'UNITED ARAB EMIRATES',
                'UNITED KINGDOM'                               => 'UNITED KINGDOM',
                'UNITED STATES'                                => 'UNITED STATES',
                'UNITED STATES MINOR OUTLYING ISLANDS'         => 'UNITED STATES MINOR OUTLYING ISLANDS',
                'URUGUAY'                                      => 'URUGUAY',
                'UZBEKISTAN'                                   => 'UZBEKISTAN',
                'VANUATU'                                      => 'VANUATU',
                'VATICAN CITY STATE (HOLY SEE)'                => 'VATICAN CITY STATE (HOLY SEE)',
                'VENEZUELA'                                    => 'VENEZUELA',
                'VIET NAM'                                     => 'VIET NAM',
                'VIRGIN ISLANDS (BRITISH)'                     => 'VIRGIN ISLANDS (BRITISH)',
                'VIRGIN ISLANDS (U.S.)'                        => 'VIRGIN ISLANDS (U.S.)',
                'WALLIS AND FUTUNA ISLANDS'                    => 'WALLIS AND FUTUNA ISLANDS',
                'WESTERN SAHARA'                               => 'WESTERN SAHARA',
                'YEMEN'                                        => 'YEMEN',
                'ZAMBIA'                                       => 'ZAMBIA',
                'ZIMBABWE'                                     => 'ZIMBABWE',
                'LETTLAND'                                     => 'LETTLAND',
            },

            UserCompanyBranch => {
                ''                           => '-',
                'Apparel'                    => 'Apparel',
                'Biotechnology'              => 'Biotechnology',
                'Chemical & Pharmaceutical'  => 'Chemical & Pharmaceutical',
                'Communications'             => 'Communications',
                'Construction'               => 'Construction',
                'Consulting'                 => 'Consulting',
                'Cyber Security'             => 'Cyber Security',
                'Education'                  => 'Education',
                'Electronics'                => 'Electronics',
                'Energy'                     => 'Energy',
                'Engineering'                => 'Engineering',
                'Entertainment'              => 'Entertainment',
                'Environmental'              => 'Environmental',
                'Finance'                    => 'Finance',
                'Government'                 => 'Government',
                'Healthcare'                 => 'Healthcare',
                'Hospitality'                => 'Hospitality',
                'Insurance'                  => 'Insurance',
                'Machinery'                  => 'Machinery',
                'Manufacturing'              => 'Manufacturing',
                'Media'                      => 'Media',
                'Not for Profit'             => 'Not for Profit',
                'Other'                      => 'Other',
                'Recreation'                 => 'Recreation',
                'Research'                   => 'Research',
                'Retail'                     => 'Retail',
                'Shipping'                   => 'Shipping',
                'Technology'                 => 'Technology',
                'Telecommunications'         => 'Telecommunications',
                'Transportation'             => 'Transportation',
                'Utilities'                  => 'Utilities',
                'Airlines & Tourism'         => 'Airlines & Tourism',
                'Automotive'                 => 'Automotive',
                'Food & Beverages'           => 'Food & Beverages',
                'IT & Technology-Consulting' => 'IT & Technology-Consulting',
                'IT & Telecommunication'     => 'IT & Telecommunication',
                'Space & Defense'            => 'Space & Defense',
            },

            UserCompanyEmployees => {
                ''                            => '-',
                '1. 1 - 5 employees'          => '1. 1 - 5 employees',
                '2. 6 - 10 employees'         => '2. 6 - 10 employees',
                '3. 11 - 50 employees'        => '3. 11 - 50 employees',
                '4. 51 - 200 employees'       => '4. 51 - 200 employees',
                '5. 201 - 500 employees'      => '5. 201 - 500 employees',
                '6. 501 - 1000 employees'     => '6. 501 - 1000 employees',
                '7. 1001 - 2000 employees'    => '7. 1001 - 2000 employees',
                '8. 2001 - 5000 employees'    => '8. 2001 - 5000 employees',
                '9. more than 5000 employees' => '9. more than 5000 employees',
            },
            UserSalesRep => {
                ''                    => '-',
                'Jesus Neumann'       => 'Jesus Neumann',
                'Patrick Wilmes'      => 'Patrick Wilmes',
                'Matt McIntosh'       => 'Matt McIntosh',
                'Matheus Assis Baeta' => 'Matheus Assis Baeta',
                'Rene Bakker'         => 'Rene Bakker',
                'Ryan Fok'            => 'Ryan Fok',
                'Simon Guerster'      => 'Simon Guerster',
                'WK Tang'             => 'WK Tang',

            },
        },
    };

1;

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (L<http://otrs.org/>).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see L<http://www.gnu.org/licenses/agpl.txt>.

=cut
