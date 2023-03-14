.class Lcom/ghome/sdk/GHome$13;
.super Ljava/lang/Object;
.source "GHome.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/PayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/GHome;->payUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/GHome;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/ghome/sdk/GHome$13;->this$0:Lcom/ghome/sdk/GHome;

    iput-object p2, p0, Lcom/ghome/sdk/GHome$13;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/GHome$13;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 10
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

    const-string v0, ""

    if-eqz p3, :cond_0

    const-string v1, "S_orderid"

    .line 966
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 967
    :goto_0
    iget-object v2, p0, Lcom/ghome/sdk/GHome$13;->this$0:Lcom/ghome/sdk/GHome;

    iget-object v3, p0, Lcom/ghome/sdk/GHome$13;->val$activity:Landroid/app/Activity;

    if-eqz p3, :cond_1

    const-string v0, "actionName"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    invoke-static {v2, v3, v1, v0}, Lcom/ghome/sdk/GHome;->access$2600(Lcom/ghome/sdk/GHome;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v4, p0, Lcom/ghome/sdk/GHome$13;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/ghome/sdk/GHome$13;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    const-string v9, "pay"

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v4 .. v9}, Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
