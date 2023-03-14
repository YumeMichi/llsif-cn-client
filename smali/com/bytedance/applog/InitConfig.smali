.class public Lcom/bytedance/applog/InitConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/InitConfig$IpcDataChecker;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public C:Landroid/accounts/Account;

.field public D:Z

.field public E:Lcom/bytedance/applog/network/INetworkClient;

.field public F:Lcom/bytedance/applog/network/INetworkClient;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Lcom/bytedance/applog/ISensitiveInfoProvider;

.field public Q:Z

.field public R:Z

.field public S:Ljava/lang/String;

.field public T:Z

.field public U:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/bytedance/mpaas/IEncryptor;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/bytedance/applog/ILogger;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lcom/bytedance/applog/IPicker;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Lcom/bytedance/applog/UriConfig;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->m:Z

    iput v1, p0, Lcom/bytedance/applog/InitConfig;->o:I

    new-instance v2, Lcom/bytedance/applog/i1;

    invoke-direct {v2}, Lcom/bytedance/applog/i1;-><init>()V

    iput-object v2, p0, Lcom/bytedance/applog/InitConfig;->E:Lcom/bytedance/applog/network/INetworkClient;

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->G:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->I:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->J:Z

    iput-boolean v1, p0, Lcom/bytedance/applog/InitConfig;->K:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->L:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->M:Z

    const-string v1, "bd_tea_agent.db"

    iput-object v1, p0, Lcom/bytedance/applog/InitConfig;->N:Ljava/lang/String;

    const-string v1, "applog_stats"

    iput-object v1, p0, Lcom/bytedance/applog/InitConfig;->O:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->Q:Z

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->R:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/applog/InitConfig;->U:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "InitConfig"

    const-string p2, "channel is empty, please check!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->L:Z

    return v0
.end method

.method public autoStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->b:Z

    return v0
.end method

