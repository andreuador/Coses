for $x in collection(ShippingOrders)//PurchaseOrder/[@PurchaseOrderNumber]
let $totalprice := collection(ShippingOrders)//PurchaseOrder
where sum($totalprice/Items/Item/USPrice)
order by $x ascending
return 
  <Result>
    <Shipped PurchaseOrderNumber = "{$x}" Price = "{sum($totalprice/Items/Item/USPrice)}" />
  </Result>