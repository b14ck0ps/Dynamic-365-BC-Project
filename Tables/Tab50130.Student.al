table 50130 Student
{
    Caption = 'Student';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Code[10])
        {
            Caption = 'Student ID';
            trigger OnValidate()
            begin
                if "Student ID" <> xRec."Student ID" then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TestManual(SalesSetup."Student Nos");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Student Name"; Text[50])
        {
            Caption = 'Student Name';
        }
        field(3; "Student Address"; Text[100])
        {
            Caption = 'Student Address';
        }
        field(5; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }

    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnDelete()
    var
        StudentCourseRec: Record "Student Course";
    begin
        StudentCourseRec.SetRange("Student ID No", "Student ID");
        /* while StudentCourseRec.FindSet(true) do
            StudentCourseRec.Delete(true); */
        // StudentCourseRec.DeleteAll(true);
        if StudentCourseRec.FindFirst() then
            repeat
                StudentCourseRec.Delete(true);
            until StudentCourseRec.Next() = 0;
    end;

    trigger OnInsert()
    var
    begin
        if "Student ID" = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Student Nos");
            NoSeriesMgt.InitSeries(SalesSetup."Student Nos", xRec."No. Series", 0D, "Student ID", "No. Series");
        end;
    end;
}
