.class public Lcom/ghomesdk/gameplus/pay/OrderModel;
.super Ljava/lang/Object;
.source "OrderModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appid:Ljava/lang/String;

.field public areaid:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public codeKey:Ljava/lang/String;

.field public deviceid:Ljava/lang/String;

.field public extend:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public itemname:Ljava/lang/String;

.field public logid:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public money:Ljava/lang/String;

.field public orderType:Ljava/lang/String;

.field public orderid:Ljava/lang/String;

.field public orientation:I

.field public productid:Ljava/lang/String;

.field public simid:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->appid:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->areaid:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->channel:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->extend:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orderid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->productid:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->deviceid:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->simid:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->token:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->mac:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orderType:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->itemname:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->money:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->logid:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->codeKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orientation:I

    .line 30
    iput-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->groupId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaid()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->areaid:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeKey()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->codeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodeString()Ljava/lang/String;
    .locals 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&areaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->areaid:Ljava/lang/String;

    .line 201
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->channel:Ljava/lang/String;

    .line 202
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&codeKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->codeKey:Ljava/lang/String;

    .line 203
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&deviceid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->deviceid:Ljava/lang/String;

    .line 204
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&extend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->extend:Ljava/lang/String;

    .line 205
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->GROUP_ID:Ljava/lang/String;

    .line 206
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&itemname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->itemname:Ljava/lang/String;

    .line 207
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->mac:Ljava/lang/String;

    .line 208
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->money:Ljava/lang/String;

    .line 209
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&orderid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orderid:Ljava/lang/String;

    .line 210
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&orderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orderType:Ljava/lang/String;

    .line 211
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&productid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->productid:Ljava/lang/String;

    .line 212
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&simid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->simid:Ljava/lang/String;

    .line 213
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->token:Ljava/lang/String;

    .line 214
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->SDK_VERSION:Ljava/lang/String;

    .line 215
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&logid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->logid:Ljava/lang/String;

    .line 216
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/EncoderUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtend()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->extend:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemname()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->itemname:Ljava/lang/String;

    return-object v0
.end method

.method public getLogid()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->logid:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orderType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderid()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orientation:I

    return v0
.end method

.method public getProductid()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->productid:Ljava/lang/String;

    return-object v0
.end method

.method public getSimid()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->simid:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->appid:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&areaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->areaid:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->channel:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->codeKey:Ljava/lang/String;

    .line 177
    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&codeKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->codeKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&deviceid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->deviceid:Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&extend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->extend:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object v1, v2

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->GROUP_ID:Ljava/lang/String;

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->GROUP_ID:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&itemname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->itemname:Ljava/lang/String;

    if-nez v1, :cond_7

    move-object v1, v2

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->mac:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v1, v2

    :cond_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->money:Ljava/lang/String;

    if-nez v1, :cond_9

    move-object v1, v2

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&orderid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orderid:Ljava/lang/String;

    if-nez v1, :cond_a

    move-object v1, v2

    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&orderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orderType:Ljava/lang/String;

    if-nez v1, :cond_b

    move-object v1, v2

    :cond_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&productid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->productid:Ljava/lang/String;

    if-nez v1, :cond_c

    move-object v1, v2

    :cond_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&simid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->simid:Ljava/lang/String;

    if-nez v1, :cond_d

    move-object v1, v2

    :cond_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->token:Ljava/lang/String;

    if-nez v1, :cond_e

    move-object v1, v2

    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&logid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->logid:Ljava/lang/String;

    if-nez v1, :cond_f

    move-object v1, v2

    :cond_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->appid:Ljava/lang/String;

    return-void
.end method

.method public setAreaid(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->areaid:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->channel:Ljava/lang/String;

    return-void
.end method

.method public setCodeKey(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->codeKey:Ljava/lang/String;

    return-void
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setExtend(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->extend:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setItemname(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->itemname:Ljava/lang/String;

    return-void
.end method

.method public setLogid(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->logid:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->money:Ljava/lang/String;

    return-void
.end method

.method public setOrderType(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orderType:Ljava/lang/String;

    return-void
.end method

.method public setOrderid(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orderid:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->orientation:I

    return-void
.end method

.method public setProductid(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->productid:Ljava/lang/String;

    return-void
.end method

.method public setSimid(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->simid:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/ghomesdk/gameplus/pay/OrderModel;->token:Ljava/lang/String;

    return-void
.end method
