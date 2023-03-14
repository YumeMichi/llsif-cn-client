.class final Lcom/ghomesdk/gameplus/impl/ServerApi$5;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "ServerApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/ServerApi;->reportRole(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/ReportRoleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$5;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/ReportRoleResponse;)V
    .locals 1

    .line 452
    iget-object p3, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$5;->val$_callback:Lcom/ghomesdk/gameplus/callback/ResultCallback;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 453
    invoke-interface {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/callback/ResultCallback;->callback(ILjava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 449
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/ReportRoleResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/impl/ServerApi$5;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/ReportRoleResponse;)V

    return-void
.end method
