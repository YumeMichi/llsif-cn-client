.class Lcom/ghome/sdk/common/GHomeOnlineApiBase$1;
.super Ljava/lang/Object;
.source "GHomeOnlineApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeOnlineApiBase;->login(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/sdk/common/GHomeOnlineApiBase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/GHomeOnlineApiBase;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$1;->this$0:Lcom/ghome/sdk/common/GHomeOnlineApiBase;

    iput-object p2, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$1;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$1;->this$0:Lcom/ghome/sdk/common/GHomeOnlineApiBase;

    iget-object v1, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeOnlineApiBase$1;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    invoke-static {v0, v1, v2}, Lcom/ghome/sdk/common/GHomeOnlineApiBase;->access$000(Lcom/ghome/sdk/common/GHomeOnlineApiBase;Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;)Z

    return-void
.end method
