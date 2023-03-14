.class Lcom/gsk/api/GskWebApi$9;
.super Landroid/os/Handler;
.source "GskWebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi;->goAlipay(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/api/GskWebApi;


# direct methods
.method constructor <init>(Lcom/gsk/api/GskWebApi;Landroid/os/Looper;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$9;->this$0:Lcom/gsk/api/GskWebApi;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 445
    :cond_0
    new-instance v0, Lcom/gsk/PayResult;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/gsk/PayResult;-><init>(Ljava/util/Map;)V

    .line 447
    invoke-virtual {v0}, Lcom/gsk/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const-string v4, "javascript:%s(%s, \"%s\")"

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/gsk/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "9000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 448
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/gsk/api/GskWebApi;->access$400()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, ""

    aput-object v0, p1, v1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 450
    :cond_1
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/gsk/api/GskWebApi;->access$400()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    aput-object v0, p1, v1

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 452
    :goto_0
    invoke-static {p1}, Lcom/gsk/api/GskWebApi;->access$000(Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/gsk/api/GskWebApi;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
