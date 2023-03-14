.class public Lcom/ghomesdk/gameplus/login/model/QuickLoginData;
.super Ljava/lang/Object;
.source "QuickLoginData.java"


# static fields
.field public static final KEY_LOGIN_QUICKLOGIN:Ljava/lang/String; = "gl_quicklogin_data"

.field private static final MAX_QUICKLOGIN_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LoginData"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findQuickLoginItem(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->getQuickLoginModel(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p0

    .line 108
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->findQuickLoginItem(Ljava/util/List;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static findQuickLoginItem(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 178
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 179
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    if-nez v2, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 187
    :cond_2
    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method

.method public static getFirstItem(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 72
    invoke-static {p0}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->getQuickLoginModel(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 77
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 80
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    if-nez p0, :cond_2

    return-object v0

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {p0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p0, v0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getQuickLogin(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->getQuickLoginModel(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p0

    return-object p0
.end method

.method public static getQuickLoginData(Landroid/content/Context;Ljava/lang/String;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;
    .locals 2

    .line 90
    invoke-static {p0}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->getQuickLoginModel(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p0

    .line 95
    invoke-static {p0, p1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->findQuickLoginItem(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 96
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 97
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static getQuickLoginModel(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;
    .locals 4

    const-string v0, "gl_quicklogin_data"

    const-string v1, ""

    .line 150
    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 156
    :cond_0
    :try_start_0
    const-class v1, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;
    :try_end_0
    .catch Lcom/ghomesdk/gameplus/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LoginData"

    invoke-static {v3, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/gson/JsonSyntaxException;->printStackTrace()V

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-object v2

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 168
    :cond_2
    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->trimQuickLoginData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 169
    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->saveQuickLoginData(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;Ljava/util/List;)V

    return-object v0
.end method

.method public static isEmpty(Landroid/content/Context;)Z
    .locals 2

    .line 58
    invoke-static {p0}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->getQuickLoginModel(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static removeQuickLoginData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 113
    invoke-static {p0}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->getQuickLoginModel(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    .line 121
    invoke-static {v1, p1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->findQuickLoginItem(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 122
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 123
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    :cond_2
    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->saveQuickLoginData(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;Ljava/util/List;)V

    return-void
.end method

.method public static removeQuickLoginGuestData(Landroid/content/Context;)V
    .locals 4

    .line 134
    invoke-static {p0}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->getQuickLoginModel(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 139
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 140
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->saveQuickLoginData(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;Ljava/util/List;)V

    return-void
.end method

.method private static saveQuickLoginData(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->setQuickArray(Ljava/util/List;)V

    .line 200
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/gson/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gl_quicklogin_data"

    .line 201
    invoke-static {p0, p2, p1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setQuickLogin(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->getQuickLoginModel(Landroid/content/Context;)Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;

    invoke-direct {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;-><init>()V

    .line 36
    :cond_1
    invoke-virtual {v0}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->getQuickArray()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 38
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 40
    :cond_2
    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->trimQuickLoginData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-direct {v2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 43
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getGuestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->setGuestId(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->setPhoneStr(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->setUserId(Ljava/lang/String;)V

    .line 48
    :goto_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;->getAutokey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->setAutoKey(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 49
    invoke-interface {v1, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 50
    invoke-static {v1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->trimQuickLoginData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 51
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_4

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 54
    :cond_4
    invoke-static {p0, v0, p1}, Lcom/ghomesdk/gameplus/login/model/QuickLoginData;->saveQuickLoginData(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;Ljava/util/List;)V

    return-void
.end method

.method private static trimQuickLoginData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 208
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 209
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_7

    .line 210
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v2}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getPhoneStr()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v3}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v4}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getAutoKey()Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-static {v2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_1
    invoke-static {v4}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v1, -0x1

    :goto_1
    if-ltz v4, :cond_5

    .line 218
    invoke-static {v2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v5}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getPhoneStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 221
    :cond_3
    invoke-static {v3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;

    invoke-virtual {v5}, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->getGuestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-gez v4, :cond_6

    const/4 v2, 0x0

    .line 226
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method
