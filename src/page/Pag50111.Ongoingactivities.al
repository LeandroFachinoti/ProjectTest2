page 50111 "Ongoing activities"
{

    Caption = 'activities';
    ShowFilter = false;
    RefreshOnActivate = true; // Actualizar the cardpart with the page central 
    PageType = CardPart;
    SourceTable = "Activities Cue API";

    layout
    {
        area(content)
        {
            cuegroup("Ongoing")
            {
                field("Ongoing Sales Invoices"; rec."Sales Invoice ")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sales Invoices';
                    DrillDownPageID = "sales invoice list";
                    ToolTip = 'Specifies sales invoices that are not yet posted or only partially posted.';
                }


                field("Ongoing Purchase Invoices"; rec."Purchase Invoice ")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Purchase Invoices';
                    DrillDownPageID = "Purchase Invoices";
                    ToolTip = 'Specifies purchases invoices that are not posted or only partially posted.';
                }
            }
            cuegroup(Posted)
            {
                field("Posted Sales Invoice"; rec."Posted Sales Invoice ")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Sales Invoice';
                    DrillDownPageId = "Posted Sales Invoices";
                }
                field("Posted Purchase Invoice"; rec."Posted Purchase Invoice")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Purchase Invcoice';
                    DrillDownPageId = "Posted Purchase Invoices";
                }

            }
            cuegroup("New sales invoice")
            {
                actions
                {
                    action("Sales Invoice")
                    {
                        ApplicationArea = basic, suite;
                        RunObject = page "Sales Invoice";
                        Image = TileNew;
                        //     trigger OnAction()
                        //     begin

                        //     end;
                    }
                    action("Test Foreach")
                    {
                        ApplicationArea = basic, suite;
                        RunObject = codeunit "test foreach text";
                        Image = TileYellow;
                    }
                }
            }

        }
    }
    trigger OnOpenPage(); // Initializing the cue fields 
    begin
        rec.RESET;
        if not rec.get then begin
            rec.INIT;
            rec.INSERT;
        end;
    end;

}