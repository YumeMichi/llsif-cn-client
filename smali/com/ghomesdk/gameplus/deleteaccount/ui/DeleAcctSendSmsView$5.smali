.class Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$5;
.super Ljava/lang/Object;
.source "DeleAcctSendSmsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$5;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 146
    invoke-static {}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->getInstance()Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    move-result-object v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$5;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    iget-object v2, v1, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->ctx:Landroid/content/Context;

    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$5;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$200(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$5;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;->access$500(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$5$1;

    invoke-direct {v6, p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$5$1;-><init>(Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleAcctSendSmsView$5;)V

    const-string v5, "7"

    invoke-virtual/range {v0 .. v6}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->doCheckDeleSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    return-void
.end method
