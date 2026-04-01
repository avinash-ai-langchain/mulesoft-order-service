%dw 2.0
output application/json
---
{
  orderId: payload.id,
  // ❌ BUG: Missing default value
  customerName: payload.customer.name,
  items: payload.items map {
    productId: $.productId,
    quantity: $.quantity
  }
}