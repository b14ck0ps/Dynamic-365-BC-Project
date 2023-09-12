page 50141 "Custom Student Approval"
{
    ApplicationArea = All;
    Caption = 'Custom Student Approval';
    PageType = List;
    SourceTable = "Custom Student Workflow Header";
    UsageCategory = Documents;
    CardPageId = "Custom Student Appv Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                }
            }
        }
    }
}
