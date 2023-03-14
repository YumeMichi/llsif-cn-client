.class public Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderItem"
.end annotation


# instance fields
.field public final header:Lorg/apache/http/Header;

.field public final overwrite:Z

.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/http/RequestParams;


# direct methods
.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->this$0:Lcom/gbase/gameplus/upgradeutil/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 325
    iput-boolean p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->overwrite:Z

    .line 326
    new-instance p1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->this$0:Lcom/gbase/gameplus/upgradeutil/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-boolean p4, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->overwrite:Z

    .line 331
    new-instance p1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lorg/apache/http/Header;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->this$0:Lcom/gbase/gameplus/upgradeutil/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 315
    iput-boolean p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->overwrite:Z

    .line 316
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/RequestParams;Lorg/apache/http/Header;Z)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->this$0:Lcom/gbase/gameplus/upgradeutil/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-boolean p3, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->overwrite:Z

    .line 321
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    return-void
.end method
