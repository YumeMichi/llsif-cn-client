.class public Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;
.super Ljava/lang/Object;
.source "ErrorCodeUtil.java"


# static fields
.field public static final ERROR_AGREE_PORTROL:Ljava/lang/String; = "-10869619"

.field public static final ERROR_APP_LOGIN_BTN_TXT:Ljava/lang/String; = "10298300"

.field public static final ERROR_APP_NOT_INSTALLED_BTN_TXT:Ljava/lang/String; = "10298322"

.field public static final ERROR_APP_NOT_INSTALLED_MSG:Ljava/lang/String; = "10298313"

.field public static final ERROR_APP_NOT_INSTALLED_TITLE:Ljava/lang/String; = "10298312"

.field public static final ERROR_BIND_GUEST_BTN_TXT:Ljava/lang/String; = "10298321"

.field public static final ERROR_BIND_GUEST_MSG:Ljava/lang/String; = "10298311"

.field public static final ERROR_CHANNEL_RETURN:Ljava/lang/String; = "-10869603"

.field public static final ERROR_CHECK_NETWORK:Ljava/lang/String; = "-10869628"

.field public static final ERROR_CHECK_ORDER_CANCEL:Ljava/lang/String; = "-10869641"

.field public static final ERROR_CODE_LOGIN_CANCEL:Ljava/lang/String; = "-100"

.field public static final ERROR_CODE_QR_CANCELED:Ljava/lang/String; = "-10869640"

.field public static final ERROR_CODE_QR_FORMAT_ERROR:Ljava/lang/String; = "-10869645"

.field public static final ERROR_CODE_QR_LOGIN_SUCCESS:Ljava/lang/String; = "-10869637"

.field public static final ERROR_CODE_QR_PAY_SUCCESS:Ljava/lang/String; = "-10869638"

.field public static final ERROR_CODE_QR_RESULT:Ljava/lang/String; = "-10869639"

.field public static final ERROR_CODE_QR_UNKNOWN:Ljava/lang/String; = "-10869644"

.field public static final ERROR_CODE_SUCCESS:Ljava/lang/String; = "0"

.field public static final ERROR_GETTICKET_FAILED:Ljava/lang/String; = "-10869620"

.field public static final ERROR_GUEST_CANNOT_PAY:Ljava/lang/String; = "-10869625"

.field public static final ERROR_GUEST_GLOBAL_RETURN:Ljava/lang/String; = "-10869624"

.field public static final ERROR_GUEST_ORDERID_NOT_EXIT:Ljava/lang/String; = "-10869631"

.field public static final ERROR_GUEST_ORDERID_NOT_FINISH:Ljava/lang/String; = "-10869632"

.field public static final ERROR_GUEST_ORDERID_NOT_PASS:Ljava/lang/String; = "-10869633"

.field public static final ERROR_GUEST_UPDATE_FAIL:Ljava/lang/String; = "-10869626"

.field public static final ERROR_HANDSHAKE_FAILED:Ljava/lang/String; = "-10869623"

.field public static final ERROR_INIT_FAILED:Ljava/lang/String; = "-10869610"

.field public static final ERROR_INIT_NOT_FINISHED:Ljava/lang/String; = "-10869611"

.field public static final ERROR_LOGIN_FAILED:Ljava/lang/String; = "-10869608"

.field public static final ERROR_LOGIN_PROCESSING:Ljava/lang/String; = "-10869643"

.field public static final ERROR_LOGOUT_FAILED:Ljava/lang/String; = "-10869622"

.field public static final ERROR_LOGOUT_FIRST:Ljava/lang/String; = "-10869618"

.field public static final ERROR_MESSAGE_HASSEND:Ljava/lang/String; = "-10869627"

.field public static final ERROR_NETWORK_TIMEOUT:Ljava/lang/String; = "-10869601"

.field public static final ERROR_NOT_GUEST:Ljava/lang/String; = "-10869642"

.field public static final ERROR_NO_AREA_CODE:Ljava/lang/String; = "-1086977"

.field public static final ERROR_ONEKEY_LOGIN_SENDMSG_FAILED:Ljava/lang/String; = "-10869621"

.field public static final ERROR_OPEN_GUEST_FIRST:Ljava/lang/String; = "-10869617"

.field public static final ERROR_OPERATION_NOT_SUPPORTED:Ljava/lang/String; = "-10869613"

.field public static final ERROR_PARAMS_ERROR:Ljava/lang/String; = "-10869612"

.field public static final ERROR_PAY_CANCEL:Ljava/lang/String; = "-10869609"

