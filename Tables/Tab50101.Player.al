table 50115 Player
{
    Caption = 'Player';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Player ID"; Code[10])
        {
            Caption = 'Player ID';
        }
        field(2; "Player Name"; Text[50])
        {
            Caption = 'Player Name';
        }
        field(3; "Player Address"; Text[100])
        {
            Caption = 'Player Address';
        }
        field(4; "Player Phone"; Text[11])
        {
            Caption = 'Player Phone';
        }
    }
    keys
    {
        key(PK; "Player ID")
        {
            Clustered = true;
        }
    }
}
