page 50142 "Custom Student Appv Card"
{
    ApplicationArea = All;
    Caption = 'Custom Student Appv Card';
    PageType = Card;
    SourceTable = "Custom Student Workflow Header";
    PromotedActionCategories = 'Approval';

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    Editable = false;
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
                    Image = SendApprovalRequest;
                    ToolTip = 'Send Approval Request';
                    PromotedCategory = Process;
                    trigger OnAction()
                    begin
                        Message('Send Approval Request');
                    end;
                }

                action(CancelApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Cancel Approval Request';
                    Promoted = true;
                    Image = CancelApprovalRequest;
                    ToolTip = 'Cancel Approval Request';
                    PromotedCategory = Process;
                    Enabled = false;
                    trigger OnAction()
                    begin
                        Message('Cancel Approval Request');
                    end;
                }
            }
        }
        area(Creation)
        {
            group(Approval)
            {
                Caption = 'Approve';
                Image = Approve;
                action(Approve)
                {

                    ApplicationArea = Basic, Suite;
                    Caption = 'Approve';
                    Image = Approve;
                    Promoted = true;
                    ToolTip = 'Approve';
                    PromotedCategory = Process;
                    Visible = false;
                    trigger OnAction()
                    begin
                        Message('Approve');
                    end;
                }
                action(Reject)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Reject';
                    Promoted = true;
                    ToolTip = 'Reject';
                    Image = Reject;
                    Visible = false;
                    PromotedCategory = Process;
                    trigger OnAction()
                    begin
                        Message('Reject');
                    end;
                }
                action(Delegate)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Delegate';
                    Promoted = true;
                    ToolTip = 'Delegate';
                    Image = Delegate;
                    Visible = false;
                    PromotedCategory = Process;
                    trigger OnAction()
                    begin
                        Message('Delegate');
                    end;
                }
                action(Comment)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Comment';
                    Image = Comment;
                    Promoted = true;
                    Visible = false;
                    ToolTip = 'Comment';
                    PromotedCategory = Process;
                    trigger OnAction()
                    begin
                        Message('Comment');
                    end;
                }
                action(Approvals)
                {
                    ApplicationArea = Basic, Suite;
                    Image = Approvals;
                    Caption = 'Approvals';
                    Promoted = true;
                    ToolTip = 'View Approvals requests';
                    PromotedCategory = New;
                    trigger OnAction()
                    begin
                        Message('Approvals');
                    end;
                }
            }
        }
    }
}

