.class public Lcom/slideme/sam/manager/model/domain/user/User;
.super Ljava/lang/Object;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/model/domain/user/User$Roles;
    }
.end annotation


# static fields
.field private static isAuthorized:J


# instance fields
.field private hostname:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private final roleses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/slideme/sam/manager/model/domain/user/User$Roles;",
            ">;"
        }
    .end annotation
.end field

.field private uid:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/slideme/sam/manager/model/domain/user/User;->isAuthorized:J

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/domain/user/User;->roleses:Ljava/util/List;

    .line 43
    return-void
.end method

.method private invalidate()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->logout()V

    .line 114
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/slideme/sam/manager/model/domain/user/User;->isAuthorized:J

    .line 115
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/user/User;->roleses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/user/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/user/User;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/user/User;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hasRole(Lcom/slideme/sam/manager/model/domain/user/User$Roles;)Z
    .locals 1
    .parameter "role"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/user/User;->roleses:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/user/User;->roleses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthorized()Z
    .locals 4

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/slideme/sam/manager/model/domain/user/User;->isAuthorized:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/kxml2/io/KXmlParser;)V
    .locals 6
    .parameter "parser"

    .prologue
    const/4 v5, 0x2

    const-string v2, "roles"

    .line 51
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "user"

    invoke-virtual {p1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 88
    :goto_1
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, tagName:Ljava/lang/String;
    const-string v2, "uid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/domain/user/User;->uid:Ljava/lang/String;

    goto :goto_0

    .line 85
    .end local v1           #tagName:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 56
    .restart local v1       #tagName:Ljava/lang/String;
    :cond_2
    const-string v2, "hostname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/domain/user/User;->hostname:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_3
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/model/domain/user/User;->name:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_4
    const-string v2, "roles"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 62
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "roles"

    invoke-virtual {p1, v2, v3, v4}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 64
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 66
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, role:Ljava/lang/String;
    const-string v2, "anonymous user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    const-wide v2, 0x7fffffffffffffffL

    sput-wide v2, Lcom/slideme/sam/manager/model/domain/user/User;->isAuthorized:J

    goto :goto_2

    .line 69
    :cond_6
    const-string v2, "authenticated user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/slideme/sam/manager/model/domain/user/User;->isAuthorized:J

    goto :goto_2

    .line 71
    :cond_7
    const-string v2, "Paying User"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 72
    iget-object v2, p0, Lcom/slideme/sam/manager/model/domain/user/User;->roleses:Ljava/util/List;

    sget-object v3, Lcom/slideme/sam/manager/model/domain/user/User$Roles;->PAYING:Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 73
    :cond_8
    const-string v2, "Developer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 74
    iget-object v2, p0, Lcom/slideme/sam/manager/model/domain/user/User;->roleses:Ljava/util/List;

    sget-object v3, Lcom/slideme/sam/manager/model/domain/user/User$Roles;->DEVELOPER:Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 77
    .end local v0           #role:Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->skipSubTree()V

    goto :goto_2

    .line 81
    :cond_a
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->skipSubTree()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 108
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/user/User;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v0, Lcom/slideme/sam/manager/model/domain/user/User;->isAuthorized:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/slideme/sam/manager/model/domain/user/User;->invalidate()V

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/slideme/sam/manager/model/domain/user/User;->password:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 4
    .parameter "username"

    .prologue
    .line 103
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/slideme/sam/manager/model/domain/user/User;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v0, Lcom/slideme/sam/manager/model/domain/user/User;->isAuthorized:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/slideme/sam/manager/model/domain/user/User;->invalidate()V

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/slideme/sam/manager/model/domain/user/User;->userName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/slideme/sam/manager/model/domain/user/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", HOSTNAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/domain/user/User;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/domain/user/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", User="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/slideme/sam/manager/model/domain/user/User;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touchSession()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/slideme/sam/manager/model/domain/user/User;->isAuthorized:J

    .line 27
    return-void
.end method
