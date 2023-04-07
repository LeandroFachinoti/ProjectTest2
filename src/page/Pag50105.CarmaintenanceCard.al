page 50105 "Car maintenance Card"
{
    ApplicationArea = All;
    Caption = 'Car maintenance Card';
    PageType = Card;
    SourceTable = "Car maintenance table";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Invoice No."; Rec."Invoice No.")
                {
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
                {
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field(Plate; Rec.Plate)
                {
                    NotBlank = true;
                    ApplicationArea = All;
                }
                field("Maintenance Cust"; Rec."Maintenance Cust")
                {
                    ApplicationArea = All;
                }
                field("Maintenance Mileage"; Rec."Maintenance Mileage")
                {
                    ApplicationArea = All;
                }

            }
            part(MaintenanceLine; "Item Maintenance Line")
            {
                ApplicationArea = All;
                SubPageLink = "Invoice No." = FIELD("Invoice No.");


            }

        }
    }
}
