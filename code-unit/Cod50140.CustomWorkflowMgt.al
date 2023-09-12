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

    /* Add event for custom workflow */
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowEventsToLibrary', '', false, false)]
    local procedure OnAddWorkflowEventsToLibrary()
    var
        RecRef: RecordRef;
        WorkflowEventHandling: Codeunit "Workflow Event Handling";
    begin
        RecRef.Open(Database::"Custom Student Workflow Header");
        WorkflowEventHandling.AddEventToLibrary(GetWorkFlowCode(RUNWORKFLOWONSENDAPPROVALCODE, RecRef), Database::"Custom Student Workflow Header", GetWorkFlowEventDesc(WorkFlowSendForApprovalEventDescTxt, RecRef), 0, false);
        WorkflowEventHandling.AddEventToLibrary(GetWorkFlowCode(RUNWORKFLOWONCANCLEAPPROVALCODE, RecRef), Database::"Custom Student Workflow Header", GetWorkFlowEventDesc(WorkFlowCancelApprovalEventDescTxt, RecRef), 0, false);
    end;

    /* Subscriber */
    // on send for approval
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Custom Workflow Mgt", 'OnSendWorkFlowForApproval', '', false, false)]
    local procedure RunWorkFlowOnSendForApproval(var RecRef: RecordRef)
    begin
        WorkflowManagement.HandleEvent(GetWorkFlowCode(RUNWORKFLOWONSENDAPPROVALCODE, RecRef), RecRef);
    end;

    // on cancel approval
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Custom Workflow Mgt", 'OnCancelWorkFlowForApproval', '', false, false)]
    local procedure RunWorkFlowOnCancelApproval(var RecRef: RecordRef)
    begin
        WorkflowManagement.HandleEvent(GetWorkFlowCode(RUNWORKFLOWONCANCLEAPPROVALCODE, RecRef), RecRef);
    end;

    procedure GetWorkFlowEventDesc(WorkflowEventDesc: Text; RecRef: RecordRef): Text
    begin
        exit(StrSubstNo(WorkflowEventDesc, RecRef.Name));
    end;

    var
        WorkflowManagement: Codeunit "Workflow Management";
        RUNWORKFLOWONSENDAPPROVALCODE: Label 'RUNWORKFLOWONSEND%1FORAPPROVAL';
        RUNWORKFLOWONCANCLEAPPROVALCODE: Label 'RUNWORKFLOWONCANCLE%1FORAPPROVAL';
        NoWorkflowEnabledErr: Label 'No workflow enabled';
        WorkFlowSendForApprovalEventDescTxt: Label 'Approval of %1 is requested';
        WorkFlowCancelApprovalEventDescTxt: Label 'Approval of %1 is canceled';
}
