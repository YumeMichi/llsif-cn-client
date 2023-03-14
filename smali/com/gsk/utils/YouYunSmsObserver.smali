.class public Lcom/gsk/utils/YouYunSmsObserver;
.super Landroid/database/ContentObserver;
.source "YouYunSmsObserver.java"


# static fields
.field private static final MAX_COUNT:I = 0x1

.field private static START_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "YouYunSmsObserver"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 28
    iput-object p2, p0, Lcom/gsk/utils/YouYunSmsObserver;->mResolver:Landroid/content/ContentResolver;

    .line 29
    iput-object p1, p0, Lcom/gsk/utils/YouYunSmsObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private setStartId(I)V
    .locals 1

    .line 51
    sget v0, Lcom/gsk/utils/YouYunSmsObserver;->START_ID:I

    if-le p1, v0, :cond_0

    .line 52
    sput p1, Lcom/gsk/utils/YouYunSmsObserver;->START_ID:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 34
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/gsk/utils/YouYunSmsObserver;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    sget v1, Lcom/gsk/utils/YouYunSmsObserver;->START_ID:I

    invoke-static {p1, v0, v1}, Lcom/gsk/utils/YouYunSmsHelper;->getAll(Landroid/content/ContentResolver;II)Ljava/util/List;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;

    .line 39
    invoke-virtual {v0}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/gsk/utils/YouYunSmsObserver;->setStartId(I)V

    .line 40
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 41
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 42
    sget-object v2, Lcom/gsk/utils/YouYunSmsObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read sms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/gsk/utils/YouYunSmsObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    sget-object v0, Lcom/gsk/utils/YouYunSmsObserver;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
