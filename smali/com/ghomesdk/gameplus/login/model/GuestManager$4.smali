.class Lcom/ghomesdk/gameplus/login/model/GuestManager$4;
.super Ljava/lang/Object;
.source "GuestManager.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/GuestManager;->doSetPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$4;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$4;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

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

    .line 143
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doSetPassword Callback,code = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",message = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "GuestManager"

    invoke-static {v0, p3}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$4;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$4;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->access$000(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$4;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$4;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-virtual {p3, p1, p2, v0}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onFailed(ILjava/lang/String;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    :goto_0
    return-void
.end method
