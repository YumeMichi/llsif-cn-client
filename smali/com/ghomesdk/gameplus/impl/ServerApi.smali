.class public Lcom/ghomesdk/gameplus/impl/ServerApi;
.super Ljava/lang/Object;
.source "ServerApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activate(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/Callback;)V
    .locals 11

    if-eqz p1, :cond_0

    .line 51
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lcom/greport/glog/model/PhoneInfoUtil;->getInfoJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate device, upload deviceinfo> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServerApi"

    invoke-static {v3, v2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v2, "data"

    .line 56
    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "android"

    .line 57
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidId"

    .line 58
    invoke-interface {v9, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceid"

    .line 59
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    const-string v1, "device_id_server"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    .line 61
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getActiveUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v10, Lcom/ghomesdk/gameplus/impl/ServerApi$1;

    invoke-direct {v10, p2, p0, p1, v9}, Lcom/ghomesdk/gameplus/impl/ServerApi$1;-><init>(Lcom/ghomesdk/gameplus/callback/Callback;Ljava/lang/Object;Landroid/content/Context;Ljava/util/Map;)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v10}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static activateCode(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "activation"

    .line 101
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getActivateCheckUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static autoLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "autokey"

    .line 121
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "deviceid"

    .line 123
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    const-string v1, "device_id_server"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getAutoLoginUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cancelScanLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 704
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 705
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceid"

    .line 706
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "codekey"

    .line 707
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getReportCancelScanLogin()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void

    .line 702
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkCodeAuth(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p5, :cond_2

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "checkCodeGuid"

    .line 183
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "deviceid"

    .line 185
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const-string p2, "outInfo"

    .line 187
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    const-string p2, "captchaInfo"

    .line 189
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p2, "password"

    .line 191
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "supportPic"

    const-string p3, "2"

    .line 192
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :goto_0
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getCheckCodeAuthUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 176
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkCodeLogin(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p5, :cond_2

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "checkCodeGuid"

    .line 158
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "deviceid"

    .line 160
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x2

    const-string v1, "outInfo"

    if-ne p2, p3, :cond_0

    .line 162
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    .line 164
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p2, "password"

    .line 166
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "supportPic"

    const-string p3, "2"

    .line 167
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :goto_0
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    const-string p3, "device_id_server"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getCheckCodeLoginUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 151
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkCodeSendSms(Ljava/lang/Object;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/GeneralModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p8, :cond_3

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "checkCodeGuid"

    .line 133
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "phone"

    .line 134
    invoke-interface {v0, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "type"

    .line 135
    invoke-interface {v0, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "1"

    const-string p5, "sms_new"

    .line 136
    invoke-interface {v0, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "0"

    :goto_0
    const-string p5, "voiceMsg"

    .line 137
    invoke-interface {v0, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x2

    const-string p5, "outInfo"

    if-ne p2, p3, :cond_1

    .line 139
    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "supportPic"

    const-string p3, "2"

    .line 140
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    .line 142
    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p2, "checkCode"

    .line 144
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :goto_1
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getCheckCodeSendSmsUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p8}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 130
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkPayResult(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;",
            ">;)V"
        }
    .end annotation

    .line 198
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "orderid"

    .line 199
    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getPayResultUrlForOrderId()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public static checkToken(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 213
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getCheckTokenUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static daoyuAuthLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 513
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    .line 514
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "authorization"

    .line 515
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "daoyu_clientid"

    .line 516
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    const-string p3, "device_id_server"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getDaoyuAuthLoginUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 510
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deleAcctCheckSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    .line 738
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 739
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceid"

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    .line 740
    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "smscode"

    .line 741
    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->deleAcctFlowId:Ljava/lang/String;

    const-string p3, "deleteFlowId"

    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getCheckSmsCodeAcctDele()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p4, p5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 736
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deleAcctConfirm(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/DeleAcctCompleteResp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 751
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 752
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->deleAcctFlowId:Ljava/lang/String;

    const-string v2, "deleteFlowId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getConfirmAcctDele()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v0, p2}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 749
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deleAcctRealInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 726
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "idcard"

    .line 727
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "name"

    .line 728
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "deviceid"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->deleAcctFlowId:Ljava/lang/String;

    const-string p3, "deleteFlowId"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getDeleAcctCheckReal()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 724
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deleteAccountInit(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/DeleAcctIniResp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 717
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getAcctDeletionInitialize()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v0, p2}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 714
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fillRealInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "idcard"

    .line 221
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "name"

    .line 222
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getFillRealInfoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 218
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAgreementAll(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/GetAgreementVersionAContent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    .line 689
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    .line 690
    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "scene"

    .line 691
    invoke-interface {v3, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-static {p1}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "channelCode"

    invoke-interface {v3, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "platform"

    const-string p3, "android"

    .line 693
    invoke-interface {v3, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "version"

    .line 694
    invoke-interface {v3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getAgreementAll()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Z)V

    return-void

    .line 687
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAppConfiguration(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/AppConfigurationResponse;",
            ">;)V"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppConfiguration channelCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ServerApi"

    invoke-static {v0, p2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 237
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 238
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "deviceid"

    .line 239
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->DEVICE_ID_SERVER_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result p2

    const-string v0, ""

    const-string v1, "device_id_server"

    if-eqz p2, :cond_0

    .line 244
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ghomesdk/gameplus/config/Config;->DEVICE_ID_SERVER_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Lcom/ghomesdk/gameplus/utils/FileUtil;->readFileAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    .line 245
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    invoke-static {p2}, Lcom/greport/glog/GLog;->setDeviceIdServer(Ljava/lang/String;)V

    .line 246
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 248
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 251
    :cond_0
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_0
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "android_id"

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->DEVICE_OAID:Ljava/lang/String;

    const-string v1, "android_oaid"

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "device_imei"

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/greport/glog/model/PhoneInfoUtil;->checkSuFile()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "isRoot"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mac"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 261
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getAppInitConfigurationUrl()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 234
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAreaConfiguration(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 6

    .line 228
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getAreaConfigurationUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public static getErrorCodeList(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;",
            ">;)V"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getErrorCodeUrl _platform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerApi"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->APP_ID:Ljava/lang/String;

    const-string v2, "X-APP-ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->APP_VERSION:Ljava/lang/String;

    const-string v2, "X-APP-VERSION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/ManifestUtil;->getApplicationSuperChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-CHANNEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {p1}, Lcom/ghomesdk/gameplus/GamePlus;->getCPSChildChannelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-APPLICATION-CHANNEL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-PLATFORM"

    .line 296
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "support_html"

    const-string v1, "1"

    .line 297
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "support_type"

    const-string v1, "1,2,3"

    .line 298
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getErrorCodeUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 289
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLimitData(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;",
            ">;)V"
        }
    .end annotation

    .line 631
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 632
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "deviceid"

    .line 633
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getLimitDataUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void
.end method

.method public static getProductConfiguration(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V
    .locals 6

    .line 328
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getProductConfigurationUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/ghomesdk/gameplus/impl/ServerApi$3;

    invoke-direct {v5, p2}, Lcom/ghomesdk/gameplus/impl/ServerApi$3;-><init>(Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public static getTicket(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    .line 309
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "areaid"

    .line 310
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "seq"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getTicketUrl()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ghomesdk/gameplus/impl/ServerApi$2;

    invoke-direct {p3, p4}, Lcom/ghomesdk/gameplus/impl/ServerApi$2;-><init>(Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 306
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static guestLogin(Ljava/lang/Object;Landroid/content/Context;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/LogIDUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guestLogin logid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServerApi"

    invoke-static {v3, v2}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-static {v2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v2, "deviceid"

    .line 354
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "supportAutoLogin"

    const-string v2, "1"

    .line 355
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    const-string v2, "device_id_server"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getGuestLoginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v0, p2}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 344
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static guestUpgrade(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p5, :cond_2

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "guestId"

    .line 366
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "guestType"

    const-string v1, "1"

    .line 367
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "upgrade_ticket"

    .line 368
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 369
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const-string p2, "subDesc"

    .line 370
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_0
    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/LogIDUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 373
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "guestUpgrade logid = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ServerApi"

    invoke-static {p4, p3}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 375
    invoke-static {p3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    const-string p3, "deviceid"

    .line 378
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    const-string p3, "device_id_server"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getGuestUpgradeUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 362
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static logout(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 2

    const-string v0, "ServerApi"

    const-string v1, "logout"

    .line 384
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 389
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p4, p5

    .line 392
    :cond_0
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "area"

    .line 393
    invoke-interface {p5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "autokey"

    .line 394
    invoke-interface {p5, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "user_id"

    .line 395
    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getLogoutUrl()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ghomesdk/gameplus/impl/ServerApi$4;

    invoke-direct {p3, p6}, Lcom/ghomesdk/gameplus/impl/ServerApi$4;-><init>(Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    invoke-static {p0, p1, p2, p5, p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/GetDataCallback;)V

    return-void

    .line 386
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static modifyExtendAcc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;",
            ">;)V"
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyExtendAcc accName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",accDesc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerApi"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 622
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 623
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "accname"

    .line 624
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "accDesc"

    .line 625
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "deviceid"

    .line 626
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->modifyExtendAcc()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v1, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 620
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static postSign(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    .line 638
    invoke-static/range {v0 .. v8}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSign(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;Z)V

    return-void
.end method

.method public static pwdAuth(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pwdAuth phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerApi"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 413
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "phone"

    .line 415
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "password"

    .line 416
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "deviceid"

    .line 417
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "supportPic"

    const-string p3, "2"

    .line 418
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getAuthUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v1, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 411
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pwdLogin phone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerApi"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 427
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "phone"

    .line 429
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "password"

    .line 430
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "deviceid"

    .line 431
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "2"

    const-string p3, "supportPic"

    .line 432
    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "flag"

    .line 433
    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pwdLogin param device_id_server: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    const-string p3, "device_id_server"

    invoke-interface {v2, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getLoginUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v2, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 425
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static queryChannelInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 110
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "gameid"

    .line 111
    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "channelcode"

    .line 112
    invoke-interface {v5, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 113
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getQueryChannelInfoUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static queryPurchaseInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 204
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "orderid"

    .line 205
    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getPurchaseInfo()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->get(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public static querySmallAccount(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;",
            ">;)V"
        }
    .end annotation

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querySmallAccount userId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServerApi"

    invoke-static {v1, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 610
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 611
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "userId"

    .line 612
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "deviceid"

    .line 613
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->querySmallAccount()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v1, p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 608
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reportRole(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/ResultCallback;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 443
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "roleName"

    .line 444
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "level"

    .line 445
    invoke-interface {v4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "from"

    .line 446
    invoke-interface {v4, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "areaId"

    .line 447
    invoke-interface {v4, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 449
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getReportRoleUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/ghomesdk/gameplus/impl/ServerApi$5;

    invoke-direct {v5, p6}, Lcom/ghomesdk/gameplus/impl/ServerApi$5;-><init>(Lcom/ghomesdk/gameplus/callback/ResultCallback;)V

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 441
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reset()V
    .locals 0

    .line 461
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->reset()V

    return-void
.end method

.method public static resetPwdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    .line 582
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 583
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceid"

    .line 584
    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    .line 585
    invoke-interface {p4, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "sms_new"

    const-string v0, "1"

    .line 586
    invoke-interface {p4, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "code"

    .line 587
    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "group"

    const-string p5, ""

    .line 588
    invoke-interface {p4, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "phone"

    .line 589
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getResetPasswordUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p4, p6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 580
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sendSms(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/GeneralModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    .line 469
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "type"

    .line 470
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "1"

    const-string p3, "sms_new"

    .line 471
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "supportPic"

    const-string v1, "2"

    .line 472
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const-string p3, "voiceMsg"

    .line 473
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    .line 475
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getRequestSmsCodeUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 466
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setPassword(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 569
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    .line 570
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "password"

    .line 571
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "authTicket"

    .line 573
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :cond_0
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getSetPasswordUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void

    .line 566
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static smallAccountLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 598
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    .line 599
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone"

    .line 600
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    const-string v1, "device_id_server"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->smallAccountLogin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 595
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static smsAuth(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    .line 498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    .line 499
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "smscode"

    .line 500
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sms_new"

    const-string p3, "1"

    .line 501
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sms_type"

    .line 502
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "deviceid"

    .line 504
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->smsAuth()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 496
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static smsLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    .line 482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    .line 483
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "smscode"

    .line 484
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sms_new"

    const-string p3, "1"

    .line 485
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sms_type"

    .line 486
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "deviceid"

    .line 488
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    const-string p3, "device_id_server"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->smsLogin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 480
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static thirdAccountBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 646
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    .line 647
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "smscode"

    .line 648
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "type"

    const-string p3, "5"

    .line 649
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "deviceid"

    .line 651
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getThirdAccountBindPhoneUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void

    .line 644
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static thirdAccountChangePhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 660
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phone"

    .line 661
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "smscode"

    .line 662
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "type"

    const-string p3, "6"

    .line 663
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "deviceid"

    .line 665
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getThirdAccountChangePhoneUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p4}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void

    .line 658
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static thirdAccountRealInfoBindPhone(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p6, :cond_0

    .line 674
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    .line 675
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "idcard"

    .line 676
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "phone"

    .line 677
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "smscode"

    .line 678
    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "type"

    const-string p3, "5"

    .line 679
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "deviceid"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getThirdRealInfoBindPhone()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p6}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void

    .line 672
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static thirdLogin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
            "Lcom/ghomesdk/gameplus/impl/object/LoginInfoModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "company_id"

    .line 526
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "third_ticket"

    if-eqz p4, :cond_0

    const-string v1, ""

    .line 527
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "code_verify"

    .line 529
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 531
    :cond_0
    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    :goto_0
    sget-object p2, Lcom/ghomesdk/gameplus/config/Config;->MEM_DEVICE_ID_SERVER:Ljava/lang/String;

    const-string p3, "device_id_server"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getThirdAccountTicketLogin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, v0, p5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->postSecurity(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/AbstractHttpCallback;)V

    return-void

    .line 523
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateAgreement(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V
    .locals 1

    .line 539
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->AGREEMENT_URL:Ljava/lang/String;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->download(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method

.method public static updateUserGameAreaInfo(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 546
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "area"

    .line 547
    invoke-interface {v4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-static {p1}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "deviceid"

    .line 549
    invoke-interface {v4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "userid"

    .line 550
    invoke-interface {v4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 551
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const-string p2, "group"

    .line 552
    invoke-interface {v4, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_0
    invoke-static {}, Lcom/ghomesdk/gameplus/impl/RequestConstant;->getLoginAreaUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Lcom/ghomesdk/gameplus/impl/ServerApi$6;

    invoke-direct {v5}, Lcom/ghomesdk/gameplus/impl/ServerApi$6;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ghomesdk/gameplus/impl/GHomeHttp;->post(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void

    .line 544
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
