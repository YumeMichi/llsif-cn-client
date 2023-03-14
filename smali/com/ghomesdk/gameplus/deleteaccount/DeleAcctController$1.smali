.class Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "DeleAcctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->initDeleAcct()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;)V
    .locals 2

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p3, Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;->deleteFlowId:Ljava/lang/String;

    sput-object p1, Lcom/ghomesdk/gameplus/config/Config;->deleAcctFlowId:Ljava/lang/String;

    .line 67
    iget p1, p3, Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;->accountDeletionPeriod:I

    sput p1, Lcom/ghomesdk/gameplus/config/Config;->ACCT_DELE_PERIOD:I

    .line 70
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    new-instance p2, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->access$200(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->access$200(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->loginStyle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->access$300(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)Lcom/ghomesdk/gameplus/callback/ResultCallback;

    move-result-object v1

    invoke-direct {p2, p3, v0, v1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;-><init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/callback/ResultCallback;)V

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->access$102(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    .line 71
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->access$100(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;)Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->show()V

    .line 72
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    sget p2, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_CONDITION_VIEW:I

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->showPageView(I)V

    return-void

    .line 63
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    invoke-static {p3, p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->access$000(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$1;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;)V

    return-void
.end method
