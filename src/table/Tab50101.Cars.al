table 50101 "Cars"
{
    DataClassification = CustomerContent;

    fields
    {
        field(10; Plate; Code[10])
        {
            DataClassification = CustomerContent;
            NotBlank = true;

            trigger OnValidate()
            begin
                if rec.Get(Plate) then
                    Error('Plate already registered');

            end;

        }
        field(20; Chassis; code[100])
        {
            DataClassification = CustomerContent;
            NotBlank = true;

            trigger OnValidate()
            var
                CarsL: Record Cars;
            begin    // Checking if the chassis is already registered on another plate
                CarsL.setrange(Chassis, rec.Chassis);
                if CarsL.FindSet() then
                    Error('Chassis already registered');


            end;

        }
        field(30; Brand; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(40; Model; text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50; "Manufacture Year"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(60; "Actual Mileage"; Integer)
        {
            DataClassification = CustomerContent;
            // Change menu
            trigger OnValidate()
            var
                selectionL: Integer;
            begin   // Confirming that the value is correct
                if rec."Actual Mileage" < xrec."Actual Mileage" then begin
                    selectionL := StrMenu('Continue,Cancel', 2, 'New value is less than old value ');
                    if selectionL = 2 then begin
                        REC."Actual Mileage" := xRec."Actual Mileage";
                    end;
                end;
            end;

        }
        field(70; "Last maintenance date"; Date)
        {
            CalcFormula = lookup("Car maintenance table".Date where(Plate = field(Plate)));
            FieldClass = FlowField;
        }
        field(80; "Last maintenance mileage"; Integer)
        {
            CalcFormula = lookup("Car maintenance table"."Maintenance Mileage" where(Plate = field(Plate)));
            FieldClass = FlowField;

        }
        field(90; "Next maintenance mileage"; Integer)
        {
            // Change
            DataClassification = CustomerContent;
            Editable = false;

            trigger OnValidate()
            begin
                rec."Next maintenance mileage" := rec."Last maintenance mileage" + 10000;
            end;

        }

    }

    keys
    {
        key(Key1; Plate)
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}