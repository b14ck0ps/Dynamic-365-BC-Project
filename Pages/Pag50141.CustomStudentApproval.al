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
    actions
    {
        area(Processing)
        {
            group("Request Approval")
            {
                Caption = 'Request Approval';
                Image = SendApprovalRequest;
                action(SendApprovalRequest)
                {

                    ApplicationArea = Basic, Suite;
                    Caption = 'Send Approval Request';
                    Promoted = true;
                    ToolTip = 'Send Approval Request';
                    PromotedCategory = Process;
                    trigger OnAction()
                    begin
                        Message('Send Approval Request');
                    end;
                }
            }
        }
    }
}
