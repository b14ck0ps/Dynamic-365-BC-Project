query 50112 "Customer List Query"
{
    Caption = 'Customer List Query';
    QueryType = Normal;
    QueryCategory = 'Customer List';
    elements
    {
        dataitem(Customer; Customer)
        {
            column(Name; Name)
            {
            }
            column(Address; Address)
            {
            }
            column(Contact; Contact)
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
