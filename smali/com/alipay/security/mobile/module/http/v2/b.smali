.class public Lcom/alipay/security/mobile/module/http/v2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/security/mobile/module/http/v2/a;


# static fields
.field public static a:Lcom/alipay/security/mobile/module/http/v2/a;

.field public static b:Lcom/alipay/security/mobile/module/http/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/v2/a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/alipay/security/mobile/module/http/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/security/mobile/module/http/a;

    move-result-object p0

    sput-object p0, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    new-instance p0, Lcom/alipay/security/mobile/module/http/v2/b;

    invoke-direct {p0}, Lcom/alipay/security/mobile/module/http/v2/b;-><init>()V

    sput-object p0, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    :cond_1
    sget-object p0, Lcom/alipay/security/mobile/module/http/v2/b;->a:Lcom/alipay/security/mobile/module/http/v2/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/alipay/security/mobile/module/http/model/d;)Lcom/alipay/security/mobile/module/http/model/c;
    .locals 1

    invoke-static {p1}, Lcom/alipay/security/mobile/module/http/model/b;->a(Lcom/alipay/security/mobile/module/http/model/d;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;

    move-result-object p1

    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/http/a;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/security/mobile/module/http/model/b;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Lcom/alipay/security/mobile/module/http/model/c;

    move-result-object p1

    return-object p1
.end method

.method public logCollect(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/http/v2/b;->b:Lcom/alipay/security/mobile/module/http/a;

    invoke-interface {v0, p1}, Lcom/alipay/security/mobile/module/http/a;->logCollect(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
