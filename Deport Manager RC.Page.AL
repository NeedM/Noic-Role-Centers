page 50258 "Depot Manager RC"
{
    Caption = 'Depot Manager';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            part(Control104; "Headline RC Project Manager")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Control1901851508; "Loading Activities")
            {
                ApplicationArea = Basic, Suite;
            }

            part("User Tasks Activities"; "User Tasks Activities")
            {
                ApplicationArea = Suite;
            }
            part("Emails"; "Email Activities")
            {
                ApplicationArea = Basic, Suite;
            }
            part(ApprovalsActivities; "Approvals Activities")
            {
                ApplicationArea = Suite;
            }

            part(Control4; "My Job Queue")
            {
                ApplicationArea = Basic, Suite;
                Visible = false;
            }
            part(Control1905989608; "My Items")
            {
                AccessByPermission = TableData "My Item" = R;
                ApplicationArea = Basic, Suite;
            }
            part(Control13; "Power BI Report Spinner Part")
            {
                ApplicationArea = Basic, Suite;
                Visible = false;
            }
            part(Control21; "Report Inbox Part")
            {
                AccessByPermission = TableData "Report Inbox" = R;
                ApplicationArea = Suite;
            }
            systempart(Control1901377608; MyNotes)
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(embedding)
        {
            ToolTip = 'Manage sales processes, view KPIs, and access your favorite items and customers.';
            action("Pick Instruction")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Pick Instructions';
                Image = Navigate;
                RunObject = Page "Pick Instruction List";
                ToolTip = 'View the Pick Instructions';
            }

            action("Sales Orders Open")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales Orders - Released';
                RunObject = Page "Sales Order List";
                RunPageView = WHERE(Status = filter(Open));
                ToolTip = 'View sales documents that are shipped but not yet invoiced.';
            }
            action("Sales Orders Pending Approval")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales Orders - Released';
                RunObject = Page "Sales Order List";
                RunPageView = WHERE(Status = filter("Pending Approval"));
                ToolTip = 'View sales documents that are shipped but not yet invoiced.';
            }
            action("Sales Orders Released")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales Orders - Released';
                RunObject = Page "Sales Order List";
                RunPageView = WHERE(Status = filter(Released));
                ToolTip = 'View sales documents that are shipped but not yet invoiced.';
            }
            action("Blanket Sales Orders - Open")
            {
                ApplicationArea = Suite, Basic;
                Caption = 'Blanket Sales Orders - Open';
                RunObject = Page "Blanket Sales Orders";
                RunPageView = WHERE(Status = filter(Open));
                ToolTip = 'View Open Blanket Sales Orders';
            }
            action("Blanket Sales Orders - Released")
            {
                ApplicationArea = Suite, Basic;
                Caption = 'Blanket Sales Orders - Released';
                RunObject = Page "Blanket Sales Orders";
                RunPageView = WHERE(Status = filter(Released));
                ToolTip = 'View Released Blanket Sales Orders';
            }
            // action(SalesOrdersComplShtNotInv)
            // {
            //     ApplicationArea = Basic, Suite;
            //     Caption = 'Completely Shipped Not Invoiced';
            //     RunObject = Page "Sales Order List";
            //     RunPageView = WHERE("Completely Shipped" = CONST(true),
            //                         "Shipped Not Invoiced" = CONST(true));
            //     ToolTip = 'View sales documents that are fully shipped but not fully invoiced.';
            // }
            // action(Items)
            // {
            //     ApplicationArea = Basic, Suite;
            //     Caption = 'Items';
            //     Image = Item;
            //     RunObject = Page "Item List";
            //     ToolTip = 'View or edit detailed information for the products that you trade in. The item card can be of type Inventory or Service to specify if the item is a physical unit or a labor time unit. Here you also define if items in inventory or on incoming orders are automatically reserved for outbound documents and whether order tracking links are created between demand and supply to reflect planning actions.';
            // }
            action(Customers)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Customers';
                Image = Customer;
                RunObject = Page "Customer List";
                ToolTip = 'View or edit detailed information for the customers that you trade with. From each customer card, you can open related information, such as sales statistics and ongoing orders, and you can define special prices and line discounts that you grant if certain conditions are met.';
            }
            // action("Item Journals")
            // {
            //     ApplicationArea = Basic, Suite;
            //     Caption = 'Item Journals';
            //     RunObject = Page "Item Journal Batches";
            //     RunPageView = WHERE("Template Type" = CONST(Item),
            //                         Recurring = CONST(false));
            //     ToolTip = 'Post item transactions directly to the item ledger to adjust inventory in connection with purchases, sales, and positive or negative adjustments without using documents. You can save sets of item journal lines as standard journals so that you can perform recurring postings quickly. A condensed version of the item journal function exists on item cards for quick adjustment of an items inventory quantity.';
            // }

            // action(CashReceiptJournals)
            // {
            //     ApplicationArea = Basic, Suite;
            //     Caption = 'Cash Receipt Journals';
            //     Image = Journals;
            //     RunObject = Page "General Journal Batches";
            //     RunPageView = WHERE("Template Type" = CONST("Cash Receipts"),
            //                         Recurring = CONST(false));
            //     ToolTip = 'Register received payments by manually applying them to the related customer, vendor, or bank ledger entries. Then, post the payments to G/L accounts and thereby close the related ledger entries.';
            // // }
            // action("Transfer Orders")
            // {
            //     ApplicationArea = Location;
            //     Caption = 'Transfer Orders';
            //     RunObject = Page "Transfer Orders";
            //     ToolTip = 'Move inventory items between company locations. With transfer orders, you ship the outbound transfer from one location and receive the inbound transfer at the other location. This allows you to manage the involved warehouse activities and provides more certainty that inventory quantities are updated correctly.';
            // }
            action(Items)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Items';
                Image = Item;
                RunObject = Page "Item List";
                ToolTip = 'View or edit detailed information for the products that you trade in. The item card can be of type Inventory or Service to specify if the item is a physical unit or a labor time unit. Here you also define if items in inventory or on incoming orders are automatically reserved for outbound documents and whether order tracking links are created between demand and supply to reflect planning actions.';
            }
            action("Item Journals")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Item Journals';
                RunObject = Page "Item Journal Batches";
                RunPageView = WHERE("Template Type" = CONST(Item),
                                    Recurring = CONST(false));
                ToolTip = 'Post item transactions directly to the item ledger to adjust inventory in connection with purchases, sales, and positive or negative adjustments without using documents. You can save sets of item journal lines as standard journals so that you can perform recurring postings quickly. A condensed version of the item journal function exists on item cards for quick adjustment of an items inventory quantity.';
            }
            action("Physical Inventory Journal")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Physical Inventory Journals';
                RunObject = Page "Phys. Inventory Journal";
                // RunPageView = WHERE("Template Type" = CONST(Item),
                //                     Recurring = CONST(false));
                ToolTip = '';
            }

            action("Transfer Orders")
            {
                ApplicationArea = Location;
                Caption = 'Transfer Orders';
                RunObject = Page "Transfer Orders";
                ToolTip = 'Move inventory items between company locations. With transfer orders, you ship the outbound transfer from one location and receive the inbound transfer at the other location. This allows you to manage the involved warehouse activities and provides more certainty that inventory quantities are updated correctly.';
            }

        }
        area(sections)
        {
            group("Loading")
            {
                Caption = 'Loading';
                Image = Sales;
                ToolTip = 'View Pick Instructions, Registered Drivers, Registered Transporters, Registerd vehicles';
                action("Pick Instructions")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'View Pick Instructions';
                    Image = Navigate;
                    RunObject = Page "Pick Instruction List";
                    ToolTip = 'View Pick Instruction list';
                }
                action("Loading Personnel")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'View Loading Personnel';
                    Image = Navigate;
                    RunObject = Page "Loading Personnel List";
                    ToolTip = 'Loading Personnel';
                }
                action("Transporters")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'View Transporters';
                    Image = Navigate;
                    RunObject = Page "Transporter Driver";
                    ToolTip = 'View Loading Transporters';
                }
                action("Proforma Invoices")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sales Proforma Invoices';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Sales Quotes";
                    ToolTip = 'View Proforma Invoices';
                }
                action("Sales Orders")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sales Orders';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Sales Order List";
                    ToolTip = 'Record your agreements with customers to sell certain products on certain delivery and payment terms. Sales orders, unlike sales invoices, allow you to ship partially, deliver directly from your vendor to your customer, initiate warehouse handling, and print various customer-facing documents. Sales invoicing is integrated in the sales order process.';
                }
                action("Blanket Sales Orders")
                {
                    ApplicationArea = Suite;
                    Caption = 'Blanket Sales Orders';
                    Image = Reminder;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Blanket Sales Orders";
                    ToolTip = 'Use blanket sales orders as a framework for a long-term agreement between you and your customers to sell large quantities that are to be delivered in several smaller shipments over a certain period of time. Blanket orders often cover only one item with predetermined delivery dates. The main reason for using a blanket order rather than a sales order is that quantities entered on a blanket order do not affect item availability and thus can be used as a worksheet for monitoring, forecasting, and planning purposes..';
                }
                action("Sales Invoices")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sales Invoices';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Sales Invoice List";
                    ToolTip = 'Register your sales to customers and invite them to pay according to the delivery and payment terms by sending them a sales invoice document. Posting a sales invoice registers shipment and records an open receivable entry on the customer''s account, which will be closed when payment is received. To manage the shipment process, use sales orders, in which sales invoicing is integrated.';
                }

            }

            group(Action62)
            {
                Caption = 'Inventory';
                ToolTip = 'Manage physical or service-type items that you trade in by setting up item cards with rules for pricing, costing, planning, reservation, and tracking. Set up storage places or warehouses and how to transfer between such locations. Count, adjust, reclassify, or revalue inventory.';
                action(Action93)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Items';
                    Image = Item;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Item List";
                    ToolTip = 'View or edit detailed information for the products that you trade in. The item card can be of type Inventory or Service to specify if the item is a physical unit or a labor time unit. Here you also define if items in inventory or on incoming orders are automatically reserved for outbound documents and whether order tracking links are created between demand and supply to reflect planning actions.';
                }
                action(Action96)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Journals';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Item Journal Batches";
                    RunPageView = WHERE("Template Type" = CONST(Item),
                                        Recurring = CONST(false));
                    ToolTip = 'Post item transactions directly to the item ledger to adjust inventory in connection with purchases, sales, and positive or negative adjustments without using documents. You can save sets of item journal lines as standard journals so that you can perform recurring postings quickly. A condensed version of the item journal function exists on item cards for quick adjustment of an items inventory quantity.';
                }
                action("Item Charges")
                {
                    ApplicationArea = Suite;
                    Caption = 'Item Charges';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Item Charges";
                    ToolTip = 'View or edit the codes for item charges that you can assign to purchase and sales transactions to include any added costs, such as freight, physical handling, and insurance that you incur when purchasing or selling items. This is important to ensure correct inventory valuation. For purchases, the landed cost of a purchased item consists of the vendor''s purchase price and all additional direct item charges that can be assigned to individual receipts or return shipments. For sales, knowing the cost of shipping sold items can be as vital to your company as knowing the landed cost of purchased items.';
                }
                action("Item Attributes")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Attributes';
                    RunObject = Page "Item Attributes";
                    ToolTip = 'Assign item attribute values to your items to enable rich searching and sorting options. When customers inquire about an item, either in correspondence or in an integrated web shop, they can then ask or search according to characteristics, such as height and model year. You can also assign item attributes to item categories, which then apply to the items that use the item categories in question.';
                }
                action("Item Tracking")
                {
                    ApplicationArea = ItemTracking;
                    Caption = 'Item Tracking';
                    RunObject = Page "Avail. - Item Tracking Lines";
                    ToolTip = 'Assign serial numbers and lot numbers to any outbound or inbound document for quality assurance, recall actions, and to control expiration dates and warranties. Use the Item Tracing window to trace items with serial or lot numbers backwards and forward in their supply chain';
                }
                action("Item Reclassification Journals")
                {
                    ApplicationArea = Warehouse;
                    Caption = 'Item Reclassification Journals';
                    RunObject = Page "Item Journal Batches";
                    RunPageView = WHERE("Template Type" = CONST(Transfer),
                                        Recurring = CONST(false));
                    ToolTip = 'Change information on item ledger entries, such as dimensions, location codes, bin codes, and serial or lot numbers.';
                }
                action("Phys. Inventory Journals")
                {
                    ApplicationArea = Warehouse;
                    Caption = 'Phys. Inventory Journals';
                    RunObject = Page "Item Journal Batches";
                    RunPageView = WHERE("Template Type" = CONST("Phys. Inventory"),
                                        Recurring = CONST(false));
                    ToolTip = 'Select how you want to maintain an up-to-date record of your inventory at different locations.';
                }
                action("Assembly Orders")
                {
                    ApplicationArea = Assembly;
                    Caption = 'Assembly Orders';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Assembly Orders";
                    ToolTip = 'Combine components in simple processes without the need of manufacturing functionality. Sell assembled items by building the item to order or by picking from stock.';
                }
                action("Drop Shipments")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Drop Shipments';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Sales Lines";
                    RunPageView = WHERE("Drop Shipment" = CONST(true));
                    ToolTip = 'Minimize delivery time and inventory cost by having items shipped from your vendor directly to your customer. This simply requires that you mark the sales order for drop shipment and then create a linked purchase order with the customer specified as the recipient. ';
                }
                action(Locations)
                {
                    ApplicationArea = Location;
                    Caption = 'Locations';
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Location List";
                    ToolTip = 'Manage the different places or warehouses where you receive, process, or ship inventory to increase customer service and keep inventory costs low.';
                }
            }
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                ToolTip = 'View the posting history for sales, shipments, and inventory.';
                action("Sales Quote Archive")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sales Profoma Invoice Archives';
                    RunObject = page "Sales Quote Archives";
                }
                action("Blanket Sales Order Archives")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Blanket Sales Order Archives';
                    RunObject = page "Blanket Sales Order Archives";
                }
                action(Action32)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Sales Invoices';
                    Image = PostedOrder;
                    RunObject = Page "Posted Sales Invoices";
                    ToolTip = 'Open the list of posted sales invoices.';
                }
                action(Action34)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Sales Credit Memos';
                    Image = PostedOrder;
                    RunObject = Page "Posted Sales Credit Memos";
                    ToolTip = 'Open the list of posted sales credit memos.';
                }
                action("Posted Return Receipts")
                {
                    ApplicationArea = SalesReturnOrder;
                    Caption = 'Posted Return Receipts';
                    Image = PostedReturnReceipt;
                    RunObject = Page "Posted Return Receipts";
                    ToolTip = 'Open the list of posted return receipts.';
                }
                action(Action40)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Sales Shipments';
                    Image = PostedShipment;
                    RunObject = Page "Posted Sales Shipments";
                    ToolTip = 'Open the list of posted sales shipments.';
                }
            }
