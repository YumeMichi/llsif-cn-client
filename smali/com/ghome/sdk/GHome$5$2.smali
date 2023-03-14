.class Lcom/ghome/sdk/GHome$5$2;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome$5;->onOperateCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghome/sdk/GHome$5;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome$5;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 581
    new-instance p1, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object p2, p2, Lcom/ghome/sdk/GHome$5;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object v0, v0, Lcom/ghome/sdk/GHome$5;->val$activity:Landroid/app/Activity;

    const-string v1, "gl_app_theme_light"

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;-><init>(Landroid/content/Context;I)V

    .line 582
    iget-object p2, p0, Lcom/ghome/sdk/GHome$5$2;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object p2, p2, Lcom/ghome/sdk/GHome$5;->val$finalAgreementAllContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->setContentUrl(Ljava/lang/String;)V

    .line 583
    new-instance p2, Lcom/ghome/sdk/GHome$5$2$1;

    invoke-direct {p2, p0}, Lcom/ghome/sdk/GHome$5$2$1;-><init>(Lcom/ghome/sdk/GHome$5$2;)V

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->setOperationListener(Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog$AgreementOperationListener;)V

    .line 605
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/dialog/AgreementOperationDialog;->show()V

    return-void
.end method
