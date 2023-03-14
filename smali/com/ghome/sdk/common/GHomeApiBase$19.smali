.class Lcom/ghome/sdk/common/GHomeApiBase$19;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->doExtend(Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$command:I

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeApiBase;Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$19;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$19;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$19;->val$command:I

    iput-object p4, p0, Lcom/ghome/sdk/common/GHomeApiBase$19;->val$params:Ljava/util/Map;

    iput-object p5, p0, Lcom/ghome/sdk/common/GHomeApiBase$19;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$19;->this$0:Lcom/ghome/sdk/common/GHomeApiBase;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$19;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$19;->val$command:I

    iget-object v3, p0, Lcom/ghome/sdk/common/GHomeApiBase$19;->val$params:Ljava/util/Map;

    iget-object v4, p0, Lcom/ghome/sdk/common/GHomeApiBase$19;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ghome/sdk/common/GHomeApiBase;->doExtendUI(Landroid/app/Activity;ILjava/util/Map;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V

    return-void
.end method
