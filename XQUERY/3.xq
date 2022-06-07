for $x in collection(ShippingOrders)//PurchaseOrder
where $x/Address[@Type = "Shipping"]/State = "NY"
return <result>{$x}</result>