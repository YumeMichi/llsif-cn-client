.class Lcom/ghomesdk/gameplus/login/model/GuestManager$6$1;
.super Ljava/lang/Object;
.source "GuestManager.java"

# interfaces
.implements Lcom/ghomesdk/gameplus/callback/ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghomesdk/gameplus/login/model/GuestManager$6;


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/login/model/GuestManager$6;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6$1;->this$1:Lcom/ghomesdk/gameplus/login/model/GuestManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 2

    .line 240
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6$1;->this$1:Lcom/ghomesdk/gameplus/login/model/GuestManager$6;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6$1;->this$1:Lcom/ghomesdk/gameplus/login/model/GuestManager$6;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->onCallback(ILcom/ghomesdk/gameplus/login/model/StatusCallback;Ljava/util/Map;)V

    return-void
.end method
