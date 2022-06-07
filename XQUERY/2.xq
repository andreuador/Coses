for $x in collection(ShippingOrders)//Items/Item/ProductName
where $x/../USPrice > 100
return <result>{$x}</result>