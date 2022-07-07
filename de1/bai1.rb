



params = Hash[
    "supplier": {
        "name": "Test lay param",
        "tax_number": "0110254854",
        "address": "Tokyo",
        "supplier_type": "personal",
        "bank_accounts": {
            "0": {
                "account": 847445,
                "branch_name": "VCB",
            },
            "1": {
                "account": 985784,
                "branch_name": "ACB",
                "_destroy": false
            }
        }
    }
]

# p params

# a) print out branch_name of bank_accounts has key = 1
p params[:supplier][:bank_accounts][:"1"][:branch_name]

# b) add type prop 

params[:type] = "personal"

p params


