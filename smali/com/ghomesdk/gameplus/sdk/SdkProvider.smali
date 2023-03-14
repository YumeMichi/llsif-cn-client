.class public Lcom/ghomesdk/gameplus/sdk/SdkProvider;
.super Ljava/lang/Object;
.source "SdkProvider.java"


# static fields
.field private static final DATA_TYPE_CHANGE_GAME_STAGE:I = 0x2

.field private static final DATA_TYPE_UPDATE_ROLE_LEVEL:I = 0x1

.field private static final EVENT_TYPE_CREATE_ORDER:I = 0x5

.field private static final EVENT_TYPE_FIRST_RECHARGE:I = 0x6

.field private static final EVENT_TYPE_INIT:I = 0x1

.field private static final EVENT_TYPE_LOGIN:I = 0x3

.field private static final EVENT_TYPE_PASS_GUID:I = 0x4

.field private static final EVENT_TYPE_PAY_SUCCESS:I = 0x7

.field private static final EVENT_TYPE_REGISTER:I = 0x2

.field private static final INSTANCE:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

.field private static final TAG:Ljava/lang/String; = "SdkProvider"


# instance fields
.field private mEnable:Z

.field private mEnableDataTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableEventTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSdkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/sdk/Sdk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;-><init>()V

    sput-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->INSTANCE:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableEventTypes:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableDataTypes:Ljava/util/List;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    .line 46
    invoke-static {}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->createSdkInstances()[Lcom/ghomesdk/gameplus/sdk/Sdk;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ghomesdk/gameplus/sdk/SdkProvider;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableEventTypes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableEventTypes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableDataTypes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->initSDKs(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->requestPayInfoAndNotify(Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ghomesdk/gameplus/sdk/SdkProvider;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->requestIdentityAfterRegisterFinished(Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Ljava/util/Map;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->submitRegisterLogin(Landroid/app/Activity;Ljava/util/Map;Z)V

    return-void
.end method

.method private static createSdkInstances()[Lcom/ghomesdk/gameplus/sdk/Sdk;
    .locals 3

    const/4 v0, 0x2

    .line 327
    new-array v0, v0, [Lcom/ghomesdk/gameplus/sdk/Sdk;

    new-instance v1, Lcom/ghomesdk/gameplus/sdk/HeadlineSdk;

    const-string v2, "headline"

    invoke-direct {v1, v2}, Lcom/ghomesdk/gameplus/sdk/HeadlineSdk;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;

    const-string v2, "reyun"

    invoke-direct {v1, v2}, Lcom/ghomesdk/gameplus/sdk/ReyunSdk;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getInstance()Lcom/ghomesdk/gameplus/sdk/SdkProvider;
    .locals 1

    .line 50
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->INSTANCE:Lcom/ghomesdk/gameplus/sdk/SdkProvider;

    return-object v0
.end method

.method private getSdkByName(Ljava/lang/String;)Lcom/ghomesdk/gameplus/sdk/Sdk;
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 335
    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/sdk/Sdk;->getConfigTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private initSDKs(Landroid/app/Activity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->getEnable()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->getThirdSdkName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->getSdkByName(Ljava/lang/String;)Lcom/ghomesdk/gameplus/sdk/Sdk;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;->toConfigMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/ghomesdk/gameplus/sdk/Sdk;->init(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private requestIdentityAfterRegisterFinished(Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$5;-><init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Ljava/util/Map;Landroid/app/Activity;Z)V

    invoke-static {p0, p1, p3, v0}, Lcom/ghomesdk/gameplus/impl/SdkServerApi;->queryAccountIdentity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method private requestPayInfoAndNotify(Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdkProvider->requestPayInfoAndNotify->orderInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    if-eqz p2, :cond_0

    const-string v1, "order_id"

    .line 114
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz p2, :cond_1

    const-string v0, "action_name"

    .line 115
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    const/4 v6, 0x7

    .line 116
    new-instance v7, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;

    invoke-direct {v7, p0, p2, v0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$3;-><init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Ljava/util/Map;Ljava/lang/String;Landroid/app/Activity;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lcom/ghomesdk/gameplus/impl/SdkServerApi;->queryOrderPurchase(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method private submitRegisterLogin(Landroid/app/Activity;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 176
    sget-object p3, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v0, "SdkProvider ->submitRegisterLogin -> register"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableEventTypes:Ljava/util/List;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 179
    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->register(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    .line 182
    :cond_1
    sget-object p3, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v0, "SdkProvider -> submitRegisterLogin -> login"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableEventTypes:Ljava/util/List;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    return-void

    .line 184
    :cond_2
    iget-object p3, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 185
    invoke-virtual {v0, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->login(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public checkoutOrder(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 243
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->checkoutOrder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableEventTypes:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "orderJson"

    .line 246
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;

    if-nez v0, :cond_2

    return-void

    .line 250
    :cond_2
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->AREA_ID:Ljava/lang/String;

    new-instance v3, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$6;-><init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Lcom/ghomesdk/gameplus/pay/FromWebOrderInfo;Ljava/util/Map;)V

    invoke-static {p1, p1, v1, v2, v3}, Lcom/ghomesdk/gameplus/GamePlus;->my_getTicket(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 2

    .line 54
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$1;-><init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;)V

    invoke-static {p0, p1, v0}, Lcom/ghomesdk/gameplus/impl/SdkServerApi;->initialize(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V

    return-void
.end method

.method public notifyAfterPayFinished(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->notifyAfterPayFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableEventTypes:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 102
    :cond_1
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->AREA_ID:Ljava/lang/String;

    new-instance v2, Lcom/ghomesdk/gameplus/sdk/SdkProvider$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$2;-><init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Ljava/util/Map;)V

    invoke-static {p1, p1, v0, v1, v2}, Lcom/ghomesdk/gameplus/GamePlus;->my_getTicket(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method public notifyAfterRegisterFinished(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->notifyAfterRegisterFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "isNewUser"

    .line 147
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->AREA_ID:Ljava/lang/String;

    new-instance v3, Lcom/ghomesdk/gameplus/sdk/SdkProvider$4;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/ghomesdk/gameplus/sdk/SdkProvider$4;-><init>(Lcom/ghomesdk/gameplus/sdk/SdkProvider;Landroid/app/Activity;Ljava/util/Map;Z)V

    invoke-static {p1, p1, v1, v2, v3}, Lcom/ghomesdk/gameplus/GamePlus;->my_getTicket(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    return-void
.end method

.method public onApplicationCreate(Landroid/content/Context;Landroid/app/Application;)V
    .locals 2

    .line 84
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->onApplicationOnCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 86
    invoke-virtual {v1, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->onApplicationCreate(Landroid/content/Context;Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 2

    .line 320
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 322
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/sdk/Sdk;->onCreate(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    .line 299
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 301
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/sdk/Sdk;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    .line 285
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 287
    invoke-virtual {v1, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    .line 306
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 308
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/sdk/Sdk;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    .line 278
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 280
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/sdk/Sdk;->onRestart(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    .line 313
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 315
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/sdk/Sdk;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 2

    .line 271
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 273
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/sdk/Sdk;->onStart(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    .line 292
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 294
    invoke-virtual {v1, p1}, Lcom/ghomesdk/gameplus/sdk/Sdk;->onStop(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUserID(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->setUserID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 94
    invoke-virtual {v1, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->setUserID(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public submitDataForChangeGameStage(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->submitDataForChangeGameStage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableDataTypes:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 203
    invoke-virtual {v1, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->changeGameStage(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public submitDataForCreateRole(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->submitDataForCreateRole"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 194
    invoke-virtual {v1, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->createRole(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public submitDataForEnterServer(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->submitDataForEnterServer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 220
    invoke-virtual {v1, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->enterServer(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public submitDataForUpdateRoleLevel(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->submitDataForUpdateRoleLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableDataTypes:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 212
    invoke-virtual {v1, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->updateRoleLevel(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public submitFirstRecharge(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 225
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->submitFirstRecharge"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableEventTypes:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 229
    invoke-virtual {v1, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->rechargeFirstTime(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public submitPassNewGuid(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 234
    iget-boolean v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    sget-object v0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->TAG:Ljava/lang/String;

    const-string v1, "SdkProvider->submitPassNewGuid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mEnableEventTypes:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/ghomesdk/gameplus/sdk/SdkProvider;->mSdkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/sdk/Sdk;

    .line 238
    invoke-virtual {v1, p1, p2}, Lcom/ghomesdk/gameplus/sdk/Sdk;->passNewGuid(Landroid/app/Activity;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method
