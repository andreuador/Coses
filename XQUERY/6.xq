let $item := collection(ShippingOrders)//Address[@Type="Billing"]
return
<html>
<body>
  <h1>Items billed</h1>
  <table>
    <tr>
      <th>Customer</th>
      <th>Street</th>
      <th>City</th>
      <th>State</th>
      <th>Total Price</th>
    </tr>
    {
      for $x in $item
      let $price := sum($item/../Items/Item/USPrice)
      return
      <tr>
        <td>{data($x/Name)}</td>
        <td>{data($x/Street)}</td>
        <td>{data($x/City)}</td>
        <td>{data($x/State)}</td>
        <td>{$price}</td>
      </tr>
    }
  </table>
</body>
</html>