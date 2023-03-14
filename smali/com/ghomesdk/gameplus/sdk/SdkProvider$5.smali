.class Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "SdkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/sdk/SdkProvider;->requestIdentityAfterRegisterFinished(Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$isNewAccount:Z

.field final synthetic val$registerData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Ljava/util/Map;Landroid/app/Activity;Z)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->val$registerData:Ljava/util/Map;

    iput-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->val$activity:Landroid/app/Activity;

    iput-boolean p4, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->val$isNewAccount:Z

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;)V
    .locals 3

    .line 162
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdkProvider->requestIdentityAfterRegisterFinished->queryAccountIdentity code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  data:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "userId"

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 164
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->val$registerData:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;->getIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 166
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;->getNeedReport()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 167
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    iget-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->val$registerData:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->setUserID(Landroid/app/Activity;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->this$0:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->val$activity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->val$registerData:Ljava/util/Map;

    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->val$isNewAccount:Z

    invoke-static {p1, p2, p3, v0}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->access$800(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Ljava/util/Map;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;)V

    return-void
.end method
