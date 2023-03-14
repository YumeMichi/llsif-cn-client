.class Lcom/ghome/sdk/GHome$4$1;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/dialog/CommonDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome$4;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghome/sdk/GHome$4;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome$4;Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/ghome/sdk/GHome$4$1;->this$1:Lcom/ghome/sdk/GHome$4;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$4$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 511
    invoke-static {p1}, Lcom/ghome/sdk/GHome;->access$702(Z)Z

    .line 512
    iget-object p1, p0, Lcom/ghome/sdk/GHome$4$1;->this$1:Lcom/ghome/sdk/GHome$4;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$4;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$4$1;->val$msg:Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method
