.class public final Lcom/slideme/sam/manager/model/utils/ParserUtils;
.super Ljava/lang/Object;
.source "ParserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParser(Ljava/io/InputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "inputStream"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_0
    new-instance v1, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v1}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    .line 48
    .local v1, parser:Lorg/kxml2/wap/WbxmlParser;
    const/4 v2, 0x0

    sget-object v3, Lcom/slideme/sam/manager/model/appstore/C$FEED;->FEEDS_TABLE:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    .line 51
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, p0, v2}, Lorg/kxml2/wap/WbxmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object v1

    .line 53
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 54
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 55
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createParserFrom(Ljava/io/InputStream;)Lorg/kxml2/io/KXmlParser;
    .locals 4
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "inputStream"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_0
    new-instance v1, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v1}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 33
    .local v1, parser:Lorg/kxml2/io/KXmlParser;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v2}, Lorg/kxml2/io/KXmlParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
