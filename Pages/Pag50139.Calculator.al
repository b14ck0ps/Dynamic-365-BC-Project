page 50139 Calculator
{
    ApplicationArea = All;
    Caption = 'Calculator';
    PageType = Document;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Calculate)
            {
                Caption = 'Add 2 Numbers';
                Promoted = true;
                PromotedCategory = Process;
                Image = Calculator;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Calculator.AddNumber(1, 3);
                end;
            }
        }
    }
    var
        Calculator: Codeunit "Basic Calculation";
}
