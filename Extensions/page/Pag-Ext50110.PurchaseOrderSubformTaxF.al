pageextension 50110 "Purchase Order Subform TaxF" extends "Purchase Order Subform"
{
    layout
    {
        addlast(Control1)
        {
            field(Tax; Rec.Tax)
            {
                ApplicationArea = All;
                ToolTip = 'TaxF';
            }
        }
    }
}
