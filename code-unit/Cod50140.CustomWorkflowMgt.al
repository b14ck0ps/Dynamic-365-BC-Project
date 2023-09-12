codeunit 50140 "Custom Workflow Mgt"
{
    procedure CheckApprovalsWorkflowEnabled(var RecRef: RecordRef): Boolean
    begin
        if not WorkflowManagement.CanExecuteWorkflow(RecRef, GetWorkFlowCode(RUNWORKFLOWONSENDAPPROVALCODE, RecRef)) then begin
            Error(NoWorkflowEnabledErr);
        end;
        exit(true);
    end;


    procedure GetWorkFlowCode(WorkFlowCode: Code[128]; RecRef: RecordRef): Code[128]
    begin
        exit(DelChr(StrSubstNo(WorkFlowCode, RecRef.Name), '=', ' '));
    end;

    [IntegrationEvent(false, false)]
    procedure OnSendWorkFlowForApproval(var RecRef: RecordRef)
    begin
    end;

    [IntegrationEvent(false, false)]
    procedure OnCancelWorkFlowForApproval(var RecRef: RecordRef)
    begin
    end;

    var
        WorkflowManagement: Codeunit "Workflow Management";
        RUNWORKFLOWONSENDAPPROVALCODE: Label 'RUNWORKFLOWONSEND%1FORAPPROVAL';
        RUNWORKFLOWONCANCLEAPPROVALCODE: Label 'RUNWORKFLOWONCANCLE%1FORAPPROVAL';
        NoWorkflowEnabledErr: Label 'No workflow enabled';
}
