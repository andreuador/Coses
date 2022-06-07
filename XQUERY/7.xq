<Result>
<WirelessMouse>
{
  count(
    for $x in collection(ShippingOrders)//Item
    where $x/ProductName = "Wireless Mouse"
    return $x
  )
}
</WirelessMouse>
</Result>