.class public Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;
.super Lcom/ghomesdk/gameplus/dialog/BaseDialog;
.source "DeleteAccountDialog.java"


# static fields
.field public static DELE_AGREEMENT_VIEW:I = 0x2

.field public static DELE_COMPLETE_VIEW:I = 0x6

.field public static DELE_CONDITION_VIEW:I = 0x1

.field public static DELE_HESITATE_VIEW:I = 0x5

.field public static DELE_REAL_INFO_VIEW:I = 0x3

.field public static DELE_SEND_SMS_VIEW:I = 0x4


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 18
    const-class p2, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->TAG:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->mCallback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    .line 33
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public replaceShowView(Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->setContentView(I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-super {p0}, Lcom/ghomesdk/gameplus/dialog/BaseDialog;->show()V

    return-void
.end method
