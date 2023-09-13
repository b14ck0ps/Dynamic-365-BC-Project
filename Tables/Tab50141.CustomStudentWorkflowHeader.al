table 50141 "Custom Student Workflow Header"
{
    Caption = 'Custom Student Workflow Header';
    DataClassification = ToBeClassified;
    DrillDownPageId = "Custom Student Approval";
    LookupPageId = "Custom Student Approval";
    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            Editable = false;
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TestManual(SalesSetup."Student Approval No");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; Status; Enum "Custom Approval Enums")
        {
            Caption = 'Status';
        }
        field(4; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    var
    begin
        if "No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Student Approval No");
            NoSeriesMgt.InitSeries(SalesSetup."Student Approval No", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

}
