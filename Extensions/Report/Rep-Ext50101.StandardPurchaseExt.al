reportextension 50101 "Standard Purchase Order Ext" extends "Standard Purchase - Order"
{
    dataset
    {
        add("Purchase Line")
        {
            column(Tax; Tax) { }
        }
    }
    rendering
    {
        layout(customLayput)
        {
            Type = Word;
            LayoutFile = './Extensions/Report/Layout/Word/StandardPurchaseOrderExt.docx';
        }
    }

    var
        footer: Label 'This is a footer Coming From Extension';
}
