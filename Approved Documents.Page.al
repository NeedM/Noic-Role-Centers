page 50256 "Approved Documents"
{
    Caption = 'Approved Documents';
    PageType = CardPart;
    RefreshOnActivate = true;
    ShowFilter = false;
    SourceTable = "Finance Cue";

    layout
    {
        area(content)
        {
            cuegroup(ApprovedDocuments)
            {
                Caption = 'Approved Documents';
                field("Approved Purchase Orders"; Rec."Approved Purchase Orders")
                {
                    ApplicationArea = Suite;
                    DrillDownPageID = "Purchase Order List";
                    ToolTip = 'Specifies Released Purchase Orders';
                }
                field("Purchase Orders pending Approval"; Rec."POs Pending Approval")
                {
                    ApplicationArea = Suite;
                    DrillDownPageID = "Purchase Order List";
                    ToolTip = 'Specifies Purchase Orders Pending Approvals';
                }
                field("Purchase Return Orders"; Rec."Purchase Return Orders")
                {
                    ApplicationArea = Suite;
                    DrillDownPageID = "Purchase Return Order List";
                    ToolTip = 'Specifies Return Purchase Orders';
                }
            }
            // cuegroup(RequisitionsPendingVendors)
            // {
            //     Caption = 'Purch Req Pending Vendors';

            //     field("Assigned Purchase Requisitions"; Rec."Assigned Purchase Requisitions")
            //     {
            //         ApplicationArea = All;
            //         DrillDownPageId = "Purchase Requisitions";
            //         ToolTip = 'Specifies Purchase Requisitions awaiting vendors.';
            //     }
            // }
        }

    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
        Rec.SetRange("User ID Filter", UserId);

    end;

    var
        PurchHeader: Record "Purchase Header";
}