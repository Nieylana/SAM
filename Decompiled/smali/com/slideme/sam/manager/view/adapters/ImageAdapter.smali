.class public Lcom/slideme/sam/manager/view/adapters/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# instance fields
.field private available:I

.field private final bundleId:Ljava/lang/String;

.field private final count:I

.field private mContext:Landroid/content/Context;

.field private final screens:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "c"
    .parameter "bundleId"
    .parameter "count"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->available:I

    .line 34
    iput-object p1, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->bundleId:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->count:I

    .line 37
    new-array v0, p3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->screens:[Landroid/graphics/Bitmap;

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->available:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->screens:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 54
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    .local v2, i:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->screens:[Landroid/graphics/Bitmap;

    aget-object v0, v3, p1

    .line 56
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    .local v1, bm:Landroid/graphics/drawable/BitmapDrawable;
    const/16 v3, 0x77

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 58
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 61
    return-object v2
.end method

.method public load()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const-string v8, "/"

    const-string v7, ".png"

    .line 68
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->count:I

    if-lt v1, v4, :cond_0

    .line 85
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v2, loadingIcon:Landroid/widget/ImageView;
    const v4, 0x7f0a002a

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->findViewById(I)Landroid/view/View;

    .line 87
    return-void

    .line 69
    .end local v2           #loadingIcon:Landroid/widget/ImageView;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "images/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->bundleId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, destination:Ljava/lang/String;
    iget-object v4, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->screens:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->available:I

    invoke-static {}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->getInstance()Lcom/slideme/sam/manager/model/data/cache/ResourceCache;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v5

    .line 72
    iget-object v4, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->screens:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->available:I

    aget-object v4, v4, v5

    if-nez v4, :cond_1

    .line 74
    new-instance v3, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/slideme/sam/manager/model/SamConstants;->PREVIEW_URL:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->bundleId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->IMMEDIATE:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;-><init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/io/File;)V

    .line 75
    .local v3, t:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    invoke-virtual {v3}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->submit()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->waitFinish()V

    .line 77
    iget-object v4, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->screens:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->available:I

    invoke-static {}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->getInstance()Lcom/slideme/sam/manager/model/data/cache/ResourceCache;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v5

    .line 79
    .end local v3           #t:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    :cond_1
    iget-object v4, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->screens:[Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->available:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_2

    .line 80
    iget v4, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->available:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/slideme/sam/manager/view/adapters/ImageAdapter;->available:I

    .line 68
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
