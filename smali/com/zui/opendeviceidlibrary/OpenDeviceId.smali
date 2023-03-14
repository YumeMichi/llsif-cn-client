.class public Lcom/zui/opendeviceidlibrary/OpenDeviceId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static TAG:Ljava/lang/String; = "OpenDeviceId library"


# instance fields
.field private mCallerCallBack:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mCallerCallBack:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    return-void
.end method

.method public static synthetic access$002(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Lcom/zui/deviceidservice/IDeviceidInterface;)Lcom/zui/deviceidservice/IDeviceidInterface;
    .locals 0

    iput-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;
    .locals 0

    iget-object p0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mCallerCallBack:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    return-void
.end method

.method private logPrintE(Ljava/lang/String;)V
    .locals 0

    sget-boolean p1, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->DBG:Z

    return-void
.end method

.method private logPrintI(Ljava/lang/String;)V
    .locals 0

    sget-boolean p1, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->DBG:Z

    return-void
.end method


# virtual methods
.method public getAAID()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liufeng, getAAID package\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v3, :cond_2

    invoke-interface {v3, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getAAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v2, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->createAAIDForPackageName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v2, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getAAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "getAAID error, RemoteException!"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "input package is null!"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOAID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getOAID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getOAID error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getUDID()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getUDID error, Exception!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "getUDID error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVAID()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liufeng, getVAID package\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/zui/deviceidservice/IDeviceidInterface;->getVAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getVAID error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "input package is null!"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const-string v0, "Context is null."

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null, must be new OpenDeviceId first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mCallerCallBack:Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    new-instance p1, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;

    invoke-direct {p1, p0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;-><init>(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V

    iput-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mConnection:Landroid/content/ServiceConnection;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.zui.deviceidservice"

    const-string v0, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "bindService Successful!"

    invoke-direct {p0, p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p1, "bindService Failed!"

    invoke-direct {p0, p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSupported()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v1, :cond_0

    const-string v1, "Device support opendeviceid"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    invoke-interface {v1}, Lcom/zui/deviceidservice/IDeviceidInterface;->isSupport()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    const-string v1, "isSupport error, RemoteException!"

    invoke-direct {p0, v1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    return v0
.end method

.method public setLogEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->DBG:Z

    return-void
.end method

.method public shutdown()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "unBind Service successful"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unBind Service exception"

    invoke-direct {p0, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->logPrintE(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->mDeviceidInterface:Lcom/zui/deviceidservice/IDeviceidInterface;

    return-void
.end method
