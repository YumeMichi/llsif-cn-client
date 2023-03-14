.class final Lcom/ghomesdk/gameplus/dialog/WaitingDialog$3;
.super Ljava/lang/Object;
.source "WaitingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->hideUI(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    invoke-static {}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$106()I

    .line 87
    invoke-static {}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$100()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$200()Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$200()Lcom/ghomesdk/gameplus/dialog/WaitingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->dismiss()V

    .line 89
    invoke-static {}, Lcom/ghomesdk/gameplus/dialog/WaitingDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hide null"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
