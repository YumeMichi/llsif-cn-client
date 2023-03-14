.class final Lcom/ghomesdk/gameplus/GamePlus$1;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GamePlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/GamePlus;->my_initErrorCodeList(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$_context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$1;->val$_context:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;)V
    .locals 3

    .line 165
    sget-object v0, Lcom/ghomesdk/gameplus/GamePlus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getErrorCodeList code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$1;->val$_context:Landroid/app/Activity;

    invoke-static {p1, p3}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->updateErrorCodeList(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/GamePlus$1;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;)V

    return-void
.end method
