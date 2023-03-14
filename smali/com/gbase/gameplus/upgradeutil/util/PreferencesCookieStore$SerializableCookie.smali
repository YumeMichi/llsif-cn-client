.class public Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;
.super Ljava/lang/Object;
.source "PreferencesCookieStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SerializableCookie"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x58765a8013aeb70cL


# instance fields
.field private transient clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

.field private final transient cookie:Lorg/apache/http/cookie/Cookie;

.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore;


# direct methods
.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore;Lorg/apache/http/cookie/Cookie;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->this$0:Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    new-instance v2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    .line 210
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 213
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 215
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setSecure(Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 203
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public getCookie()Lorg/apache/http/cookie/Cookie;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    .line 189
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/PreferencesCookieStore$SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method
