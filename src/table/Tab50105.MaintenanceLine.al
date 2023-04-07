table 50105 "Maintenance Line"
{



    fields
    {
        field(10; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(20; "Invoice No."; Code[20])
        {

        }
        field(30; "Item No."; Integer)
        {
            Caption = 'Item No.';

        }
        field(40; Description; Text[250])
        {
            Editable = false;
            CalcFormula = lookup("Item Maintenance".Description where("Item No." = field("Item No.")));
            FieldClass = FlowField;
        }
    }
    keys
    {
        key(key1; "Invoice No.", "Line No.")
        {
            Clustered = true;
        }
    }
}
