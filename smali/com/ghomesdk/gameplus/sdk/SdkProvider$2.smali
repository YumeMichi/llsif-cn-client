.class Lcom/ghomesdk/gameplus/sdk/SdkProvider$2;
.super Ljava/lang/Object;
.source "SdkProvider.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/sdk/SdkProvider;->notifyAfterPayFinished(Landroid/app/Activity;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$orderInfo:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$2;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$2;->val$orderInfo:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3
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

    .line 105
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdkProvider->notifyAfterPayFinished->getTicket  code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$2;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$2;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$2;->val$orderInfo:Ljava/util/Map;

    const-string v1, "ticket"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p2, v0, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$500(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
