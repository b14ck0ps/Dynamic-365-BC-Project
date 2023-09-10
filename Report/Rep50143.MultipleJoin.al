report 50143 "Multiple Join"
{
    ApplicationArea = All;
    Caption = 'Multiple Join';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = './Report/Result/50143.rdl';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.";
            PrintOnlyIfDetail = true;


            column(No; "No.")
            {
                IncludeCaption = true;
            }

            column(Name_Customer; Name)
            {
                IncludeCaption = true;
            }
            column(PhoneNo_Customer; "Phone No.")
            {
                IncludeCaption = true;
            }
            column(Address_Customer; Address)
            {
                IncludeCaption = true;
            }
            column(E_Mail; "E-Mail")
            {
                IncludeCaption = true;
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
