.class final Lcom/ghome/sdk/common/GHomeApiBase$28;
.super Ljava/lang/Object;
.source "GHomeApiBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/sdk/common/GHomeApiBase;->doCallback(Landroid/app/Activity;Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apiMethodName:Ljava/lang/String;

.field final synthetic val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

.field final synthetic val$code:I

.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$newmsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/sdk/common/IGHomeApi$Callback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 968
    iput-object p1, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    iput p2, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$code:I

    iput-object p3, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$apiMethodName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$msg:Ljava/lang/String;

    iput-object p5, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$newmsg:Ljava/lang/String;

    iput-object p6, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 970
    iget-object v0, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$callback:Lcom/ghome/sdk/common/IGHomeApi$Callback;

    if-eqz v0, :cond_2

    .line 972
    iget v1, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$code:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$apiMethodName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "writtenOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$msg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$newmsg:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Lcom/ghome/sdk/common/GHomeApiBase$28;->val$data:Ljava/util/Map;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-interface {v0, v1, v2, v3}, Lcom/ghome/sdk/common/IGHomeApi$Callback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method
