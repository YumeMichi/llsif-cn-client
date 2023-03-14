.class Lcom/ghome/sdk/GHome$6;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghome/sdk/common/IGHomeApi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->initializeUI(Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$gameId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/ghome/sdk/GHome$6;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$6;->val$gameId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/GHome$6;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 666
    iget-object p1, p0, Lcom/ghome/sdk/GHome$6;->this$0:Lcom/ghome/sdk/GHome;

    iget-object p2, p0, Lcom/ghome/sdk/GHome$6;->val$activity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/ghome/sdk/GHome$6;->val$gameId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ghome/sdk/GHome$6;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-static {p1, p2, p3, v0}, Lcom/ghome/sdk/GHome;->access$1800(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    goto :goto_0

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/ghome/sdk/GHome$6;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghome/sdk/GHome$6;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const v3, -0xa5db6a

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v4, "\u7528\u6237\u672a\u540c\u610f\u9690\u79c1\u653f\u7b56\uff0c\u521d\u59cb\u5316\u5931\u8d25"

    const-string v6, "initialize"

    invoke-static/range {v1 .. v6}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
