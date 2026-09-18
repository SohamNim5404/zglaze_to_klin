@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Kiln Cycle Header'
@Metadata.ignorePropagatedAnnotations: true

define root view entity ZI_KILN_HDR
  as select from ztb_kiln_hdr

  composition [0..*] of ZI_KILN_ITM as _Items

{
    key uuid                  as Uuid,

        kiln_cycle            as KilnCycle,
        kiln_no               as KilnNo,
        loading_date          as LoadingDate,
        shift                 as Shift,
        loaded_by             as LoadedBy,
        cycle_status          as CycleStatus,
        number_of_items       as NumberOfItems,

        created_by            as CreatedBy,
        created_at            as CreatedAt,
        last_changed_by       as LastChangedBy,
        last_changed_at       as LastChangedAt,
        local_last_changed_at as LocalLastChangedAt,

        _Items
}
