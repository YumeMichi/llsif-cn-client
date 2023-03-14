.class public Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;
.super Ljava/lang/Object;
.source "YouYunSmsHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsk/utils/YouYunSmsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private date:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private smsbody:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsbody()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->smsbody:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->date:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setSmsbody(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->smsbody:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] phoneNumber["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] name["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] smsbody["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->smsbody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] date["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsk/utils/YouYunSmsHelper$SmsInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
