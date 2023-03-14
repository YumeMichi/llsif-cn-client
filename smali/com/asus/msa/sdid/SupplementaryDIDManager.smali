.class public Lcom/asus/msa/sdid/SupplementaryDIDManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "SupplementaryDIDManager"


# instance fields
.field public isBinded:Z

.field public mContext:Landroid/content/Context;

.field public mDidService:Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;

.field public mListener:Lcom/asus/msa/sdid/IDIDBinderStatusListener;

.field public mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->isBinded:Z

    new-instance v0, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;

    invoke-direct {v0, p0}, Lcom/asus/msa/sdid/SupplementaryDIDManager$1;-><init>(Lcom/asus/msa/sdid/SupplementaryDIDManager;)V

    iput-object v0, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->DEBUG:Z

    return v0
.end method

.method public static synthetic access$102(Lcom/asus/msa/sdid/SupplementaryDIDManager;Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;
    .locals 0

    iput-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mDidService:Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/asus/msa/sdid/SupplementaryDIDManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/asus/msa/sdid/SupplementaryDIDManager;->notifyAllListeners(Z)V

    return-void
.end method

.method private notifyAllListeners(Z)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mListener:Lcom/asus/msa/sdid/IDIDBinderStatusListener;

    iget-object v0, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mDidService:Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;

    invoke-interface {p1, v0}, Lcom/asus/msa/sdid/IDIDBinderStatusListener;->onSuccess(Lcom/asus/msa/SupplementaryDID/IDidAidlInterface;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mListener:Lcom/asus/msa/sdid/IDIDBinderStatusListener;

    invoke-interface {p1}, Lcom/asus/msa/sdid/IDIDBinderStatusListener;->onError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify did bind status error :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public deInit()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->isBinded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/asus/msa/sdid/SupplementaryDIDManager;->DEBUG:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->isBinded:Z

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public init(Lcom/asus/msa/sdid/IDIDBinderStatusListener;)V
    .locals 3

    :try_start_0
    iput-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mListener:Lcom/asus/msa/sdid/IDIDBinderStatusListener;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.asus.msa.action.ACCESS_DID"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.asus.msa.SupplementaryDID"

    const-string v2, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-boolean p1, Lcom/asus/msa/sdid/SupplementaryDIDManager;->DEBUG:Z

    iget-object p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/asus/msa/sdid/SupplementaryDIDManager;->isBinded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/asus/msa/sdid/SupplementaryDIDManager;->notifyAllListeners(Z)V

    :goto_0
    return-void
.end method

.method public showLog(Z)V
    .locals 0

    sput-boolean p1, Lcom/asus/msa/sdid/SupplementaryDIDManager;->DEBUG:Z

    return-void
.end method
