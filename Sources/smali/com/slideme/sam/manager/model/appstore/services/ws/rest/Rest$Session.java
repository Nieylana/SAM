.class public final Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;
.super Ljava/lang/Object;
.source "Rest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation


# static fields
.field private static final NOTIFICATION_RETRY_COUNT:I = 0x3

.field public static final instance:Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;


# instance fields
.field private sessionId:Ljava/lang/String;

.field private user:Lcom/slideme/sam/manager/model/domain/user/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    invoke-direct {v0}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->instance:Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->instance:Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;

    return-object v0
.end method

.method private login(Ljava/lang/String;)Z
    .locals 4
    .parameter "loginURL"

    .prologue
    .line 78
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 80
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lcom/slideme/sam/manager/model/utils/ParserUtils;->createParserFrom(Ljava/io/InputStream;)Lorg/kxml2/io/KXmlParser;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->parseLogin(Lorg/kxml2/io/KXmlParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    if-eqz v1, :cond_0

    .line 89
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 84
    :goto_1
    return v2

    .line 82
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 83
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    if-eqz v1, :cond_1

    .line 89
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 84
    :cond_1
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 86
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 87
    if-eqz v1, :cond_2

    .line 89
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 92
    :cond_2
    :goto_3
    throw v2

    .line 90
    :catch_1
    move-exception v2

    goto :goto_0

    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    goto :goto_3
.end method

.method private notify(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 188
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session$1;

    invoke-direct {v0, p0, p1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session$1;-><init>(Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session$1;->start()V

    .line 199
    return-void
.end method

.method private parseLogin(Lorg/kxml2/io/KXmlParser;)V
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const-string v7, "response"

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "parser"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    .line 108
    const-string v3, "rest"

    invoke-virtual {p1, v6, v4, v3}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 142
    return-void

    .line 110
    :cond_2
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    .line 114
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, message:Ljava/lang/String;
    const-string v3, "Already logged in"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-virtual {v3}, Lcom/slideme/sam/manager/model/domain/user/User;->touchSession()V

    goto :goto_0

    .line 120
    .end local v1           #message:Ljava/lang/String;
    :cond_3
    const-string v3, "response"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 122
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v3, v4, v5}, Lorg/kxml2/io/KXmlParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_1
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextTag()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 124
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string v3, "sessid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 126
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->sessionId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 136
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SLIDE-000-010:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :try_start_1
    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    if-eqz v3, :cond_5

    .line 129
    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-virtual {v3, p1}, Lcom/slideme/sam/manager/model/domain/user/User;->parse(Lorg/kxml2/io/KXmlParser;)V

    goto :goto_1

    .line 131
    :cond_5
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->skipSubTree()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 139
    :cond_6
    invoke-virtual {p1}, Lorg/kxml2/io/KXmlParser;->skipSubTree()V

    goto/16 :goto_0
.end method


# virtual methods
.method public downloadNotify(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/String;)V
    .locals 6
    .parameter "app"
    .parameter "s"

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->getFlurryParams()Ljava/util/Map;

    move-result-object v2

    .line 151
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "S"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v3, "DUID"

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getInstance()Lcom/slideme/sam/manager/SAM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v3, "Download Result"

    invoke-static {v3, v2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/slideme/sam/manager/model/SamConstants;->DOWNLOAD_NOTIFICATION_URL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v4, "&bundle_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    const-string v4, "&status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 161
    const-string v4, "&version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    const-string v4, "&device_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getInstance()Lcom/slideme/sam/manager/SAM;

    move-result-object v4

    invoke-virtual {v4}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, downloadUrl:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->notify(Ljava/lang/String;)V

    .line 167
    .end local v0           #downloadUrl:Ljava/lang/String;
    :goto_1
    return-void

    .line 159
    :cond_0
    const-string v4, "free"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 165
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized getSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SYSTEM_CONNECT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getInstance()Lcom/slideme/sam/manager/SAM;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/SAM;->getDeviceInfoUrlFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->login(Ljava/lang/String;)Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->sessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUser()Lcom/slideme/sam/manager/model/domain/user/User;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-direct {v0}, Lcom/slideme/sam/manager/model/domain/user/User;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    return-object v0
.end method

.method public installNotify(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/String;)V
    .locals 5
    .parameter "app"
    .parameter "s"

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->getFlurryParams()Ljava/util/Map;

    move-result-object v1

    .line 171
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "S"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v2, "DUID"

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getInstance()Lcom/slideme/sam/manager/SAM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v2, "Install Result"

    invoke-static {v2, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 175
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->INSTALL_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    const-string v3, "&bundle_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    const-string v3, "&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->token:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    const-string v3, "&status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    const-string v3, "&device_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getInstance()Lcom/slideme/sam/manager/SAM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, installUrl:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->notify(Ljava/lang/String;)V

    .line 185
    .end local v0           #installUrl:Ljava/lang/String;
    :goto_1
    return-void

    .line 177
    :cond_0
    const-string v3, "free"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public isAuthorized()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/domain/user/User;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v2, "UTF-8"

    .line 58
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    if-nez v2, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getSessionId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 74
    :goto_0
    return v2

    :cond_0
    move v2, v5

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-virtual {v2}, Lcom/slideme/sam/manager/model/domain/user/User;->isAuthorized()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->LOGIN_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v3, "&sessid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    const-string v3, "&username="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-virtual {v3}, Lcom/slideme/sam/manager/model/domain/user/User;->getUserName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    const-string v3, "&password="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-virtual {v3}, Lcom/slideme/sam/manager/model/domain/user/User;->getPassword()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getInstance()Lcom/slideme/sam/manager/SAM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/slideme/sam/manager/SAM;->getDeviceInfoUrlFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    .local v1, loginURL:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->login(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 70
    .end local v1           #loginURL:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    move v2, v5

    .line 71
    goto :goto_0
.end method

.method public logout()V
    .locals 5

    .prologue
    .line 206
    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->sessionId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-virtual {v3}, Lcom/slideme/sam/manager/model/domain/user/User;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-virtual {v3}, Lcom/slideme/sam/manager/model/domain/user/User;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/slideme/sam/manager/model/SamConstants;->USER_LOGOUT:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&sessid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&username="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/domain/user/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&password="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->user:Lcom/slideme/sam/manager/model/domain/user/User;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/domain/user/User;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, loginURL:Ljava/lang/String;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/slideme/sam/manager/model/appstore/services/ws/rest/Rest$Session;->sessionId:Ljava/lang/String;

    .line 212
    const/4 v1, 0x0

    .line 215
    .local v1, inputStream:Ljava/io/InputStream;
    const/4 v3, 0x3

    :try_start_0
    invoke-static {v2, v3}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 217
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 223
    if-eqz v1, :cond_0

    .line 225
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v3

    goto :goto_0

    .line 219
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 220
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    if-eqz v1, :cond_0

    .line 225
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 226
    :catch_2
    move-exception v3

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 223
    if-eqz v1, :cond_3

    .line 225
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 228
    :cond_3
    :goto_1
    throw v3

    .line 226
    :catch_3
    move-exception v4

    goto :goto_1
.end method
