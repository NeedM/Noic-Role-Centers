pageextension 50253 "Sales Cue Ext.Page" extends "SO Processor Activities"
{

    layout
    {

        modify("Sales Orders - Open")
        {
            Visible = false;
        }
        modify("Sales Quotes - Open")
        {
            visible = false;
            caption = 'Sales Proforma Invoices';
        }
        modify("For Release")
        {
            visible = false;
        }
        modify("Sales Orders Released Not Shipped")
        {
            visible = false;
        }
        addafter("For Release")
        {
            cuegroup(SalesProformaInvoices)
            {
                Caption = 'Sales Proforma invoices';
                field("Sales Proforma Invoices"; Rec."Sales Proforma Invoices")
                {
                    ToolTip = 'Specifies the number of Sales Proforma Invoices';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Sales Quotes";
                }
            }
            cuegroup(SalesOrders)
            {
                Caption = 'Sales Orders';

                field("Sales Orders Open"; Rec."Sales Orders Open")
                {
                    ToolTip = 'Specifies the number of the Sales Orders Open.';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Sales Order List";
                }
                field("Sales Orders Pending Appr"; Rec."Sales Orders Pending Appr")
                {
                    ToolTip = 'Specifies the number of the Sales Orders Pending Approval.';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Sales Order List";
                }
                field("Sales Orders Released"; Rec."Sales Orders Released")
                {
                    ToolTip = 'Specifies the number of the Sales Orders Released';
                    ApplicationArea = All;
                    DrillDownPageId = "Sales Order List";
                }
            }
            cuegroup(BlanketSalesOrders)
            {
                Caption = 'Blanket Sales Orders';
                field("Blanket Sales Orders Open"; Rec."Blanket Sales Orders Open")
                {
                    ToolTip = 'Specifies the number of the Blanket Sales Orders Open.';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Blanket Sales Orders";
                }
                field("Blantet Sales Orders  Released"; Rec."Blantet Sales Orders  Released")
                {
                    ToolTip = 'Specifies the number of the Banket Orders Released.';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Blanket Sales Orders";
                }
            }
            cuegroup(PurchaseRequisitions)
            {
                Caption = 'Purchase Requisitions';
                field("Purchase Requisitions - Open"; Rec."Purchase Requisitions - Open")
                {
                    ToolTip = 'Specifies the number of the Purchase Requisitions - Open.';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }
                field("Purchase Req Pending Approval"; Rec."Purchase Req Pending Approval")
                {
                    ToolTip = 'Specifies the number of the Purchase Requisitions Pending Approval.';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }
                field("Purchase Requisitions Released"; Rec."Purchase Requisitions Released")
                {
                    ToolTip = 'Specifies the number of the Released Purchase Requisitions';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }
            }
            cuegroup(StockRequisitions)
            {
                Caption = 'Stock Requisitions';
                field("Stock Requisitions - Open"; Rec."Stock Requisitions - Open")
                {
                    ToolTip = 'Specifies the number of the Open Stock Requisitions';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }
                field("Stock Requisitions - Pending"; Rec."Stock Requisitions - Pending")
                {
                    ToolTip = 'Specifies the number of the Stock Requisitions Pending Approval';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }
                field("Stock Requisitions - Released"; Rec."Stock Requisitions - Released")
                {
                    ToolTip = 'Specifies the number of the Released Stock Requisitions';
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Purchase Requisitions";
                }

            }

        }
    }
}