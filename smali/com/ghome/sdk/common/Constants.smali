.class public Lcom/ghome/sdk/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ERROR_AGREEMENT_FAILED:I = -0xa5db6f

.field public static final ERROR_CHANNEL_RETURN:I = -0xa5db63

.field public static final ERROR_CHECK_ORDER_CANCEL:I = -0xa5db89

.field public static final ERROR_CODE_LOGIN_CANCEL:I = -0x64

.field public static final ERROR_CODE_QR_CANCELED:I = -0xa5db88

.field public static final ERROR_CODE_QR_LOGIN_SUCCESS:I = -0xa5db85

.field public static final ERROR_CODE_QR_PAY_SUCCESS:I = -0xa5db86

.field public static final ERROR_CODE_QR_RESULT:I = -0xa5db87

.field public static final ERROR_CODE_REBIND_PHONE_CANCEL:I = 0x5

.field public static final ERROR_CODE_REBIND_PHONE_FAIL:I = 0x4

.field public static final ERROR_CODE_REBIND_PHONE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_GUEST_ORDERID_NOT_EXIT:I = -0xa5db7f

.field public static final ERROR_GUEST_ORDERID_NOT_FINISH:I = -0xa5db80

.field public static final ERROR_GUEST_ORDERID_NOT_PASS:I = -0xa5db81

.field public static final ERROR_INIT_FAILED:I = -0xa5db6a

.field public static final ERROR_INIT_NOT_FINISHED:I = -0xa5db6b

.field public static final ERROR_LOGIN_FAILED:I = -0xa5db68

.field public static final ERROR_NETWORK_TIMEOUT:I = -0xa5db61

.field public static final ERROR_NOT_SUPPORTED_URL:I = -0x9c671d

.field public static final ERROR_OPERATION_NOT_SUPPORTED:I = -0xa5db6d

.field public static final ERROR_PARAMS_ERROR:I = -0xa5db6c

.field public static final ERROR_PAY_CANCEL:I = -0xa5db69

.field public static final ERROR_PAY_FAILED:I = -0xa5db64

.field public static final ERROR_PAY_RESULT_NOT_GET:I = -0xa5db65

.field public static final ERROR_PAY_SUCCESS_NOT_SEND_GOODS:I = -0xa5db66

.field public static final ERROR_REPEAT_PURCHASE_NOT_PERMITTED:I = -0xa5db6e

.field public static final ERROR_SCAN_ACCOUNT_WRONG_ERROR:I = -0x9ba7e4

.field public static final ERROR_SCAN_CACHE_ERROR:I = -0x9ba7df

.field public static final ERROR_SCAN_DB_READ_ERROR:I = -0x9ba7de

.field public static final ERROR_SCAN_NO_FUNC_ERROR:I = -0x9ba7dc

.field public static final ERROR_SCAN_PARAMS_ERROR:I = -0x9ba7db

.field public static final ERROR_SCAN_PAY_SUC_ERROR:I = -0x9ba7e2

.field public static final ERROR_SCAN_QR_CODE_2_ERROR:I = -0x9ba7e3

.field public static final ERROR_SCAN_QR_CODE_ERROR:I = -0x9ba7e1

.field public static final ERROR_SCAN_QR_CODE_WRONG_ERROR:I = -0x9ba7e6

.field public static final ERROR_SCAN_SIGN_ERROR:I = -0x9ba7e0

.field public static final ERROR_SCAN_TOKEN_ERROR:I = -0x9ba7dd

.field public static final ERROR_SCAN_WRONG_DEVICE_ERROR:I = -0x9ba7e5

.field public static final ERROR_SERVER_RETURN:I = -0xa5db62

.field public static final ERROR_USER_NOT_LOGIN:I = -0xa5db67

.field public static final EVENT_ACCOUNT_CHANGED:I = 0x3

.field public static final EVENT_ACCOUNT_LOGOUT:I = 0x1

.field public static final EVENT_ACCOUNT_LOGOUT_ONLY:I = 0x4

.field public static final EVENT_EXIT_GAME:I = 0x5

