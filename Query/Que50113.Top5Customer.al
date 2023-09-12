query 50113 "Top 5 Customer"
{
    Caption = 'Top 5 Customer';
    QueryType = Normal;
    QueryCategory = 'Customer List';
    TopNumberOfRows = 5;
    OrderBy = descending(Sales__LCY_);

    elements
    {
        dataitem(CustLedgerEntry; "Cust. Ledger Entry")
        {
            filter(Posting_Date; "Posting Date") { }
            column(CustomerName; "Customer Name")
            {
            }
            column(Sales__LCY_; "Sales (LCY)")
            {
                Method = Sum;
            }
            column(PostingDate; "Posting Date")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
