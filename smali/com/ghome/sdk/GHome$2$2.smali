.class Lcom/ghome/sdk/GHome$2$2;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome$2;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghome/sdk/GHome$2;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome$2;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 6

    .line 344
    iget-object p1, p0, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object v1, p1, Lcom/ghome/sdk/GHome$2;->val$activity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object v2, p1, Lcom/ghome/sdk/GHome$2;->val$gameId:Ljava/lang/String;

    iget-object p1, p0, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object v3, p1, Lcom/ghome/sdk/GHome$2;->val$reqScene:Ljava/lang/String;

    iget-object p1, p0, Lcom/ghome/sdk/GHome$2$2;->this$1:Lcom/ghome/sdk/GHome$2;

    iget-object v4, p1, Lcom/ghome/sdk/GHome$2;->val$versionLocal:Ljava/lang/String;

    new-instance v5, Lcom/ghome/sdk/GHome$2$2$1;

    invoke-direct {v5, p0}, Lcom/ghome/sdk/GHome$2$2$1;-><init>(Lcom/ghome/sdk/GHome$2$2;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/GamePlus;->getAgreementContentNew(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method