.field public static final ERROR_PAY_FAILED:Ljava/lang/String; = "-10869604"

.field public static final ERROR_PAY_RESULT_NOT_GET:Ljava/lang/String; = "-10869605"

.field public static final ERROR_PAY_SUCCESS_NOT_SEND_GOODS:Ljava/lang/String; = "-10869606"

.field public static final ERROR_REGISTER_FAILED:Ljava/lang/String; = "-10869615"

.field public static final ERROR_REPEAT_PURCHASE_NOT_PERMITTED:Ljava/lang/String; = "-10869614"

.field public static final ERROR_SERVER_RETURN:Ljava/lang/String; = "-10869602"

.field public static final ERROR_SMSLOGIN_FAILED:Ljava/lang/String; = "-10869630"

.field public static final ERROR_SMS_PAY_CANCEL:Ljava/lang/String; = "-10869635"

.field public static final ERROR_SMS_PAY_FAILED:Ljava/lang/String; = "-10869634"

.field public static final ERROR_SMS_PAY_HANDLE:Ljava/lang/String; = "-10869636"

.field public static final ERROR_TOKEN_OVERDUE:Ljava/lang/String; = "-10869616"

.field public static final ERROR_TYPE_ALERT:I = 0x1

.field public static final ERROR_TYPE_MSG:I = 0x3

.field public static final ERROR_TYPE_THOST:I = 0x2

.field public static final ERROR_USER_CANCEL:Ljava/lang/String; = "-10869629"

.field public static final ERROR_USER_EXISTED:Ljava/lang/String; = "-10517005"

.field public static final ERROR_USER_NOT_LOGIN:Ljava/lang/String; = "-10869607"

.field private static final TAG:Ljava/lang/String; = "ErrorCodeUtil"

