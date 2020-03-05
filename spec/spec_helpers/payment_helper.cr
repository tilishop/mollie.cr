def get_payment_json
  %({
    "resource":"payment",
    "id":"tr_7UhSN1zuXS",
    "mode":"test",
    "createdAt": "2018-03-20T09:13:37+00:00",
    "amount": {
      "value": "10.00",
      "currency": "EUR"
    },
    "description": "My first payment",
    "method": "ideal",
    "countryCode": "NL",
    "metadata": {
      "order_id": "12345"
    },
    "details": {
      "consumerName": "Hr E G H K\u00fcppers en\/of MW M.J. K\u00fcppers-Veeneman",
      "consumerAccount": "NL53INGB0618365937",
      "consumerBic": "INGBNL2A"
    },
    "status": "paid",
    "authorizedAt": "2018-03-19T09:14:37+00:00",
    "paidAt": "2018-03-20T09:14:37+00:00",
    "isCancelable": false,
    "expiresAt": "2018-03-20T09:28:37+00:00",
    "locale": "nl_NL",
    "profileId": "pfl_QkEhN94Ba",
    "sequenceType": "oneoff",
    "redirectUrl": "https://webshop.example.org/order/12345",
    "webhookUrl": "https://webshop.example.org/payments/webhook",
    "_links": {
      "self": {
        "href": "https://api.mollie.com/v2/payments/tr_7UhSN1zuXS",
        "type": "application/json"
      },
      "checkout": {
        "href": "https://www.mollie.com/payscreen/select-method/7UhSN1zuXS",
        "type": "text/html"
      },
      "settlement": {
        "href": "https://webshop.example.org/payment/tr_WDqYK6vllg/settlement"
      },
      "refunds": {
        "href": "https://webshop.example.org/payment/tr_WDqYK6vllg/refunds",
        "type": "text/html"
      }
    }
  })
end

def get_complete_payment_json
  %({
    "resource":"payment",
    "id":"tr_7UhSN1zuXS",
    "mode":"test",
    "createdAt": "2018-03-20T09:13:37+00:00",
    "amount": {
      "value": "10.00",
      "currency": "EUR"
    },
    "description": "My first payment",
    "method": "ideal",
    "countryCode": "NL",
    "metadata": {
      "order_id": "12345"
    },
    "details": {
      "consumerName": "Hr E G H K\u00fcppers en\/of MW M.J. K\u00fcppers-Veeneman",
      "consumerAccount": "NL53INGB0618365937",
      "consumerBic": "INGBNL2A"
    },
    "status": "paid",
    "authorizedAt": "2018-03-19T09:14:37+00:00",
    "paidAt": "2018-03-20T09:14:37+00:00",
    "isCancelable": false,
    "expiresAt": "2018-03-20T09:28:37+00:00",
    "locale": "nl_NL",
    "profileId": "pfl_QkEhN94Ba",
    "sequenceType": "oneoff",
    "redirectUrl": "https://webshop.example.org/order/12345",
    "webhookUrl": "https://webshop.example.org/payments/webhook",
    "applicationFee": {
      "amount": {
        "value": "42.10",
        "currency": "EUR"
      },
      "description": "Example application fee"
    },
    "_links": {
      "self": {
        "href": "https://api.mollie.com/v2/payments/tr_7UhSN1zuXS",
        "type": "application/json"
      },
      "checkout": {
        "href": "https://www.mollie.com/payscreen/select-method/7UhSN1zuXS",
        "type": "text/html"
      },
      "settlement": {
        "href": "https://webshop.example.org/payment/tr_WDqYK6vllg/settlement"
      },
      "refunds": {
        "href": "https://webshop.example.org/payment/tr_WDqYK6vllg/refunds",
        "type": "text/html"
      }
    }
  })
end

def get_refunded_payment_json
  %({
    "resource":"payment",
    "id":"tr_7UhSN1zuXS",
    "mode":"test",
    "createdAt": "2018-03-20T09:13:37+00:00",
    "amount": {
      "value": "10.00",
      "currency": "EUR"
    },
    "amountRefunded": {
      "value": "0.01",
      "currency": "EUR"
    },
    "description": "My first payment",
    "method": "ideal",
    "countryCode": "NL",
    "metadata": {
      "order_id": "12345"
    },
    "status": "paid",
    "authorizedAt": "2018-03-19T09:14:37+00:00",
    "paidAt": "2018-03-20T09:14:37+00:00",
    "isCancelable": false,
    "expiresAt": "2018-03-20T09:28:37+00:00",
    "locale": "nl_NL",
    "profileId": "pfl_QkEhN94Ba",
    "sequenceType": "oneoff",
    "redirectUrl": "https://webshop.example.org/order/12345",
    "webhookUrl": "https://webshop.example.org/payments/webhook"
  })
end

def get_zero_refunded_payment_json
  %({
    "resource":"payment",
    "id":"tr_7UhSN1zuXS",
    "mode":"test",
    "createdAt": "2018-03-20T09:13:37+00:00",
    "amount": {
      "value": "10.00",
      "currency": "EUR"
    },
    "amount_refunded": {
      "value": "0.00",
      "currency": "EUR"
    },
    "description": "My first payment",
    "method": "ideal",
    "countryCode": "NL",
    "metadata": {
      "order_id": "12345"
    },
    "status": "paid",
    "authorizedAt": "2018-03-19T09:14:37+00:00",
    "paidAt": "2018-03-20T09:14:37+00:00",
    "isCancelable": false,
    "expiresAt": "2018-03-20T09:28:37+00:00",
    "locale": "nl_NL",
    "profileId": "pfl_QkEhN94Ba",
    "sequenceType": "oneoff",
    "redirectUrl": "https://webshop.example.org/order/12345",
    "webhookUrl": "https://webshop.example.org/payments/webhook"
  })
end

def get_open_payment_json
  %({
    "resource":"payment",
    "id":"tr_7UhSN1zuXS",
    "mode":"test",
    "createdAt": "2018-03-20T09:13:37+00:00",
    "amount": {
      "value": "10.00",
      "currency": "EUR"
    },
    "description": "My first payment",
    "method": "ideal",
    "countryCode": "NL",
    "metadata": {
      "order_id": "12345"
    },
    "status": "open",
    "isCancelable": false,
    "expiresAt": "2018-03-20T09:28:37+00:00",
    "locale": "nl_NL",
    "profileId": "pfl_QkEhN94Ba",
    "sequenceType": "oneoff",
    "redirectUrl": "https://webshop.example.org/order/12345",
    "webhookUrl": "https://webshop.example.org/payments/webhook",
    "_links": {
      "self": {
        "href": "https://api.mollie.com/v2/payments/tr_7UhSN1zuXS",
        "type": "application/json"
      },
      "checkout": {
        "href": "https://www.mollie.com/payscreen/select-method/7UhSN1zuXS",
        "type": "text/html"
      },
      "settlement": {
        "href": "https://webshop.example.org/payment/tr_WDqYK6vllg/settlement"
      },
      "refunds": {
        "href": "https://webshop.example.org/payment/tr_WDqYK6vllg/refunds",
        "type": "text/html"
      }
    }
  })
end
