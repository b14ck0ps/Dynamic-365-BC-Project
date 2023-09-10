table 50109 Car
{
    DataClassification = ToBeClassified;
    Caption = 'Car';

    fields
    {
        field(1; Car; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Car';
        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }

    }

    keys
    {
        key(key1; Car)
        {
            Clustered = true;
        }
    }
}