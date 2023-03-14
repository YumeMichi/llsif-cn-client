.class final Lcom/ghomesdk/gameplus/impl/ServerApi$3;
.super Ljava/lang/Object;
.source "ServerApi.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/ServerApi;->getProductConfiguration(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/GetDataCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$3;->val$_callback:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$3;->val$_callback:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const-string v0, "data"

    .line 334
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$3;->val$_callback:Lcom/ghomesdk/gameplus/callback/GetDataCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/ghomesdk/gameplus/callback/GetDataCallback;->callback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
