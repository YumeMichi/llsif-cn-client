.class Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "SdkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/sdk/SdkProvider;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;)V
    .locals 3

    .line 58
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdkProvider->init->code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", data: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->getEventTypes()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$102(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Ljava/util/List;)Ljava/util/List;

    .line 63
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->getDataTypes()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$202(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Ljava/util/List;)Ljava/util/List;

    .line 64
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->getNeedReport()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    invoke-static {p2}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$100(Lcom/ghomesdk/gameplus/sdk/SdkProvider;)Ljava/util/List;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$302(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Z)Z

    .line 65
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->getReportSdkConfig()Ljava/util/List;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$400(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;)V

    return-void
.end method