.field public static errorCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addlocalDataToList(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;",
            ">;)V"
        }
    .end annotation

    .line 129
    new-instance v7, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v1, "0"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "\u64cd\u4f5c\u6210\u529f\u3002"

    const-string v5, "\u64cd\u4f5c\u6210\u529f\u3002"

    const-string v6, "\u64cd\u4f5c\u6210\u529f\u3002"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-100"

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v12, "\u767b\u5f55\u5df2\u53d6\u6d88\u3002"

    const-string v13, "\u767b\u5f55\u5df2\u53d6\u6d88\u3002"

    const-string v14, "\u767b\u5f55\u5df2\u53d6\u6d88\u3002"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869601"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    const-string v6, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    const-string v7, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869602"

    const-string v12, "\u670d\u52a1\u7aef\u9519\u8bef\u3002"

    const-string v13, "\u670d\u52a1\u7aef\u9519\u8bef\u3002"

    const-string v14, "\u670d\u52a1\u7aef\u9519\u8bef\u3002"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869603"

    const-string v5, "\u6e20\u9053\u65b9\u9519\u8bef\u3002"

    const-string v6, "\u6e20\u9053\u65b9\u9519\u8bef\u3002"

    const-string v7, "\u6e20\u9053\u65b9\u9519\u8bef\u3002"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869604"

    const-string v12, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    const-string v13, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    const-string v14, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869605"

    const-string v5, "\u652f\u4ed8\u6682\u672a\u6210\u529f\u3002"

    const-string v6, "\u652f\u4ed8\u6682\u672a\u6210\u529f\u3002"

    const-string v7, "\u652f\u4ed8\u6682\u672a\u6210\u529f\u3002"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869606"

    const-string v12, "\u652f\u4ed8\u6682\u672a\u6210\u529f\uff0c\u5982\u6709\u95ee\u9898\u8bf7\u8054\u7cfb\u5ba2\u670d\uff01"

    const-string v13, "\u652f\u4ed8\u6682\u672a\u6210\u529f\uff0c\u5982\u6709\u95ee\u9898\u8bf7\u8054\u7cfb\u5ba2\u670d\uff01"

    const-string v14, "\u652f\u4ed8\u6682\u672a\u6210\u529f\uff0c\u5982\u6709\u95ee\u9898\u8bf7\u8054\u7cfb\u5ba2\u670d\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869607"

    const-string v5, "\u8bf7\u5148\u767b\u5f55\uff01"

    const-string v6, "\u8bf7\u5148\u767b\u5f55\uff01"

    const-string v7, "\u8bf7\u5148\u767b\u5f55\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869608"

    const-string v12, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    const-string v13, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    const-string v14, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869609"

    const-string v5, "\u53d6\u6d88\u652f\u4ed8\uff01"

    const-string v6, "\u53d6\u6d88\u652f\u4ed8\uff01"

    const-string v7, "\u53d6\u6d88\u652f\u4ed8\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869610"

    const-string v12, "\u521d\u59cb\u5316\u5931\u8d25\uff01"

    const-string v13, "\u521d\u59cb\u5316\u5931\u8d25\uff01"

    const-string v14, "\u521d\u59cb\u5316\u5931\u8d25\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869611"

    const-string v5, "\u521d\u59cb\u5316\u672a\u5b8c\u6210\uff01"

    const-string v6, "\u521d\u59cb\u5316\u672a\u5b8c\u6210\uff01"

    const-string v7, "\u521d\u59cb\u5316\u672a\u5b8c\u6210\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869612"

    const-string v12, "\u53c2\u6570\u9519\u8bef\uff01"

    const-string v13, "\u53c2\u6570\u9519\u8bef\uff01"

    const-string v14, "\u53c2\u6570\u9519\u8bef\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869613"

    const-string v5, "\u64cd\u4f5c\u4e0d\u652f\u6301\uff01"

    const-string v6, "\u64cd\u4f5c\u4e0d\u652f\u6301\uff01"

    const-string v7, "\u64cd\u4f5c\u4e0d\u652f\u6301\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869614"

    const-string v12, "\u8be5\u5546\u54c1\u4e0d\u53ef\u91cd\u590d\u8d2d\u4e70\uff01"

    const-string v13, "\u8be5\u5546\u54c1\u4e0d\u53ef\u91cd\u590d\u8d2d\u4e70\uff01"

    const-string v14, "\u8be5\u5546\u54c1\u4e0d\u53ef\u91cd\u590d\u8d2d\u4e70\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869615"

    const-string v5, "\u6ce8\u518c\u5931\u8d25\uff01"

    const-string v6, "\u6ce8\u518c\u5931\u8d25\uff01"

    const-string v7, "\u6ce8\u518c\u5931\u8d25\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869616"

    const-string v12, "token\u5df2\u8fc7\u671f\uff01"

    const-string v13, "token\u5df2\u8fc7\u671f\uff01"

    const-string v14, "token\u5df2\u8fc7\u671f\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869617"

    const-string v5, "\u8bf7\u5148\u6253\u5f00\u6e38\u5ba2\u529f\u80fd\uff01"

    const-string v6, "\u8bf7\u5148\u6253\u5f00\u6e38\u5ba2\u529f\u80fd\uff01"

    const-string v7, "\u8bf7\u5148\u6253\u5f00\u6e38\u5ba2\u529f\u80fd\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869618"

    const-string v12, "\u8bf7\u5148\u6ce8\u9500\uff01"

    const-string v13, "\u8bf7\u5148\u6ce8\u9500\uff01"

    const-string v14, "\u8bf7\u5148\u6ce8\u9500\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869619"

    const-string v5, "\u8bf7\u5148\u540c\u610f\u534f\u8bae\uff01"

    const-string v6, "\u8bf7\u5148\u540c\u610f\u534f\u8bae\uff01"

    const-string v7, "\u8bf7\u5148\u540c\u610f\u534f\u8bae\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869620"

    const-string v12, "\u83b7\u53d6ticket\u5931\u8d25\uff01"

    const-string v13, "\u83b7\u53d6ticket\u5931\u8d25\uff01"

    const-string v14, "\u83b7\u53d6ticket\u5931\u8d25\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869621"

    const-string v5, "\u53d1\u9001\u77ed\u4fe1\u5931\u8d25\uff01"

    const-string v6, "\u53d1\u9001\u77ed\u4fe1\u5931\u8d25\uff01"

    const-string v7, "\u53d1\u9001\u77ed\u4fe1\u5931\u8d25\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869622"

    const-string v12, "\u6ce8\u9500\u5931\u8d25\uff01"

    const-string v13, "\u6ce8\u9500\u5931\u8d25\uff01"

    const-string v14, "\u6ce8\u9500\u5931\u8d25\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869623"

    const-string v5, "\u63e1\u624b\u5931\u8d25\uff01"

    const-string v6, "\u63e1\u624b\u5931\u8d25\uff01"

    const-string v7, "\u63e1\u624b\u5931\u8d25\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869624"

    const-string v12, "\u6e38\u5ba2\u5347\u7ea7\u8d26\u53f7\u767b\u9646\u6210\u529f\uff01"

    const-string v13, "\u6e38\u5ba2\u5347\u7ea7\u8d26\u53f7\u767b\u9646\u6210\u529f\uff01"

    const-string v14, "\u6e38\u5ba2\u5347\u7ea7\u8d26\u53f7\u767b\u9646\u6210\u529f\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869626"

    const-string v5, "\u6e38\u5ba2\u8d26\u53f7\u5347\u7ea7\u5931\u8d25\uff01"

    const-string v6, "\u6e38\u5ba2\u8d26\u53f7\u5347\u7ea7\u5931\u8d25\uff01"

    const-string v7, "\u6e38\u5ba2\u8d26\u53f7\u5347\u7ea7\u5931\u8d25\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869627"

    const-string v12, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\uff01"

    const-string v13, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\uff01"

    const-string v14, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "10298300"

    const/4 v3, 0x3

    const-string v5, "\u5feb\u6377\u767b\u5f55"

    const-string v6, "\u5feb\u6377\u767b\u5f55"

    const-string v7, "\u5feb\u6377\u767b\u5f55"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "10298311"

    const/4 v10, 0x3

    const-string v12, "\u60a8\u4e5f\u53ef\u4ee5\u4f7f\u7528App\u66f4\u4fbf\u6377\u5730\u7ba1\u7406\u3001\u767b\u5f55\u5b50\u8d26\u53f7\u8fdb\u884c\u6e38\u620f\u3002"

    const-string v13, "\u60a8\u4e5f\u53ef\u4ee5\u4f7f\u7528App\u66f4\u4fbf\u6377\u5730\u7ba1\u7406\u3001\u767b\u5f55\u5b50\u8d26\u53f7\u8fdb\u884c\u6e38\u620f\u3002"

    const-string v14, "\u60a8\u4e5f\u53ef\u4ee5\u4f7f\u7528App\u66f4\u4fbf\u6377\u5730\u7ba1\u7406\u3001\u767b\u5f55\u5b50\u8d26\u53f7\u8fdb\u884c\u6e38\u620f\u3002"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "10298321"

    const-string v5, "\u4e0b\u8f7d"

    const-string v6, "\u4e0b\u8f7d"

    const-string v7, "\u4e0b\u8f7d"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "10298312"

    const-string v12, "\u8fd8\u6ca1\u6709\u5b89\u88c5App\uff1f"

    const-string v13, "\u8fd8\u6ca1\u6709\u5b89\u88c5App\uff1f"

    const-string v14, "\u8fd8\u6ca1\u6709\u5b89\u88c5App\uff1f"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "10298313"

    const-string v5, "\u60a8\u53ef\u4ee5\u4f7f\u7528App\u66f4\u4fbf\u6377\u5730\u7ba1\u7406\u3001\u767b\u5f55\u5b50\u8d26\u53f7\u8fdb\u884c\u6e38\u620f\u3002 \n \u8d76\u5feb\u6765\u8bd5\u8bd5\u5427\uff01"

    const-string v6, "\u60a8\u53ef\u4ee5\u4f7f\u7528App\u66f4\u4fbf\u6377\u5730\u7ba1\u7406\u3001\u767b\u5f55\u5b50\u8d26\u53f7\u8fdb\u884c\u6e38\u620f\u3002 \n \u8d76\u5feb\u6765\u8bd5\u8bd5\u5427\uff01"

    const-string v7, "\u60a8\u53ef\u4ee5\u4f7f\u7528App\u66f4\u4fbf\u6377\u5730\u7ba1\u7406\u3001\u767b\u5f55\u5b50\u8d26\u53f7\u8fdb\u884c\u6e38\u620f\u3002 \n \u8d76\u5feb\u6765\u8bd5\u8bd5\u5427\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "10298322"

    const-string v12, "\u4e0b\u8f7d"

    const-string v13, "\u4e0b\u8f7d"

    const-string v14, "\u4e0b\u8f7d"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869628"

    const/4 v3, 0x2

    const-string v5, "\u7f51\u7edc\u94fe\u63a5\u5931\u8d25\u3002"

    const-string v6, "\u7f51\u7edc\u94fe\u63a5\u5931\u8d25\u3002"

    const-string v7, "\u7f51\u7edc\u94fe\u63a5\u5931\u8d25\u3002"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869629"

    const/4 v10, 0x2

    const-string v12, "\u7528\u6237\u64cd\u4f5c\u53d6\u6d88"

    const-string v13, "\u7528\u6237\u64cd\u4f5c\u53d6\u6d88"

    const-string v14, "\u7528\u6237\u64cd\u4f5c\u53d6\u6d88"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869630"

    const-string v5, "\u4e00\u952e\u767b\u5f55\u5931\u8d25\uff01"

    const-string v6, "\u4e00\u952e\u767b\u5f55\u5931\u8d25\uff01"

    const-string v7, "\u4e00\u952e\u767b\u5f55\u5931\u8d25\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869637"

    const-string v12, "\u626b\u7801\u767b\u5f55\u6210\u529f"

    const-string v13, "\u626b\u7801\u767b\u5f55\u6210\u529f"

    const-string v14, "\u626b\u7801\u767b\u5f55\u6210\u529f"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869638"

    const-string v5, "\u626b\u7801\u652f\u4ed8\u6210\u529f"

    const-string v6, "\u626b\u7801\u652f\u4ed8\u6210\u529f"

    const-string v7, "\u626b\u7801\u652f\u4ed8\u6210\u529f"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869639"

    const-string v12, "\u4e8c\u7ef4\u7801\u5185\u5bb9\u975e\u767b\u5f55\u4ea6\u975e\u652f\u4ed8"

    const-string v13, "\u4e8c\u7ef4\u7801\u5185\u5bb9\u975e\u767b\u5f55\u4ea6\u975e\u652f\u4ed8"

    const-string v14, "\u4e8c\u7ef4\u7801\u5185\u5bb9\u975e\u767b\u5f55\u4ea6\u975e\u652f\u4ed8"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869640"

    const-string v5, "\u626b\u7801\u53d6\u6d88"

    const-string v6, "\u626b\u7801\u53d6\u6d88"

    const-string v7, "\u626b\u7801\u53d6\u6d88"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v9, "-10869642"

    const-string v12, "\u975e\u6e38\u5ba2\u8d26\u53f7\uff0c\u4e0d\u80fd\u8fdb\u884c\u5347\u7ea7\uff01"

    const-string v13, "\u975e\u6e38\u5ba2\u8d26\u53f7\uff0c\u4e0d\u80fd\u8fdb\u884c\u5347\u7ea7\uff01"

    const-string v14, "\u975e\u6e38\u5ba2\u8d26\u53f7\uff0c\u4e0d\u80fd\u8fdb\u884c\u5347\u7ea7\uff01"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    const-string v2, "-10869643"

    const-string v5, "\u6b63\u5728\u767b\u5f55\uff0c\u8bf7\u7a0d\u540e\uff01"

    const-string v6, "\u6b63\u5728\u767b\u5f55\uff0c\u8bf7\u7a0d\u540e\uff01"

    const-string v7, "\u6b63\u5728\u767b\u5f55\uff0c\u8bf7\u7a0d\u540e\uff01"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static errorCodeHasExists(Ljava/lang/String;)Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;
    .locals 2

    .line 180
    sget-object v0, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 181
    :goto_0
    sget-object v1, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 182
    sget-object v1, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    sget-object p0, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBtnTextByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 202
    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeHasExists(Ljava/lang/String;)Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->getBtntext()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMessageByErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 191
    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeHasExists(Ljava/lang/String;)Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 195
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->getMsg_from()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-object p1

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeByErrorCode(Ljava/lang/String;)I
    .locals 0

    .line 210
    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeHasExists(Ljava/lang/String;)Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->getType()I

    move-result p0

    return p0
.end method

.method public static initErrorCodeList(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ErrorCodeUtil"

    const-string v1, "initErrorCodeList"

    .line 87
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;

    .line 90
    :try_start_0
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->errorCode_filename:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/ghomesdk/gameplus/utils/Util;->readObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "initErrorCodeList readobject failed"

    .line 92
    invoke-static {v0, p0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object p0, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;

    invoke-static {p0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->addlocalDataToList(Ljava/util/List;)V

    goto :goto_0

    .line 95
    :cond_0
    sput-object p0, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "initErrorCodeList readobject exception"

    .line 98
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->addlocalDataToList(Ljava/util/List;)V

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static updateErrorCodeList(Landroid/content/Context;Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;->getCodeArray()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 112
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;

    .line 114
    new-instance v9, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->getMsg_from()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->getBtntext()Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v9}, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeHasExists(Ljava/lang/String;)Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 117
    sget-object v2, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    sget-object v1, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_3
    sget-object p1, Lcom/ghomesdk/gameplus/impl/ErrorCodeUtil;->errorCodeList:Ljava/util/List;

    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->errorCode_filename:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/ghomesdk/gameplus/utils/Util;->saveObject(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method
