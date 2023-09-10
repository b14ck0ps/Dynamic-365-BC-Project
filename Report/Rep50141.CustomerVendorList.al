report 50141 "Customer Vendor List"
{
    ApplicationArea = All;
    Caption = 'Customer Vendor List';
    UsageCategory = ReportsAndAnalysis;
    ExcelLayout = './Report/Results/VendorList.xlsx';
    DefaultLayout = Excel;
    dataset
    {
        dataitem(vendor; vendor)
        {
            column(No; "No.")
            {
            }
            column(Balance; Balance)
            {
            }
            column(BalanceDue; "Balance Due")
            {
            }
            column(Contact; Contact)
            {
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
