.class public Lcom/ghomesdk/gameplus/impl/AgreementUtilNew;
.super Ljava/lang/Object;
.source "AgreementUtilNew.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgreementUtilNew"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAgreementPrivacy(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "KEY_AGREEMENT_SECOND_CONTENT"

    const-string v1, ""

    .line 17
    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAgreementPrivacyUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "KEY_AGREEMENT_PRIVACY_URL"

    const-string v1, ""

    .line 21
    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAgreementService(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "KEY_AGREEMENT_FIRST_CONTENT"

    const-string v1, ""

    .line 13
    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAgreementServiceUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "KEY_AGREEMENT_SERVICE_URL"

    const-string v1, ""

    .line 25
    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updateAgreementVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "KEY_AGREEMENT_VERSION_NEW"

    .line 29
    invoke-static {p0, v0, p1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_AGREEMENT_SERVICE_URL"

    .line 31
    invoke-static {p0, p1, p2}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KEY_AGREEMENT_PRIVACY_URL"

    .line 32
    invoke-static {p0, p1, p3}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->setSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
