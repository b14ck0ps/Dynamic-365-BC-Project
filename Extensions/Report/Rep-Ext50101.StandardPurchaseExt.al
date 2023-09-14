reportextension 50101 "Standard Purchase Order Ext" extends "Standard Purchase - Order"
{
    dataset
    {
        add("Purchase Line")
        {
            column(Tax; Tax) { }

        }
        add("Totals")
        {
            column(TotalTax; TotalTax) { }
        }

        modify("Purchase Line")
        {
            trigger OnAfterAfterGetRecord()
            begin
                TotalTax += Tax;
            end;
        }

    }

    rendering
    {
        layout(customLayout)
        {
            Type = Word;
            LayoutFile = './Extensions/Report/Layout/Word/StandardPurchaseOrderExt.docx';
        }
    }

    var
        TotalTax: Decimal;
}
