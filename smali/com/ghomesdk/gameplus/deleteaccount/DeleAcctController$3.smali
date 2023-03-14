.class Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$3;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "DeleAcctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->doCheckDeleSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
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

.field final synthetic val$cb:Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$3;->val$cb:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;)V
    .locals 1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    sget p2, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->DELE_HESITATE_VIEW:I

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->showPageView(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$3;->this$0:Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$3;->val$cb:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-static {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;->access$400(Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController;ILjava/lang/String;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/deleteaccount/DeleAcctController$3;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;)V

    return-void
.end method
