.class public abstract Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;
.super Lcom/ghomesdk/gameplus/deleteaccount/ui/BaseView;
.source "DeleteAcctView.java"


# instance fields
.field protected ctx:Landroid/content/Context;

.field protected deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/ghomesdk/gameplus/deleteaccount/ui/BaseView;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->ctx:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/ghomesdk/gameplus/deleteaccount/ui/DeleteAcctView;->deleDialog:Lcom/ghomesdk/gameplus/deleteaccount/DeleteAccountDialog;

    return-void
.end method

.method public abstract onClickAndroidBack()V
.end method
