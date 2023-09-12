query 50114 "Inner Join Cutomer with Sales"
{
    Caption = 'Inner Join Cutomer with Sales';
    QueryType = Normal;
    QueryCategory = 'Customer List';
    elements
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Address; Address)
            {
            }

            dataitem(Sales_Line; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = Customer."No.";
                SqlJoinType = InnerJoin;

                column(Quantity;
                Quantity)
                {
                }
            }
        }
    }

    trigger OnBeforeOpen()
    begin
    end;
}
