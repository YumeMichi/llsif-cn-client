.class Lcom/ghome/sdk/GHome$5$1;
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

    .line 608
    iput-object p1, p0, Lcom/ghome/sdk/GHome$5$1;->this$1:Lcom/ghome/sdk/GHome$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    .line 611
    invoke-static {p1}, Lcom/ghome/sdk/GHome;->access$1502(Z)Z

    .line 612
    iget-object p1, p0, Lcom/ghome/sdk/GHome$5$1;->this$1:Lcom/ghome/sdk/GHome$5;

    iget-object p1, p1, Lcom/ghome/sdk/GHome$5;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const/4 p2, -0x1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method
