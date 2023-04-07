table 50106 "Activities Cue API"
{
    Caption = 'Activities Cue API';

    fields
    {
        field(10; "Key"; Code[20]) // At least one normal field
        {
            Caption = 'Key';
        }
        field(20; "Purchase Invoice "; Integer)
        {
            Caption = 'Purchase Invoice ';
            FieldClass = FlowField;
            CalcFormula = Count("Purchase Header" WHERE("Document Type" = filter(Invoice)));

        }
        field(30; "Sales Invoice "; Integer)
        {
            Caption = 'Sales Invoice ';
            CalcFormula = count("Sales Header" WHERE("Document Type" = filter(Invoice)));
            FieldClass = FlowField;

        }
        field(40; "Posted Purchase Invoice"; Integer)
        {
            Caption = 'Posted Purchase Invoice';
            CalcFormula = count("Purch. Inv. Header"); //where("No." = filter('>=0')));  ????
            FieldClass = FlowField;

        }
        field(50; "Posted Sales Invoice "; Integer)
        {
            Caption = 'Posted Sales Invoice';
            CalcFormula = count("Sales Invoice Header"); //where("No." = filter('>=0')));  ????
            FieldClass = FlowField;

        }

    }
    keys
    {
        key(key1; "Key")
        {
            Clustered = true;
        }
    }
}
