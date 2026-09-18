@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Kiln Cycle Item'
@Metadata.allowExtensions: true

define view entity ZC_KILN_ITM
  as projection on ZI_KILN_ITM
{
    key Uuid,
        ParentUuid,
        ItemNo,
        KilnMaterial,
        GlazedMaterial,
        GlazedBatchNo,
        Sss,
        KilnSerialNo,
        Remarks,

        CreatedBy,
        CreatedAt,
        LastChangedBy,
        LastChangedAt,
        LocalLastChangedAt,

        /* Association */
        _Header : redirected to parent ZC_KILN_HDR
}
