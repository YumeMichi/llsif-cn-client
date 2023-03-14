.class Lcom/ghomesdk/gameplus/impl/ServerApi$1$1;
.super Ljava/lang/Object;
.source "ServerApi.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/impl/ServerApi$1;->callback(ILjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/impl/ServerApi$1;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/impl/ServerApi$1;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1$1;->this$0:Lcom/ghomesdk/gameplus/impl/ServerApi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1$1;->this$0:Lcom/ghomesdk/gameplus/impl/ServerApi$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1$1;->this$0:Lcom/ghomesdk/gameplus/impl/ServerApi$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    invoke-interface {p1, p3}, Lcom/ghomesdk/gameplus/callback/Callback;->callback(Ljava/util/Map;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1$1;->this$0:Lcom/ghomesdk/gameplus/impl/ServerApi$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/ghomesdk/gameplus/impl/ServerApi$1$1;->this$0:Lcom/ghomesdk/gameplus/impl/ServerApi$1;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/impl/ServerApi$1;->val$_callback:Lcom/ghomesdk/gameplus/callback/Callback;

    invoke-interface {p1, p3}, Lcom/ghomesdk/gameplus/callback/Callback;->callback(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
