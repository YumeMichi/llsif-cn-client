.class Lcom/gsk/api/GskWebApi$SmsHandler;
.super Landroid/os/Handler;
.source "GskWebApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsk/api/GskWebApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsHandler"
.end annotation


# instance fields
.field private callback:Ljava/lang/String;

.field private timerCallback:Ljava/lang/Runnable;

.field private webApi:Lcom/gsk/api/GskWebApi;


# direct methods
.method public constructor <init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V
    .locals 2

    .line 604
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$SmsHandler;->webApi:Lcom/gsk/api/GskWebApi;

    .line 606
    iput-object p2, p0, Lcom/gsk/api/GskWebApi$SmsHandler;->callback:Ljava/lang/String;

    .line 608
    new-instance p2, Lcom/gsk/api/GskWebApi$SmsHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/gsk/api/GskWebApi$SmsHandler$1;-><init>(Lcom/gsk/api/GskWebApi$SmsHandler;Lcom/gsk/api/GskWebApi;)V

    iput-object p2, p0, Lcom/gsk/api/GskWebApi$SmsHandler;->timerCallback:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, p2, v0, v1}, Lcom/gsk/api/GskWebApi$SmsHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$SmsHandler;->timerCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0, v0}, Lcom/gsk/api/GskWebApi$SmsHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 625
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;

    .line 626
    invoke-static {}, Lcom/gsk/api/GskWebApi;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSmsHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p1}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->getSmsbody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gsk/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:%s(\"%s\",\"%s\",\"%s\")"

    const/4 v1, 0x4

    .line 629
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gsk/api/GskWebApi$SmsHandler;->callback:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 630
    invoke-virtual {p1}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->getSmsbody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gsk/api/GskWebApi;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->getDate()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 629
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 631
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$SmsHandler;->webApi:Lcom/gsk/api/GskWebApi;

    invoke-static {p1}, Lcom/gsk/api/GskWebApi;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 634
    invoke-static {}, Lcom/gsk/api/GskWebApi;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
