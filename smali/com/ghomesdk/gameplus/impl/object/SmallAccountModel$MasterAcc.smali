.class public Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;
.super Ljava/lang/Object;
.source "SmallAccountModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MasterAcc"
.end annotation


# instance fields
.field userid:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserid()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;->userid:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;->username:Ljava/lang/String;

    return-void
.end method
