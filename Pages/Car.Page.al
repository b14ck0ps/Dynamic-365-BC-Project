page 50137 CarPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Car;
    layout
    {
        area(Content)
        {
            repeater(rp1)
            {
                field(Car; Rec.Car)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the car number';
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the car description';
                }
            }
        }
    }

}