.field public static final EVENT_GAME_FORCE_CLOSE:I = 0x2

.field public static final MAP_ERROR_CODE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_CAMERA_PERMISSION_CODE:I = 0x9d

.field public static final REQUEST_PHONE_STATE_STORAGE_PERMISSION_CODE:I = 0x9f


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    .line 75
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const-string v2, "\u64cd\u4f5c\u6210\u529f\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const/16 v1, -0x64

    const-string v2, "\u767b\u5f55\u5df2\u53d6\u6d88\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db61

    const-string v2, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db62

    const-string v2, "\u670d\u52a1\u7aef\u9519\u8bef\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db63

    const-string v2, "\u6e20\u9053\u65b9\u9519\u8bef\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db64

    const-string v2, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db65

    const-string v2, "\u652f\u4ed8\u6682\u672a\u6210\u529f\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db66

    const-string v2, "\u652f\u4ed8\u6682\u672a\u6210\u529f\uff0c\u5982\u6709\u95ee\u9898\u8bf7\u8054\u7cfb\u5ba2\u670d\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db67

    const-string v2, "\u8bf7\u5148\u767b\u9646\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db68

    const-string v2, "\u767b\u9646\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db69

    const-string v2, "\u53d6\u6d88\u652f\u4ed8\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db6a

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db6b

    const-string v2, "\u521d\u59cb\u5316\u672a\u5b8c\u6210\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db6c

    const-string v2, "\u53c2\u6570\u9519\u8bef\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db6d

    const-string v2, "\u64cd\u4f5c\u4e0d\u652f\u6301\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db6e

    const-string v2, "\u8be5\u5546\u54c1\u4e0d\u53ef\u91cd\u590d\u8d2d\u4e70\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0x9c671d

    const-string v2, "Not supported url."

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db85

    const-string v2, "\u626b\u7801\u767b\u5f55\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db86

    const-string v2, "\u626b\u7801\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db87

    const-string v2, "\u4e8c\u7ef4\u7801\u9519\u8bef\uff0c\u8bf7\u626b\u63cf\u6b63\u786e\u7684\u4e8c\u7ef4\u7801"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0xa5db88

    const-string v2, "\u626b\u7801\u53d6\u6d88"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "\u6e20\u9053\u7528\u6237\u4e2d\u5fc3\u6ce8\u9500\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "\u6e38\u620f\u9000\u51fa\uff01"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0x9ba7db

    const-string v2, "\u53c2\u6570\u4e3a\u7a7a\u6216\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0x9ba7dc

    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u529f\u80fd\u5c1a\u672a\u5f00\u653e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0x9ba7dd

    const-string v2, "token\u65e0\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0x9ba7de

    const-string v2, "\u6570\u636e\u5e93\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0x9ba7df

    const-string v2, "\u7f13\u5b58\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0x9ba7e0

    const-string v2, "\u7b7e\u540d\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const-string v1, "\u4e8c\u7ef4\u7801\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u626b\u7801\u652f\u4ed8\u3002"

    const v2, -0x9ba7e1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v2, -0x9ba7e2

    const-string v3, "\u8ba2\u5355\u5df2\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v2, -0x9ba7e3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0x9ba7e4

    const-string v2, "\u8d26\u53f7\u4e0d\u5339\u914d\uff0c\u8bf7\u5207\u6362\u8d26\u53f7\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0x9ba7e5

    const-string v2, "\u6682\u4e0d\u652f\u6301\u8de8\u5e73\u53f0\u8d2d\u4e70\uff0c\u8bf7\u66f4\u6362\u8bbe\u5907\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const v1, -0x9ba7e6

    const-string v2, "\u4e8c\u7ef4\u7801\u9519\u8bef\uff0c\u8bf7\u626b\u63cf\u6b63\u786e\u4e8c\u7ef4\u7801\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 2

    .line 118
    sget-object v0, Lcom/ghome/sdk/common/Constants;->MAP_ERROR_CODE:Landroid/util/SparseArray;

    const-string v1, "\u672a\u77e5\u9519\u8bef\u3002"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
