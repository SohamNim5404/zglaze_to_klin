@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Kiln Cycle Item'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_KILN_ITM
  as select from ztb_kiln_itm

  association to parent ZI_KILN_HDR as _Header
    on $projection.ParentUuid = _Header.Uuid

{
    key uuid                  as Uuid,

        parent_uuid           as ParentUuid,
        item_no               as ItemNo,
        kiln_material         as KilnMaterial,
        glazed_material       as GlazedMaterial,
        glazed_batch_no       as GlazedBatchNo,
        sss                   as Sss,
        kiln_serial_no        as KilnSerialNo,
        remarks               as Remarks,

        created_by            as CreatedBy,
        created_at            as CreatedAt,
        last_changed_by       as LastChangedBy,
        last_changed_at       as LastChangedAt,
        local_last_changed_at as LocalLastChangedAt,

        _Header
}
