.class public Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;
.super Ljava/lang/Object;
.source "QuickLoginModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;
    }
.end annotation


# instance fields
.field private quickArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuickArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->quickArray:Ljava/util/List;

    return-object v0
.end method

.method public setQuickArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel$QuickItem;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QuickLoginModel;->quickArray:Ljava/util/List;

    return-void
.end method
