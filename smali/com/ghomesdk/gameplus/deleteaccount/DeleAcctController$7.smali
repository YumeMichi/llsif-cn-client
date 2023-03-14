.class Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$7;
.super Ljava/lang/Object;
.source "DeleAcctController.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->doClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$7;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$7;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    const/4 p2, -0x1

    const-string v0, "\u53d6\u6d88\u6ce8\u9500\u8d26\u53f7"

    invoke-static {p1, p2, v0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->access$000(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;ILjava/lang/String;)V

    return-void
.end method
