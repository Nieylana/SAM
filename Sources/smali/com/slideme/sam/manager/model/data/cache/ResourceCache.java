.class public Lcom/slideme/sam/manager/model/data/cache/ResourceCache;
.super Ljava/lang/Object;
.source "ResourceCache.java"


# static fields
.field private static instance:Lcom/slideme/sam/manager/model/data/cache/ResourceCache;


# instance fields
.field private final downloadReference:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private final iconsCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;

    invoke-direct {v0}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->instance:Lcom/slideme/sam/manager/model/data/cache/ResourceCache;

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->iconsCache:Ljava/util/Hashtable;

    .line 18
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->downloadReference:Ljava/util/Hashtable;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/model/data/cache/ResourceCache;)Ljava/util/Hashtable;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->downloadReference:Ljava/util/Hashtable;

    return-object v0
.end method

.method private bmpFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "fileName"

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x2000

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    .line 69
    if-eqz v1, :cond_0

    .line 71
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 78
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 63
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v5

    .line 69
    :goto_1
    if-eqz v0, :cond_0

    .line 71
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 72
    :catch_1
    move-exception v3

    .line 73
    .local v3, ignored:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v3           #ignored:Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object v4, v5

    .line 66
    .local v4, oome:Ljava/lang/OutOfMemoryError;
    :goto_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    if-eqz v0, :cond_0

    .line 71
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 72
    :catch_3
    move-exception v3

    .line 73
    .restart local v3       #ignored:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v3           #ignored:Ljava/io/IOException;
    .end local v4           #oome:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 69
    :goto_3
    if-eqz v0, :cond_1

    .line 71
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 76
    :cond_1
    :goto_4
    throw v5

    .line 72
    :catch_4
    move-exception v3

    .line 73
    .restart local v3       #ignored:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 72
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v3           #ignored:Ljava/io/IOException;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v3

    .line 73
    .restart local v3       #ignored:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v3           #ignored:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 65
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v5

    move-object v4, v5

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 63
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v5

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bundleId"
    .parameter "ret"

    .prologue
    .line 51
    if-eqz p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->iconsCache:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/slideme/sam/manager/model/data/cache/ResourceCache;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->instance:Lcom/slideme/sam/manager/model/data/cache/ResourceCache;

    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/lang/String;)Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    .locals 4
    .parameter "url"
    .parameter "priority"
    .parameter "filename"

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    iget-object v3, p0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->downloadReference:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->downloadReference:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    check-cast v1, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;

    .line 116
    .restart local v1       #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    :goto_0
    return-object v1

    .line 87
    :cond_0
    :try_start_0
    new-instance v2, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;

    invoke-direct {v2, p1, p2, p3}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;-><init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .end local v1           #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    .local v2, task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    :try_start_1
    iget-object v3, p0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->downloadReference:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v3, Lcom/slideme/sam/manager/model/data/cache/ResourceCache$1;

    invoke-direct {v3, p0, p1}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache$1;-><init>(Lcom/slideme/sam/manager/model/data/cache/ResourceCache;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->registerObserver(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;)V

    .line 109
    invoke-virtual {v2}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->submit()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .end local v2           #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    .restart local v1       #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    goto :goto_0

    .line 110
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 111
    .local v0, e:Ljava/net/MalformedURLException;
    :goto_1
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 113
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    .restart local v2       #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    :catch_2
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    .restart local v1       #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    goto :goto_2

    .line 110
    .end local v1           #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    .restart local v2       #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    :catch_3
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    .restart local v1       #task:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    goto :goto_1
.end method

.method public getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 29
    iget-object v2, p0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->iconsCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 32
    .local v0, reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 34
    .local v1, ret:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 36
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->bmpFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    invoke-direct {p0, p1, v1}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 47
    :cond_0
    :goto_0
    return-object v1

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->iconsCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    .end local v1           #ret:Landroid/graphics/Bitmap;
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->bmpFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    .restart local v1       #ret:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 45
    invoke-direct {p0, p1, v1}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
