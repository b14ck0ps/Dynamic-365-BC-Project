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
                    Editable = false;
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
                    var
                        ApprovalMgt: Codeunit "Custom Workflow Mgt";
                        RecRef: RecordRef;
                    begin
                        RecRef.GetTable(Rec);
                        if ApprovalMgt.CheckApprovalsWorkflowEnabled(RecRef) then
                            ApprovalMgt.OnSendWorkFlowForApproval(RecRef);
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
                    var
                        ApprovalMgt: Codeunit "Custom Workflow Mgt";
                        RecRef: RecordRef;
                    begin
                        RecRef.GetTable(Rec);
                        if ApprovalMgt.CheckApprovalsWorkflowEnabled(RecRef) then
                            ApprovalMgt.OnCancelWorkFlowForApproval(RecRef);
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
                    Visible = true;
                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit "Custom Workflow Mgt";
                        RecRef: RecordRef;
                    begin
                        RecRef.GetTable(Rec);
                        OApprovalMgt.ApproveRecordApprovalRequest(RecRef.RecordId);
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
                    RunObject = Page "Approval Entries";
                    RunPageLink = "Document No." = FIELD("No.");
                    trigger OnAction()
                    var
                        ApprovalMgt: Codeunit "Custom Workflow Mgt";
                        RecRef: RecordRef;
                    begin

                    end;
                }
            }
        }
    }
    var
        OApprovalMgt: Codeunit "Approvals Mgmt.";
}