#if not CLEAN18

#endif
        }
        area(creation)
        {
            action("Pick Slip")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Pick Slip';
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page "Pick Instruction";
                RunPageMode = Create;
                ToolTip = 'Generate a new Picking Slip';
            }
            action("Transporter")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Transporter';

                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                //RunObject = Page "Sales Invoice";
                RunPageMode = Create;
                ToolTip = 'Craate a New Transporter';
            }
            action("Fuel Meters")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Fuel Meters';
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page "Meter Codes";
                RunPageMode = Create;
                ToolTip = 'Create a new Fuel Meter';

            }
            action("Driver")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Driver';
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page "Driver Card";
                RunPageMode = Create;
                ToolTip = 'Create a New Driver';
            }

            action("Purchase Requisition")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Purchase Requisition';
                Image = Purchase;
                Promoted = false;

                RunObject = Page "Purchase Requisition Card";
                RunPageMode = Create;
                ToolTip = 'Create a new Purchae Requisition';
            }
            action("Stock Requisition")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Stock Requisition';
                Image = Purchase;
                Promoted = false;

                RunObject = Page "Stock Requisition Card";
                RunPageMode = Create;
                ToolTip = 'Create a new Stock Requsition';
            }
        }
        area(processing)
        {

            group(Reports)
            {
                Caption = 'Reports';

                action("Price &List")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Price &List';
                    Image = "Report";
                    RunObject = Report "Item Price List";
                    ToolTip = 'View a list of your items and their prices, for example, to send to customers. You can create the list for specific customers, campaigns, currencies, or other criteria.';
                }

                action("Inventory &Cost and Price List")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Inventory &Cost and Price List';
                    Image = "Report";
                    RunObject = Report "Inventory Cost and Price List";
                    ToolTip = 'View price information for your items or stockkeeping units, such as direct unit cost, last direct cost, unit price, profit percentage, and profit.';
                }
                action("Inventory List")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Inventory List';
                    Image = "Report";
                    RunObject = Report "Inventory - List";
                    ToolTip = 'Inventory List';
                }
                action("Physical Inventory List")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Physical Inventory List';
                    Image = "Report";
                    RunObject = Report "Phys. Inventory List";
                    ToolTip = 'Physical Inventory List';
                }

                action("Item Registers - Value")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Registers';
                    Image = "Report";
                    RunObject = Report "Item Register - Value";
                    ToolTip = 'item register - Quantity';
                }
                action("Inventory Valuation - Cost Spec")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Inventory Valuation Cost Spec';
                    Image = "Report";
                    RunObject = Report "Inventory Valuation";
                    ToolTip = '';
                }
                action("Item Registers - Quantity")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Registers';
                    Image = "Report";
                    RunObject = Report "Item Register - Quantity";
                    ToolTip = 'Item Register - Quantity  ';
                }
                action("Item Age Composition - Value")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Item Age Composition - Value';
                    Image = "Report";
                    RunObject = Report "Item Age Composition - Value";
                    ToolTip = 'Item Age Composition - Value';
                }

            }

        }
    }
}

