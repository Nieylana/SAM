.class public Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;
.super Lcom/slideme/sam/manager/model/state/StatefulComponent;
.source "Catalog.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/event/Event$Context$Catalog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;,
        Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$MyIntComparable;,
        Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;,
        Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;
    }
.end annotation


# static fields
.field private static final urlString:Ljava/lang/String;


# instance fields
.field protected final apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;",
            ">;"
        }
    .end annotation
.end field

.field protected final categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private count:I

.field private final dispatcher:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

.field private filter:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;

.field private free:Z

.field private ids:[Ljava/lang/String;

.field private loadFeatured:Z

.field private local:Ljava/lang/String;

.field private page:I

.field private pageSize:I

.field private partner:Ljava/lang/String;

.field private preloader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;

.field private request:I

.field private sort:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

.field private summary:Z

.field private total:I

.field private worker:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->FEED_SERVER_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/catalog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->urlString:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "request"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/state/StatefulComponent;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->categories:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->apps:Ljava/util/ArrayList;

    .line 30
    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->worker:Ljava/lang/Thread;

    .line 32
    iput v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->count:I

    .line 33
    iput v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->total:I

    .line 35
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->dispatcher:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    .line 37
    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getGeneralSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->getAppsPerPage()I

    move-result v0

    iput v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    .line 41
    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->sort:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    .line 42
    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->partner:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->free:Z

    .line 44
    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->filter:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;

    .line 72
    iput v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    .line 75
    iput-boolean v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->loadFeatured:Z

    .line 76
    iput-boolean v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->summary:Z

    .line 167
    iput-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    .line 47
    iput p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->request:I

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "request"
    .parameter "partner"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;-><init>(I)V

    .line 52
    iput-object p2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->partner:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->work()V

    return-void
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->worker:Ljava/lang/Thread;

    return-void
.end method

.method private digest(Ljava/io/InputStream;)V
    .locals 9
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string v8, "Categories"

    .line 317
    invoke-static {p1}, Lcom/slideme/sam/manager/model/utils/ParserUtils;->createParser(Ljava/io/InputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 318
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 319
    const/4 v2, 0x0

    const-string v3, "Catalog"

    invoke-interface {v1, v5, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 322
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 323
    const-string v2, "Categories"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 324
    :cond_1
    :goto_0
    const/4 v2, 0x3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 326
    const-string v2, "Categories"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 324
    if-eqz v2, :cond_5

    .line 351
    :cond_2
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->categories:Ljava/util/ArrayList;

    new-instance v3, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$MyIntComparable;

    invoke-direct {v3, p0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$MyIntComparable;-><init>(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 353
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v2

    if-eq v2, v7, :cond_4

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->isInState(I)Z

    move-result v2

    .line 321
    if-nez v2, :cond_0

    .line 354
    :cond_4
    return-void

    .line 327
    :cond_5
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 328
    const-string v2, "Category"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->categories:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->dispatcher:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    iget v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->request:I

    iget-object v4, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->category:Ljava/lang/String;

    invoke-virtual {v2, v6, v3, v5, v4}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    goto :goto_0

    .line 334
    :cond_6
    const-string v2, "Applications"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    :cond_7
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v2

    if-eq v2, v7, :cond_2

    .line 336
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 337
    const-string v2, "Application"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 338
    invoke-static {v1}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    move-result-object v0

    .line 339
    .local v0, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->filter:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->filter:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;

    invoke-interface {v2, v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;->accept(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 340
    :cond_8
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->apps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->dispatcher:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    iget v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->request:I

    invoke-virtual {v2, v6, v3, v5, v0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    .line 345
    iget v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->count:I

    goto :goto_1
.end method

.method private getPagedIds(I)Ljava/lang/String;
    .locals 8
    .parameter "page"

    .prologue
    .line 289
    const-string v3, ""

    .line 290
    .local v3, idstr:Ljava/lang/String;
    iget-object v5, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 291
    iget-object v5, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    array-length v0, v5

    .line 293
    .local v0, appsSize:I
    iget v5, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    mul-int v4, p1, v5

    .line 295
    .local v4, pageStart:I
    sub-int v1, v0, v4

    .line 296
    .local v1, available:I
    if-lez v1, :cond_2

    iget v5, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    if-ge v1, v5, :cond_1

    iget v5, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    rem-int v5, v1, v5

    move v1, v5

    .line 298
    :goto_0
    if-lez v1, :cond_0

    .line 299
    const-string v3, "&bundle="

    .line 300
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_3

    .line 305
    .end local v0           #appsSize:I
    .end local v1           #available:I
    .end local v2           #i:I
    .end local v4           #pageStart:I
    :cond_0
    return-object v3

    .line 296
    .restart local v0       #appsSize:I
    .restart local v1       #available:I
    .restart local v4       #pageStart:I
    :cond_1
    iget v5, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    move v1, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0

    .line 301
    .restart local v2       #i:I
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    add-int v7, v2, v4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private loadPage()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    const-string v8, "UTF-8"

    const-string v12, ""

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 231
    .local v5, start:J
    iput v13, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->count:I

    .line 236
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->urlString:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 238
    const-string v9, "page="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    if-eqz v9, :cond_0

    move v9, v13

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 239
    iget-boolean v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->free:Z

    if-eqz v9, :cond_1

    const-string v9, "&free=yes"

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 240
    iget-object v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->partner:Ljava/lang/String;

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "&partner="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->partner:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 241
    iget-object v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    invoke-direct {p0, v9}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->getPagedIds(I)Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 242
    iget-object v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->category:Ljava/lang/String;

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "&category="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->category:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 243
    iget-boolean v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->summary:Z

    if-eqz v9, :cond_5

    const-string v9, "&summary=yes"

    :goto_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 245
    iget-object v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->local:Ljava/lang/String;

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "&local="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->local:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 246
    const-string v9, "&pageSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 247
    iget-boolean v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->loadFeatured:Z

    if-eqz v9, :cond_7

    const-string v9, "&featured=yes"

    :goto_7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 248
    iget-object v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->sort:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "&sort="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->sort:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    iget-object v10, v10, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->field:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&order="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->sort:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    iget-object v10, v10, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->order:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 236
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, urlstr:Ljava/lang/String;
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 258
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    .local v4, output:Ljava/io/ByteArrayOutputStream;
    :goto_9
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, i:I
    if-ne v1, v14, :cond_9

    .line 267
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :try_start_2
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v8}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->digest(Ljava/io/InputStream;)V

    .line 279
    iget-object v8, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->dispatcher:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    const/4 v9, 0x0

    iget v10, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->request:I

    const/4 v11, -0x3

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 285
    :goto_a
    iget v8, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->total:I

    iget v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->count:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->total:I

    .line 286
    .end local v1           #i:I
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #output:Ljava/io/ByteArrayOutputStream;
    .end local v7           #urlstr:Ljava/lang/String;
    :goto_b
    return-void

    .line 238
    :cond_0
    :try_start_3
    iget v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    goto/16 :goto_0

    .line 239
    :cond_1
    const-string v9, ""

    move-object v9, v12

    goto/16 :goto_1

    .line 240
    :cond_2
    const-string v9, ""

    move-object v9, v12

    goto/16 :goto_2

    .line 241
    :cond_3
    const-string v9, ""

    move-object v9, v12

    goto/16 :goto_3

    .line 242
    :cond_4
    const-string v9, ""

    move-object v9, v12

    goto/16 :goto_4

    .line 243
    :cond_5
    const-string v9, ""

    move-object v9, v12

    goto/16 :goto_5

    .line 245
    :cond_6
    const-string v9, ""

    move-object v9, v12

    goto/16 :goto_6

    .line 247
    :cond_7
    const-string v9, ""

    move-object v9, v12

    goto/16 :goto_7

    .line 248
    :cond_8
    const-string v9, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v12

    goto :goto_8

    .line 252
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 254
    .local v2, ignored:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->dispatcher:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    iget v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->request:I

    new-instance v10, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;

    const/16 v11, 0x1f9

    invoke-direct {v10, v2, v11}, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v8, v13, v9, v14, v10}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    goto :goto_b

    .line 264
    .end local v2           #ignored:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #urlstr:Ljava/lang/String;
    :cond_9
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    .line 269
    .end local v1           #i:I
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 271
    .restart local v2       #ignored:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->dispatcher:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    iget v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->request:I

    new-instance v10, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;

    const/16 v11, 0x226

    invoke-direct {v10, v2, v11}, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v8, v13, v9, v14, v10}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    goto :goto_b

    .line 280
    .end local v2           #ignored:Ljava/lang/Exception;
    .restart local v1       #i:I
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 282
    .local v0, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->dispatcher:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    iget v9, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->request:I

    new-instance v10, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;

    const/16 v11, 0x22b

    invoke-direct {v10, v0, v11}, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v8, v13, v9, v14, v10}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    goto :goto_a
.end method

.method private work()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 189
    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->addState(I)V

    .line 190
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->dispatcher:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    iget v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->request:I

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2, v5}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->preloader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->preloader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;

    invoke-interface {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;->getIds()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->dispatcher:Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    iget v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->request:I

    const/4 v2, -0x3

    invoke-virtual {v0, v3, v1, v2, v5}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->dispatchEvent(IIILjava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->preloader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;

    invoke-interface {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;->onNothingLoaded()V

    .line 226
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->loadPage()V

    .line 207
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->preloader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->total:I

    if-nez v0, :cond_2

    .line 211
    const-string v0, ""

    iget v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->getPagedIds(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->preloader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;

    invoke-interface {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;->onNothingLoaded()V

    .line 225
    :cond_2
    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->removeState(I)V

    goto :goto_0

    .line 217
    :cond_3
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    .line 218
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->work()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->removeState(I)V

    .line 98
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    return-void
.end method

.method public getApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->apps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->categories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->count:I

    return v0
.end method

.method public hasMore()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 170
    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->ids:[Ljava/lang/String;

    array-length v0, v3

    .line 173
    .local v0, appsSize:I
    iget v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    mul-int v2, v3, v4

    .line 175
    .local v2, pageStart:I
    sub-int v1, v0, v2

    .line 176
    .local v1, available:I
    if-lez v1, :cond_1

    iget v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    if-ge v1, v3, :cond_0

    iget v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    rem-int v3, v1, v3

    .line 178
    .end local v0           #appsSize:I
    .end local v1           #available:I
    .end local v2           #pageStart:I
    :goto_0
    return v3

    .line 176
    .restart local v0       #appsSize:I
    .restart local v1       #available:I
    .restart local v2       #pageStart:I
    :cond_0
    iget v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 178
    .end local v0           #appsSize:I
    .end local v1           #available:I
    .end local v2           #pageStart:I
    :cond_2
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->getCount()I

    move-result v3

    iget v4, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    if-lt v3, v4, :cond_3

    iget v3, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->worker:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$1;-><init>(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->worker:Ljava/lang/Thread;

    .line 160
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 165
    :cond_0
    return-void
.end method

.method public loadCategories()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->summary:Z

    .line 138
    return-void
.end method

.method public loadFeatured()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->loadFeatured:Z

    .line 142
    return-void
.end method

.method public nextPage()I
    .locals 3

    .prologue
    .line 120
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->isInState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot alter Page while Running."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    .line 123
    .local v0, old:I
    iget v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    .line 124
    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->category:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setFilter(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->filter:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;

    .line 382
    return-void
.end method

.method public setFree(Z)V
    .locals 0
    .parameter "freeApps"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->free:Z

    .line 88
    return-void
.end method

.method public setLocal(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->local:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setPage(I)I
    .locals 1
    .parameter "page"

    .prologue
    .line 81
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    .line 82
    .local v0, old:I
    iput p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->page:I

    .line 83
    return v0
.end method

.method public setPageSize(I)I
    .locals 1
    .parameter "newPagesize"

    .prologue
    .line 56
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    .line 57
    .local v0, old:I
    iput p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->pageSize:I

    .line 58
    return v0
.end method

.method public setPreloader(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;)V
    .locals 0
    .parameter "preloader"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->preloader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;

    .line 378
    return-void
.end method

.method public setSort(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;)Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;
    .locals 1
    .parameter "sort"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->sort:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    .line 115
    .local v0, old:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->sort:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    .line 116
    return-object v0
.end method
