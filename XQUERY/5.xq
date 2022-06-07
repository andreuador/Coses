let $item := collection(ShippingOrders)//Item
return
<html>
<body>
  <h1>Items Shipped</h1>
  <table>
    <tr>
      <th>Name</th>
      <th>Quantity</th>
      <th>Price</th>
      <th>Total Price</th>
    </tr>
    {
      for $x in $item
      let $total := sum($item/USPrice)
      return
      <tr>
        <td>{data($x/ProductName)}</td>
        <td>{data($x/Quantity)}</td>
        <td>{data($x/USPrice)}</td>
        <td>{data($total)}</td>
      </tr>
    }
  </table>
</body>
</html>