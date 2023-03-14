.class final Lcom/ghomesdk/gameplus/impl/ServerApi$4;
.super Ljava/lang/Object;
.source "ServerApi.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/GetDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/ServerApi;->logout(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$4;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 400
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 401
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$4;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0, p1, p2, p3}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
