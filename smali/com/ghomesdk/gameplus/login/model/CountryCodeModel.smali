.class public Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;
.super Ljava/lang/Object;
.source "CountryCodeModel.java"


# instance fields
.field private code:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private mCountrycodeCategory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->code:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->country:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->mCountrycodeCategory:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->code:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->country:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->mCountrycodeCategory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountrycodeCategoryCategory()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->mCountrycodeCategory:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->code:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountrycodeCategoryCategory(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/CountryCodeModel;->mCountrycodeCategory:Ljava/lang/String;

    return-void
.end method