.method public clearDidAndIid(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->D:Z

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->d:Ljava/lang/String;

    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->C:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAliyunUdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->l:Z

    return v0
.end method

.method public getAppImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getClearKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->B:Ljava/util/Map;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptor()Lcom/bytedance/mpaas/IEncryptor;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->e:Lcom/bytedance/mpaas/IEncryptor;

    return-object v0
.end method

.method public getGoogleAid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->U:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->m:Z

    return v0
.end method

.method public getLogger()Lcom/bytedance/applog/ILogger;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->h:Lcom/bytedance/applog/ILogger;

    return-object v0
.end method

.method public getManifestVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersionCode()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->x:I

    return v0
.end method

.method public getNetworkClient()Lcom/bytedance/applog/network/INetworkClient;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->F:Lcom/bytedance/applog/network/INetworkClient;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->E:Lcom/bytedance/applog/network/INetworkClient;

    :goto_0
    return-object v0
.end method

.method public getNotReuqestSender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->q:Z

    return v0
.end method

.method public getPicker()Lcom/bytedance/applog/IPicker;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->k:Lcom/bytedance/applog/IPicker;

    return-object v0
.end method

.method public getPreInstallCallback()Lcom/bytedance/applog/w2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcess()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->o:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseBuild()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getSensitiveInfoProvider()Lcom/bytedance/applog/ISensitiveInfoProvider;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->P:Lcom/bytedance/applog/ISensitiveInfoProvider;

    return-object v0
.end method

.method public getSpName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->O:Ljava/lang/String;

    return-object v0
.end method

.method public getTweakedChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersionCode()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->w:I

    return v0
.end method

.method public getUriConfig()Lcom/bytedance/applog/UriConfig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->s:Lcom/bytedance/applog/UriConfig;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/InitConfig;->v:I

    return v0
.end method

.method public getVersionMinor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getZiJieCloudPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/InitConfig;->A:Ljava/lang/String;

    return-object v0
.end method

.method public isAbEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->I:Z

    return v0
.end method

.method public isAntiCheatingEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->K:Z

    return v0
.end method

.method public isAutoActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->G:Z

    return v0
.end method

.method public isAutoTrackEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->J:Z

    return v0
.end method

.method public isClearDidAndIid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->D:Z

    return v0
.end method

.method public isCongestionControlEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->M:Z

    return v0
.end method

.method public isEventFilterEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->T:Z

    return v0
.end method

.method public isImeiEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->R:Z

    return v0
.end method

.method public isMacEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->Q:Z

    return v0
.end method

.method public isPlayEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->n:Z

    return v0
.end method

.method public isSilenceInBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/InitConfig;->H:Z

    return v0
.end method

.method public putCommonHeader(Ljava/util/Map;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/applog/InitConfig;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->B:Ljava/util/Map;

    return-object p0
.end method

.method public setAbEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->I:Z

    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->C:Landroid/accounts/Account;

    return-object p0
.end method

.method public setAliyunUdid(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->j:Ljava/lang/String;

    return-object p0
.end method

.method public setAnonymous(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->l:Z

    return-object p0
.end method

.method public setAppImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->S:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->r:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->G:Z

    return-void
.end method

.method public setAutoStart(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->b:Z

    return-object p0
.end method

.method public setAutoTrackEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->J:Z

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public setCongestionControlEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->M:Z

    return-void
.end method

.method public setDbName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->N:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setEnablePlay(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->n:Z

    return-object p0
.end method

.method public setEncryptor(Lcom/bytedance/mpaas/IEncryptor;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->e:Lcom/bytedance/mpaas/IEncryptor;

    return-object p0
.end method

.method public setEventFilterEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->T:Z

    return-void
.end method

.method public setGoogleAid(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setHandleLifeCycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->L:Z

    return-void
.end method

.method public setImeiEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->R:Z

    return-void
.end method

.method public setIpcDataChecker(Lcom/bytedance/applog/InitConfig$IpcDataChecker;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->U:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setLocalTest(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->m:Z

    return-object p0
.end method

.method public setLogger(Lcom/bytedance/applog/ILogger;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->h:Lcom/bytedance/applog/ILogger;

    return-object p0
.end method

.method public setMacEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->Q:Z

    return-void
.end method

.method public setManifestVersion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->y:Ljava/lang/String;

    return-object p0
.end method

.method public setManifestVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/InitConfig;->x:I

    return-object p0
.end method

.method public setNeedAntiCheating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->K:Z

    return-void
.end method

.method public setNetworkClient(Lcom/bytedance/applog/network/INetworkClient;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->F:Lcom/bytedance/applog/network/INetworkClient;

    return-object p0
.end method

.method public setNotRequestSender(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->q:Z

    return-object p0
.end method

.method public setPicker(Lcom/bytedance/applog/IPicker;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->k:Lcom/bytedance/applog/IPicker;

    return-object p0
.end method

.method public setPreInstallChannelCallback(Lcom/bytedance/applog/w2;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    return-object p0
.end method

.method public setProcess(Z)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/bytedance/applog/InitConfig;->o:I

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setReleaseBuild(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->p:Ljava/lang/String;

    return-object p0
.end method

.method public setSensitiveInfoProvider(Lcom/bytedance/applog/ISensitiveInfoProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->P:Lcom/bytedance/applog/ISensitiveInfoProvider;

    return-void
.end method

.method public setSilenceInBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/applog/InitConfig;->H:Z

    return-void
.end method

.method public setSpName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->O:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setTweakedChannel(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->u:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdateVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/InitConfig;->w:I

    return-object p0
.end method

.method public setUriConfig(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/applog/UriConfig;->createUriConfig(I)Lcom/bytedance/applog/UriConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->s:Lcom/bytedance/applog/UriConfig;

    return-object p0
.end method

.method public setUriConfig(Lcom/bytedance/applog/UriConfig;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->s:Lcom/bytedance/applog/UriConfig;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->t:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionCode(I)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput p1, p0, Lcom/bytedance/applog/InitConfig;->v:I

    return-object p0
.end method

.method public setVersionMinor(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->z:Ljava/lang/String;

    return-object p0
.end method

.method public setZiJieCloudPkg(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/applog/InitConfig;->A:Ljava/lang/String;

    return-object p0
.end method
