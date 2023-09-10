pageextension 50131 CustomerPageExt extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(Car; Rec.Car)
            {
                ApplicationArea = All;
                ToolTip = 'Car';
            }
        }
    }

}