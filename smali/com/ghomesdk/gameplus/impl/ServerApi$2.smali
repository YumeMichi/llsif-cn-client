.class final Lcom/ghomesdk/gameplus/impl/ServerApi$2;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "ServerApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/ServerApi;->getTicket(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/GetTicketResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$2;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetTicketResponse;)V
    .locals 2

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 318
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/GetTicketResponse;->getTicket()Ljava/lang/String;

    move-result-object p3

    const-string v1, "ticket"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :cond_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$2;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    if-eqz p3, :cond_1

    .line 321
    invoke-interface {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 313
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/GetTicketResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/impl/ServerApi$2;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/GetTicketResponse;)V

    return-void
.end method
