.class public final Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "BundleDisplayActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/slideme/sam/manager/model/event/Event$Notifier;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static activityStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static isSingleDisplay:Z


# instance fields
.field private GD:Lcom/slideme/sam/manager/model/utils/GifDecoder;

.field appDisplayDescription:Landroid/widget/TextView;

.field appDisplayScroll:Landroid/widget/ScrollView;

.field compatibility:Landroid/view/View;

.field private gestureScanner:Landroid/view/GestureDetector;

.field private hasMenu:Z

.field private isPlayingGif:Z

.field final mHandler:Landroid/os/Handler;

.field private mSwitcher:Landroid/widget/ImageSwitcher;

.field final mUpdateResults:Ljava/lang/Runnable;

.field packs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tmpBitmap:Landroid/graphics/Bitmap;

.field private tmpGIF:Landroid/widget/ImageView;

.field private v:Landroid/view/View;

.field private v_open:Landroid/view/View;

.field private visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->activityStack:Ljava/util/LinkedList;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->isSingleDisplay:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->GD:Lcom/slideme/sam/manager/model/utils/GifDecoder;

    .line 38
    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->tmpGIF:Landroid/widget/ImageView;

    .line 39
    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->mHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->hasMenu:Z

    .line 117
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$1;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->mUpdateResults:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->tmpGIF:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$10(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->visibility:I

    return v0
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Lcom/slideme/sam/manager/model/utils/GifDecoder;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->GD:Lcom/slideme/sam/manager/model/utils/GifDecoder;

    return-object v0
.end method

.method static synthetic access$3(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->tmpBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->isPlayingGif:Z

    return v0
.end method

.method static synthetic access$5(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->isPlayingGif:Z

    return-void
.end method

.method static synthetic access$6(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->initScreenshotsSwitcher()V

    return-void
.end method

.method static synthetic access$7(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Landroid/widget/ImageSwitcher;
    .locals 1
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->mSwitcher:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$8(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)Lcom/slideme/sam/manager/SAM;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    return-object v0
.end method

.method static synthetic access$9(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-direct {p0, p1, p2, p3}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setBar(Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Z)V

    return-void
.end method

.method private hasVideo()Z
    .locals 5

    .prologue
    .line 385
    const/4 v1, 0x1

    .line 387
    .local v1, hasVideo:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.youtube"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return v1

    .line 388
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 389
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private howManyScreenshots(I)I
    .locals 2
    .parameter "preview"

    .prologue
    .line 227
    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getGeneralSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->getXScreenshots()I

    move-result v0

    .line 228
    .local v0, max:I
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    move v1, p1

    .line 231
    :goto_0
    return v1

    :cond_1
    if-lt v0, p1, :cond_2

    move v1, p1

    .line 232
    goto :goto_0

    :cond_2
    move v1, v0

    .line 233
    goto :goto_0
.end method

.method private initScreenshotsSwitcher()V
    .locals 2

    .prologue
    .line 397
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 398
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->mSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 399
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 400
    const/high16 v1, 0x10a

    .line 399
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 401
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->mSwitcher:Landroid/widget/ImageSwitcher;

    .line 402
    const v1, 0x10a0001

    .line 401
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 403
    return-void
.end method

.method private playGIF(Ljava/io/InputStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 124
    new-instance v1, Lcom/slideme/sam/manager/model/utils/GifDecoder;

    invoke-direct {v1}, Lcom/slideme/sam/manager/model/utils/GifDecoder;-><init>()V

    iput-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->GD:Lcom/slideme/sam/manager/model/utils/GifDecoder;

    .line 125
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->GD:Lcom/slideme/sam/manager/model/utils/GifDecoder;

    invoke-virtual {v1, p1}, Lcom/slideme/sam/manager/model/utils/GifDecoder;->read(Ljava/io/InputStream;)I

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->isPlayingGif:Z

    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;

    invoke-direct {v1, p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$2;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    .local v0, gifPlayingThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    return-void
.end method

.method private setBar(Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Z)V
    .locals 12
    .parameter "info"
    .parameter "app"
    .parameter "isPresent"

    .prologue
    const/16 v11, 0x8

    const v10, 0x7f08002b

    const/4 v9, 0x4

    const v8, -0x333334

    const/4 v7, 0x0

    .line 523
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "locker"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 524
    if-nez p1, :cond_0

    if-eqz p3, :cond_3

    .line 526
    :cond_0
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 528
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    const v6, 0x7f0a0032

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 532
    .local v1, imageButton:Landroid/widget/Button;
    if-eqz p1, :cond_1

    .line 534
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$8;

    invoke-direct {v5, p0, p1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$8;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    :goto_0
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    const v6, 0x7f0a0033

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 547
    .local v2, imageButton2:Landroid/widget/Button;
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$9;

    invoke-direct {v5, p0, p2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$9;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    const v6, 0x7f0a0034

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 557
    .local v3, imageButton3:Landroid/widget/Button;
    iget v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->visibility:I

    if-nez v5, :cond_2

    .line 558
    const v5, 0x7f08001d

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :goto_1
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$10;

    invoke-direct {v5, p0, p2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$10;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    .end local v1           #imageButton:Landroid/widget/Button;
    .end local v2           #imageButton2:Landroid/widget/Button;
    .end local v3           #imageButton3:Landroid/widget/Button;
    :goto_2
    return-void

    .line 542
    .restart local v1       #imageButton:Landroid/widget/Button;
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 560
    .restart local v2       #imageButton2:Landroid/widget/Button;
    .restart local v3       #imageButton3:Landroid/widget/Button;
    :cond_2
    invoke-virtual {p0, v10}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 579
    .end local v1           #imageButton:Landroid/widget/Button;
    .end local v2           #imageButton2:Landroid/widget/Button;
    .end local v3           #imageButton3:Landroid/widget/Button;
    :cond_3
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 580
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 581
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    const v6, 0x7f0a002e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 584
    .local v0, download:Landroid/widget/Button;
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    const v6, 0x7f0a0030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 587
    .local v4, redownload:Landroid/widget/Button;
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 588
    invoke-virtual {v4, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    const v5, 0x7f08002c

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 592
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$11;

    invoke-direct {v5, p0, p2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$11;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    .line 591
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 607
    .end local v0           #download:Landroid/widget/Button;
    .end local v4           #redownload:Landroid/widget/Button;
    :cond_4
    if-nez p1, :cond_5

    if-eqz p3, :cond_8

    .line 609
    :cond_5
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 611
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 614
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    const v6, 0x7f0a0032

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 615
    .restart local v1       #imageButton:Landroid/widget/Button;
    if-eqz p1, :cond_6

    .line 617
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$12;

    invoke-direct {v5, p0, p1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$12;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    :goto_3
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    const v6, 0x7f0a0033

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 630
    .restart local v2       #imageButton2:Landroid/widget/Button;
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$13;

    invoke-direct {v5, p0, p2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$13;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    const v6, 0x7f0a0034

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 640
    .restart local v3       #imageButton3:Landroid/widget/Button;
    iget v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->visibility:I

    if-nez v5, :cond_7

    .line 641
    const v5, 0x7f08001d

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :goto_4
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$14;

    invoke-direct {v5, p0, p2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$14;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 625
    .end local v2           #imageButton2:Landroid/widget/Button;
    .end local v3           #imageButton3:Landroid/widget/Button;
    :cond_6
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 643
    .restart local v2       #imageButton2:Landroid/widget/Button;
    .restart local v3       #imageButton3:Landroid/widget/Button;
    :cond_7
    invoke-virtual {p0, v10}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 660
    .end local v1           #imageButton:Landroid/widget/Button;
    .end local v2           #imageButton2:Landroid/widget/Button;
    .end local v3           #imageButton3:Landroid/widget/Button;
    :cond_8
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 662
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    const v6, 0x7f0a002e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 665
    .restart local v0       #download:Landroid/widget/Button;
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    const v6, 0x7f0a0030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 668
    .restart local v4       #redownload:Landroid/widget/Button;
    invoke-virtual {v0, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 669
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 670
    invoke-virtual {p0, v10}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 673
    new-instance v5, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$15;

    invoke-direct {v5, p0, p2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$15;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    .line 672
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method private setPrice(DLandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 5
    .parameter "price"
    .parameter "priceView"
    .parameter "dollar"
    .parameter "free"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 698
    cmpl-double v0, p1, v3

    if-lez v0, :cond_0

    .line 700
    invoke-virtual {p0, p1, p2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->formatPrices(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 703
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    :goto_0
    return-void

    .line 704
    :cond_0
    cmpg-double v0, p1, v3

    if-gez v0, :cond_1

    .line 705
    const v0, 0x7f0800be

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 706
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 711
    :cond_1
    const v0, 0x7f0800bd

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 712
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 713
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 714
    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRemoteResources(Ljava/lang/String;I)V
    .locals 2
    .parameter "bundleId"
    .parameter "imagesCount"

    .prologue
    .line 259
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->tmpGIF:Landroid/widget/ImageView;

    .line 261
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->playGIF(Ljava/io/InputStream;)V

    .line 264
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Ljava/lang/String;I)V

    .line 338
    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$3;->start()V

    .line 339
    return-void
.end method

.method private setYouTuBehehe(Ljava/lang/String;)V
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x4

    const v3, 0x7f0a001c

    .line 363
    if-nez p1, :cond_0

    .line 364
    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 365
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 382
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_1

    .line 369
    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 370
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 372
    .end local v1           #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 374
    .local v0, imageBtn:Landroid/widget/ImageButton;
    new-instance v2, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$4;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private textFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "destination"

    .prologue
    .line 342
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 345
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 346
    .local v3, fis:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 348
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, c:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 350
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 351
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .end local v0           #c:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v5

    .line 349
    .restart local v0       #c:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #out:Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 352
    .end local v0           #c:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 353
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 358
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 354
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 355
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 90
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->gestureScanner:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public formatPrices(D)Ljava/lang/String;
    .locals 3
    .parameter "d"

    .prologue
    .line 719
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 721
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    :cond_0
    :goto_0
    return-object v0

    .line 724
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()I
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x1

    return v0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 744
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 745
    .local v0, i:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 746
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 747
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 746
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    return-object v0
.end method

.method public notifyEvent(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "code"
    .parameter "data"

    .prologue
    .line 783
    packed-switch p2, :pswitch_data_0

    .line 798
    :pswitch_0
    return-void

    .line 783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "i"
    .parameter "j"
    .parameter "intent"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "APPLICATION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 95
    .local v0, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    iget-object v1, v1, Lcom/slideme/sam/manager/SAM;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->removeId([Ljava/lang/String;)Z

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "bundle"

    .prologue
    .line 153
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 158
    :cond_0
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setContentView(I)V

    .line 162
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v8

    .line 163
    .local v8, object:Ljava/lang/Object;
    if-nez v8, :cond_1

    .line 165
    :goto_0
    sget-object v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .local v6, a:Landroid/app/Activity;
    if-nez v6, :cond_2

    .line 167
    sget-object v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->activityStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v6           #a:Landroid/app/Activity;
    :cond_1
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    .line 170
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    .line 172
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "APPLICATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 175
    .local v7, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    iget-object v0, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->youtube:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setYouTuBehehe(Ljava/lang/String;)V

    .line 179
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->gestureScanner:Landroid/view/GestureDetector;

    .line 181
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->compatibility:Landroid/view/View;

    .line 182
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->appDisplayScroll:Landroid/widget/ScrollView;

    .line 183
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->appDisplayDescription:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->vendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    iget-object v1, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/SAM;->translateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->dateFormatter:Ljava/text/SimpleDateFormat;

    iget-wide v1, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->created:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->calculateSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 198
    .local v3, price:Landroid/widget/TextView;
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 199
    .local v4, dollar:Landroid/widget/ImageView;
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 201
    .local v5, free:Landroid/widget/TextView;
    iget-wide v1, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setPrice(DLandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 206
    iget-object v0, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    const v1, 0x7f0a000d

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 209
    iget-wide v0, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->rating:D

    const-wide/high16 v2, 0x4034

    div-double v9, v0, v2

    .line 211
    .local v9, rating:D
    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-wide/high16 v0, 0x3ff0

    sub-double v11, v9, v0

    .end local v9           #rating:D
    .local v11, rating:D
    invoke-virtual {p0, p1, v9, v10}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 212
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-wide/high16 v0, 0x3ff0

    sub-double v9, v11, v0

    .end local v11           #rating:D
    .restart local v9       #rating:D
    invoke-virtual {p0, p1, v11, v12}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 213
    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-wide/high16 v0, 0x3ff0

    sub-double v11, v9, v0

    .end local v9           #rating:D
    .restart local v11       #rating:D
    invoke-virtual {p0, p1, v9, v10}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 214
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-wide/high16 v0, 0x3ff0

    sub-double v9, v11, v0

    .end local v11           #rating:D
    .restart local v9       #rating:D
    invoke-virtual {p0, p1, v11, v12}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 215
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v9, v10}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 217
    iget-object v0, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    iget v1, v7, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->preview:I

    invoke-direct {p0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->howManyScreenshots(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setRemoteResources(Ljava/lang/String;I)V

    .line 219
    return-void

    .line 166
    .end local v3           #price:Landroid/widget/TextView;
    .end local v4           #dollar:Landroid/widget/ImageView;
    .end local v5           #free:Landroid/widget/TextView;
    .end local v7           #app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    .end local v9           #rating:D
    .restart local v6       #a:Landroid/app/Activity;
    .restart local p1
    :cond_2
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 107
    sget-boolean v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->isSingleDisplay:Z

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 109
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->hasMenu:Z

    if-nez v0, :cond_0

    .line 110
    new-array v0, v3, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->addToMenu(Landroid/view/Menu;[I)V

    .line 111
    iput-boolean v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->hasMenu:Z

    .line 114
    :cond_0
    return v2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 754
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onDestroy()V

    .line 755
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "motionEvent"
    .parameter "motionEvent1"
    .parameter "v"
    .parameter "v1"

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "motionEvent"

    .prologue
    .line 81
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    const-string v0, "Orientation has changed!"

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "motionEvent"
    .parameter "motionEvent1"
    .parameter "v"
    .parameter "v1"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->appDisplayScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->appDisplayDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->compatibility:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->appDisplayScroll:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->appDisplayDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->compatibility:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "motionEvent"

    .prologue
    .line 66
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 12

    .prologue
    .line 410
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 411
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "APPLICATION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 413
    .local v4, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->packs:Ljava/util/List;

    .line 414
    const/16 v1, 0x8

    iput v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->visibility:I

    .line 416
    iget-object v1, v4, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->packs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 425
    :cond_1
    const v1, 0x7f0a0014

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->visibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/SAM;->refreshInstalledApps()V

    .line 429
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    iget-object v2, v4, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    iget-object v3, v4, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/slideme/sam/manager/SAM;->getActivityInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 430
    .local v3, mainActivityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    iget-object v2, v4, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/SAM;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 432
    .local v5, isPackagePresent:Ljava/lang/Boolean;
    const v1, 0x7f0a0031

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 433
    .local v6, compatibilityButton:Landroid/widget/Button;
    new-instance v1, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$5;

    invoke-direct {v1, p0, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$5;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    const v1, 0x7f0a002b

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 443
    .local v11, v_compatibility:Landroid/view/View;
    const v1, -0x333334

    invoke-virtual {v11, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 446
    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->isDownloading()Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;

    move-result-object v10

    .local v10, task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    if-eqz v10, :cond_3

    .line 447
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v_open:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 448
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 450
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 451
    .local v7, download:Landroid/widget/Button;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 452
    .local v9, redownload:Landroid/widget/Button;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 453
    .local v2, cancel:Landroid/widget/Button;
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 454
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 455
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 456
    new-instance v1, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$6;

    invoke-direct {v1, p0, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$6;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity$7;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;Landroid/widget/Button;Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Ljava/lang/Boolean;)V

    .line 499
    .local v0, obs:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;
    invoke-virtual {v10, v0}, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;->registerObserver(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;)V

    .line 505
    .end local v0           #obs:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;
    .end local v7           #download:Landroid/widget/Button;
    .end local v9           #redownload:Landroid/widget/Button;
    :goto_1
    return-void

    .line 417
    .end local v2           #cancel:Landroid/widget/Button;
    .end local v3           #mainActivityInfo:Landroid/content/pm/ActivityInfo;
    .end local v5           #isPackagePresent:Ljava/lang/Boolean;
    .end local v6           #compatibilityButton:Landroid/widget/Button;
    .end local v10           #task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    .end local v11           #v_compatibility:Landroid/view/View;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 418
    .local v8, p:Landroid/content/pm/PackageInfo;
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v4, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    iget-object v3, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v4, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v3, v4, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    const/4 v2, 0x0

    iput v2, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->visibility:I

    goto/16 :goto_0

    .line 501
    .end local v8           #p:Landroid/content/pm/PackageInfo;
    .restart local v3       #mainActivityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v5       #isPackagePresent:Ljava/lang/Boolean;
    .restart local v6       #compatibilityButton:Landroid/widget/Button;
    .restart local v10       #task:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask;
    .restart local v11       #v_compatibility:Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->v:Landroid/view/View;

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 502
    .restart local v2       #cancel:Landroid/widget/Button;
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 503
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v3, v4, v1}, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;->setBar(Landroid/content/pm/ActivityInfo;Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Z)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 692
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 693
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 694
    return-void
.end method
