.class Lcom/ghomesdk/gameplus/GamePlus$8$1;
.super Ljava/lang/Object;
.source "GamePlus.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/GamePlus$8;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/GamePlus$8;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/GamePlus$8;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$8$1;->this$0:Lcom/ghomesdk/gameplus/GamePlus$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
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

    const-string p3, ""

    if-nez p1, :cond_0

    .line 635
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$8$1;->this$0:Lcom/ghomesdk/gameplus/GamePlus$8;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/GamePlus$8;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$8$1;->this$0:Lcom/ghomesdk/gameplus/GamePlus$8;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/GamePlus$8;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    const-string p2, "-10869609"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_1
    iget-object p3, p0, Lcom/ghomesdk/gameplus/GamePlus$8$1;->this$0:Lcom/ghomesdk/gameplus/GamePlus$8;

    iget-object p3, p3, Lcom/ghomesdk/gameplus/GamePlus$8;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-interface {p3, p1, p2}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
