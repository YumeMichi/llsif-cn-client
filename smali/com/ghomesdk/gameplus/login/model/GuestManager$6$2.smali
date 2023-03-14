.class Lcom/ghomesdk/gameplus/login/model/GuestManager$6$2;
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

    .line 245
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6$2;->this$1:Lcom/ghomesdk/gameplus/login/model/GuestManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6$2;->this$1:Lcom/ghomesdk/gameplus/login/model/GuestManager$6;

    iget-object p1, p1, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->this$0:Lcom/ghomesdk/gameplus/login/model/GuestManager;

    iget-object p2, p0, Lcom/ghomesdk/gameplus/login/model/GuestManager$6$2;->this$1:Lcom/ghomesdk/gameplus/login/model/GuestManager$6;

    iget-object p2, p2, Lcom/ghomesdk/gameplus/login/model/GuestManager$6;->val$_callback:Lcom/ghomesdk/gameplus/login/model/StatusCallback;

    invoke-static {p1, p2}, Lcom/ghomesdk/gameplus/login/model/GuestManager;->access$300(Lcom/ghomesdk/gameplus/login/model/GuestManager;Lcom/ghomesdk/gameplus/login/model/StatusCallback;)V

    return-void
.end method
