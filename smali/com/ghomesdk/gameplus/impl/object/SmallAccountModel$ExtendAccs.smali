.class public Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;
.super Ljava/lang/Object;
.source "SmallAccountModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendAccs"
.end annotation


# instance fields
.field accdesc:Ljava/lang/String;

.field accid:Ljava/lang/String;

.field accname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccdesc()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;->accdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getAccid()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;->accid:Ljava/lang/String;

    return-object v0
.end method

.method public getAccname()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;->accname:Ljava/lang/String;

    return-object v0
.end method

.method public setAccdesc(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;->accdesc:Ljava/lang/String;

    return-void
.end method

.method public setAccid(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;->accid:Ljava/lang/String;

    return-void
.end method

.method public setAccname(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;->accname:Ljava/lang/String;

    return-void
.end method
