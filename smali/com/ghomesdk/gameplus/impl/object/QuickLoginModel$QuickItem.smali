.class public Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;
.super Ljava/lang/Object;
.source "QuickLoginModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickItem"
.end annotation


# instance fields
.field autoKey:Ljava/lang/String;

.field guestId:Ljava/lang/String;

.field phoneStr:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoKey()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->autoKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getGuestId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->guestId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getPhoneStr()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->phoneStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setAutoKey(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->autoKey:Ljava/lang/String;

    return-void
.end method

.method public setGuestId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->guestId:Ljava/lang/String;

    return-void
.end method

.method public setPhoneStr(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->phoneStr:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;->userId:Ljava/lang/String;

    return-void
.end method
