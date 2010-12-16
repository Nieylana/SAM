.class public Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field public count:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->count:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string v6, "Count"

    const-string v5, "Category"

    .line 16
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;

    invoke-direct {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;-><init>()V

    .line 17
    .local v0, c:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;
    const-string v1, "Category"

    invoke-interface {p0, v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 19
    const-string v1, "Name"

    invoke-interface {p0, v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->name:Ljava/lang/String;

    .line 21
    const-string v1, "Name"

    invoke-interface {p0, v4, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 23
    const-string v1, "Count"

    invoke-interface {p0, v3, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->count:Ljava/lang/String;

    .line 25
    const-string v1, "Count"

    invoke-interface {p0, v4, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 27
    const-string v1, "Category"

    invoke-interface {p0, v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v0
.end method
