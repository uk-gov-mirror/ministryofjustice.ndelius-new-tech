Feature: Offender summary - offender details

  Scenario: Delius user views offender who has a main address registered

    Given that the offender has the following data from json file "offender" in Delius
    When they navigate to the offender summary page
    And they expand the "Main address" content section
    Then the page should display the following by class name
      | qa-main-address-1 | 5 Sea View |
      | qa-main-address-2 | High Street, Nether Edge |
      | qa-main-address-3 | Sheffield |
      | qa-main-address-4 | Yorkshire |
      | qa-main-address-5 | S10 1EQ |

  Scenario: Delius user views offender who does not have a main address registered

    Given that the offender has the following data from json file "offenderMainAddressNotPresent" in Delius
    When they navigate to the offender summary page
    And they expand the "Main address" content section
    Then the page should display the following by class name
      | qa-main-address-none | No main address |

  Scenario: Delius user views offender who has a main address registered as no fixed abode

    Given that the offender has the following data from json file "offenderMainAddressNFA" in Delius
    When they navigate to the offender summary page
    And they expand the "Main address" content section
    Then the page should display the following by class name
      | qa-main-address-nfa | No fixed abode |
