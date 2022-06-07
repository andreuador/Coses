for $x in collection(ShippingOrders)//PurchaseOrder[@PurchaseOrderNumber]

return 
<result>
  <Order>{$x}</Order>
</result>