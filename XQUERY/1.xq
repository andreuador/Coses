for $x in collection(ShippingOrders)//PurchaseOrder/Address[@Type = "Shipping"]
order by $x/@OrderDate
return $x