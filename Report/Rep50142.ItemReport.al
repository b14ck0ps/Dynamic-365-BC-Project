report 50142 "Item Report"
{
    ApplicationArea = All;
    Caption = 'Item Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = './Report/Results/Item Report.rdl';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Item; Item)
        {
            column(No; "No.")
            {
            }
            column(Profit; "Profit %")
            {
            }
            column(ReorderQuantity; "Reorder Quantity")
            {
            }
            column(SalesUnitofMeasure; "Sales Unit of Measure")
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
