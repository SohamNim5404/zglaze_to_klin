CLASS lhc_kilnheader DEFINITION
  INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS get_instance_authorizations
      FOR INSTANCE AUTHORIZATION
      IMPORTING keys
      REQUEST requested_authorizations FOR KilnHeader
      RESULT result.

ENDCLASS.


CLASS lhc_kilnheader IMPLEMENTATION.

  METHOD get_instance_authorizations.

    "Authorization logic will be added later

  ENDMETHOD.

ENDCLASS.
