.class public Lcom/greport/glog/util/BuildProperties;
.super Ljava/lang/Object;
.source "BuildProperties.java"


# static fields
.field private static ourInstance:Lcom/greport/glog/util/BuildProperties;


# instance fields
.field private properties:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    .line 29
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "build.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    return-void
.end method

.method public static getInstance()Lcom/greport/glog/util/BuildProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/greport/glog/util/BuildProperties;->ourInstance:Lcom/greport/glog/util/BuildProperties;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/greport/glog/util/BuildProperties;

    invoke-direct {v0}, Lcom/greport/glog/util/BuildProperties;-><init>()V

    sput-object v0, Lcom/greport/glog/util/BuildProperties;->ourInstance:Lcom/greport/glog/util/BuildProperties;

    .line 23
    :cond_0
    sget-object v0, Lcom/greport/glog/util/BuildProperties;->ourInstance:Lcom/greport/glog/util/BuildProperties;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/greport/glog/util/BuildProperties;->properties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
