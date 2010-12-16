.class public Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;
.implements Lcom/slideme/sam/manager/model/event/Event$Notifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory",
        "<",
        "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;",
        ">;",
        "Lcom/slideme/sam/manager/model/event/Event$Notifier;"
    }
.end annotation


# static fields
.field private static final LIST_POSITION:Ljava/lang/String; = "LIST_POSITION"

#the value of this static final field might be set in the static constructor
.field private static final LOADER_CODE:I = 0x0

.field private static final LOCKER_REQUEST:I = 0x65

#the value of this static final field might be set in the static constructor
.field private static final REQUEST_CODE:I = 0x0

.field private static final RETAINED_LOADER:Ljava/lang/String; = "RETAIN_LOADER"

.field private static final SORT:I = 0x6


# instance fields
.field protected final adapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/slideme/sam/manager/view/adapters/SamListAdapter",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;",
            ">;"
        }
    .end annotation
.end field

.field protected appsView:Landroid/widget/AbsListView;

.field protected currentPosition:I

.field private dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;

.field private hasMenu:Z

.field imageview_dollar:I

.field imageview_icon:I

.field private info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected lastPosition:I

.field layout:I

.field listView:I

.field protected loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

.field mNotificationManager:Landroid/app/NotificationManager;

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

.field private query:Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field textbox_date:I

.field textbox_displayname:I

.field textbox_price:I

.field textbox_vendor:I

.field textbox_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->REQUEST_CODE:I

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->LOADER_CODE:I

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;-><init>(Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->adapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->hasMenu:Z

    .line 836
    const v0, 0x7f0a004e

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->listView:I

    .line 837
    const v0, 0x7f03000b

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->layout:I

    .line 838
    const v0, 0x7f0a0044

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->imageview_dollar:I

    .line 839
    const v0, 0x7f0a0037

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->imageview_icon:I

    .line 840
    const v0, 0x7f0a0009

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_version:I

    .line 841
    const v0, 0x7f0a0040

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_vendor:I

    .line 842
    const v0, 0x7f0a003d

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_displayname:I

    .line 843
    const v0, 0x7f0a0043

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_price:I

    .line 844
    const v0, 0x7f0a0042

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_date:I

    .line 893
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$1;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->handler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)Lcom/slideme/sam/manager/SAM;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    return-object v0
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loadingImageStop()V

    return-void
.end method

.method static synthetic access$3(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->s:[Ljava/lang/String;

    return-object v0
.end method

.method private handleUpdateAction()V
    .locals 3

    .prologue
    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 469
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "DUID"

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    invoke-virtual {v2}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v1, "Updates Check"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 471
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f080014

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPageSize(I)I

    .line 474
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    new-instance v2, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$10;

    invoke-direct {v2, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$10;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setFilter(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;)V

    .line 488
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    new-instance v2, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$11;

    invoke-direct {v2, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$11;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPreloader(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;)V

    .line 531
    return-void
.end method

.method private loadingImage()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 572
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    .local v4, notificationIntent:Landroid/content/Intent;
    const/high16 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 574
    invoke-static {p0, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 577
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    const/high16 v5, 0x7f04

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 578
    .local v3, notification:Landroid/app/Notification;
    const v5, 0x7f080034

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, contentTitle:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 580
    .local v1, contentText:Ljava/lang/CharSequence;
    invoke-virtual {v3, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 584
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->mNotificationManager:Landroid/app/NotificationManager;

    sget v6, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->LOADER_CODE:I

    invoke-virtual {v5, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 586
    return-void
.end method

.method private loadingImageStop()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->LOADER_CODE:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 592
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 595
    :cond_0
    return-void
.end method


# virtual methods
.method public formatPrices(D)Ljava/lang/String;
    .locals 3
    .parameter "d"

    .prologue
    .line 703
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 705
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    :cond_0
    :goto_0
    return-object v0

    .line 708
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
    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "i"
    .parameter "app"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 785
    if-nez p3, :cond_0

    .line 786
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030008

    invoke-virtual {v4, v5, p4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 788
    :cond_0
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->adapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    invoke-virtual {v5}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 789
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->isInState(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 790
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->hasMore()I

    move-result v4

    if-lez v4, :cond_1

    .line 793
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->nextPage()I

    .line 794
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->load()V

    .line 797
    :cond_1
    iget-object v5, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    iget v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->imageview_icon:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 799
    const v4, 0x7f0a0014

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 800
    .local v3, update:Landroid/widget/TextView;
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 802
    iget v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_version:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_vendor:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->vendor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_displayname:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_date:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v7, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->created:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v4, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 812
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->packs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 823
    :cond_3
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    iget-object v5, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    iget-object v6, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/slideme/sam/manager/SAM;->getActivityInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 824
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    iget-object v5, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/slideme/sam/manager/SAM;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 825
    .local v1, isPackagePresent:Ljava/lang/Boolean;
    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 826
    :cond_4
    iget v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_price:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0800be

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 827
    iget v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->imageview_dollar:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 831
    :goto_1
    iget-wide v4, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->rating:D

    invoke-virtual {p0, v4, v5, p3}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setRating5(DLandroid/view/View;)V

    .line 833
    return-object p3

    .line 812
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #isPackagePresent:Ljava/lang/Boolean;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 813
    .local v2, p:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 816
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v6, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 817
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 829
    .end local v2           #p:Landroid/content/pm/PackageInfo;
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v1       #isPackagePresent:Ljava/lang/Boolean;
    :cond_6
    iget-wide v6, p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    iget v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->textbox_price:I

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->imageview_dollar:I

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setPrice(DLandroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public bridge synthetic getView(ILjava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getView(ILcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected load()V
    .locals 1

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loadingImage()V

    .line 604
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->load()V

    .line 605
    return-void
.end method

.method public notifyEvent(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "code"
    .parameter "data"

    .prologue
    .line 876
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 877
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 878
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 879
    packed-switch p2, :pswitch_data_0

    .line 891
    :goto_0
    :pswitch_0
    return-void

    .line 881
    :pswitch_1
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 886
    :pswitch_2
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 887
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loadingImageStop()V

    goto :goto_0

    .line 879
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "request"
    .parameter "result"
    .parameter "intent"

    .prologue
    .line 546
    packed-switch p1, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 549
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    .line 560
    :goto_1
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->finish()V

    goto :goto_0

    .line 551
    :pswitch_1
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->load()V

    goto :goto_0

    .line 554
    :pswitch_2
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$12;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$12;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 546
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch

    .line 549
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "bundle"

    .prologue
    .line 76
    invoke-super/range {p0 .. p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->layout:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setContentView(I)V

    .line 81
    const-string v17, ""

    const v18, 0x7f0800bb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dialog:Landroid/app/ProgressDialog;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dialog:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 84
    const-string v17, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, action:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->packs:Ljava/util/List;

    .line 89
    const/4 v9, 0x1

    .line 90
    .local v9, load:Z
    if-eqz p1, :cond_0

    .line 91
    const-string v17, "LIST_POSITION"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->lastPosition:I

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v17, v0

    const-string v18, "RETAIN_LOADER"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/SAM;->release(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    if-nez v4, :cond_17

    .line 95
    :cond_1
    new-instance v17, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    sget v18, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->REQUEST_CODE:I

    const v19, 0x7f080008

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getGeneralSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->getFreeApps()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setFree(Z)V

    .line 97
    const-string v17, "TOP"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 98
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v10, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "DUID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v17, "Popular Apps"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    new-instance v16, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    invoke-direct/range {v16 .. v16}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;-><init>()V

    .line 102
    .local v16, s:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;
    sget-object v17, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->FIELD:[Ljava/lang/String;

    const/16 v18, 0x3

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->field:Ljava/lang/String;

    .line 103
    sget-object v17, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->ORDER:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->order:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setSort(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;)Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    .line 105
    new-instance v17, Ljava/lang/StringBuilder;

    const v18, 0x7f080014

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080045

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #s:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;
    :goto_0
    if-eqz v9, :cond_2

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->load()V

    .line 455
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->adapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->getApps()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->setContainer(Ljava/util/List;)V

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->listView:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 456
    .end local p1
    check-cast p1, Landroid/widget/AbsListView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->appsView:Landroid/widget/AbsListView;

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->appsView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->appsView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->appsView:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->adapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 465
    return-void

    .line 107
    .restart local p1
    :cond_3
    const-string v17, "LATEST"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 108
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 109
    .restart local v10       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "DUID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v17, "Latest Apps"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    new-instance v16, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    invoke-direct/range {v16 .. v16}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;-><init>()V

    .line 112
    .restart local v16       #s:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;
    sget-object v17, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->FIELD:[Ljava/lang/String;

    const/16 v18, 0x5

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->field:Ljava/lang/String;

    .line 113
    sget-object v17, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->ORDER:[Ljava/lang/String;

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->order:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setSort(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;)Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    .line 115
    new-instance v17, Ljava/lang/StringBuilder;

    const v18, 0x7f080014

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f08003a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 117
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #s:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;
    :cond_4
    const-string v17, "LOCAL"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 118
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 119
    .restart local v10       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "DUID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v17, "Local Apps"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/SAM;->getLocale()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setLocal(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v17, "UPDATE"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->handleUpdateAction()V

    .line 143
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 145
    :cond_6
    const-string v17, "MY_DOWNLOADS"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 146
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 147
    .restart local v10       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "DUID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v17, "My Downloads"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    new-instance v17, Ljava/lang/StringBuilder;

    const v18, 0x7f080014

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f08004a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPageSize(I)I

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$2;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setFilter(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Filter;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$3;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPreloader(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;)V

    .line 197
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 200
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    const-string v17, "SORT"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "whichButton"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 203
    .local v11, option:I
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "asc"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 206
    .local v6, asc:Z
    new-instance v16, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    invoke-direct/range {v16 .. v16}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;-><init>()V

    .line 207
    .restart local v16       #s:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;
    sget-object v17, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->ORDER:[Ljava/lang/String;

    if-eqz v6, :cond_9

    const/16 v18, 0x0

    :goto_2
    aget-object v17, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->order:Ljava/lang/String;

    .line 208
    sget-object v17, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->FIELD:[Ljava/lang/String;

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;->field:Ljava/lang/String;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setSort(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;)Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "CATEGORY"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, category:Ljava/lang/String;
    if-eqz v7, :cond_8

    const-string v17, ""

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setCategory(Ljava/lang/String;)V

    .line 214
    new-instance v17, Ljava/lang/StringBuilder;

    const v18, 0x7f080014

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/SAM;->translateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "PAGE"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 217
    .local v12, page:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPage(I)I

    goto/16 :goto_0

    .line 207
    .end local v7           #category:Ljava/lang/String;
    .end local v12           #page:I
    :cond_9
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 219
    .end local v6           #asc:Z
    .end local v11           #option:I
    .end local v16           #s:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Sort;
    :cond_a
    const-string v17, "android.intent.action.SEARCH"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 221
    :cond_b
    :goto_3
    sget-object v17, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->searchStack:Ljava/util/LinkedList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .local v4, a:Landroid/app/Activity;
    if-nez v4, :cond_c

    .line 223
    sget-object v17, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->searchStack:Ljava/util/LinkedList;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 225
    .restart local v10       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "DUID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v17, "Search Apps"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "query"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, q:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPageSize(I)I

    .line 229
    if-eqz v14, :cond_d

    .line 230
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->query:Ljava/lang/String;

    .line 231
    new-instance v17, Ljava/lang/StringBuilder;

    const v18, 0x7f080044

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->query:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$4;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPreloader(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;)V

    .line 263
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 222
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #q:Ljava/lang/String;
    :cond_c
    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    .line 267
    .restart local v10       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #q:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->s:[Ljava/lang/String;

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->s:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->s:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v15, v17, v18

    .local v15, queryType:Ljava/lang/String;
    if-eqz v15, :cond_f

    const-string v17, "q"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "bundleId"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "id"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->s:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v13, v17, v18

    .local v13, parameter:Ljava/lang/String;
    if-nez v13, :cond_10

    .line 268
    .end local v13           #parameter:Ljava/lang/String;
    .end local v15           #queryType:Ljava/lang/String;
    :cond_f
    const v17, 0x7f080044

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$5;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPreloader(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;)V

    .line 282
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 284
    .restart local v13       #parameter:Ljava/lang/String;
    .restart local v15       #queryType:Ljava/lang/String;
    :cond_10
    const-string v17, "bundleId"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 285
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->query:Ljava/lang/String;

    .line 286
    const v17, 0x7f080044

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$6;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPreloader(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;)V

    .line 301
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 302
    :cond_11
    const-string v17, "id"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 303
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->query:Ljava/lang/String;

    .line 304
    const v17, 0x7f080044

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$7;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPreloader(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;)V

    .line 319
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 321
    :cond_12
    const-string v17, "pub:"

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 322
    const-string v17, "pub:"

    const-string v18, ""

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 323
    :cond_13
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->query:Ljava/lang/String;

    .line 324
    const v17, 0x7f080044

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$8;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPreloader(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;)V

    .line 357
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 361
    .end local v4           #a:Landroid/app/Activity;
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #parameter:Ljava/lang/String;
    .end local v14           #q:Ljava/lang/String;
    .end local v15           #queryType:Ljava/lang/String;
    :cond_14
    const-string v17, "LOCKER"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 363
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 364
    .restart local v10       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "DUID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v17, "Open Storage Locker"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPageSize(I)I

    .line 369
    new-instance v17, Ljava/lang/StringBuilder;

    const v18, 0x7f080014

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080047

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity$9;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;)V

    invoke-virtual/range {v17 .. v18}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPreloader(Lcom/slideme/sam/manager/model/appstore/catalog/Catalog$Preloader;)V

    .line 419
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v8, i:Landroid/content/Intent;
    const-class v17, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 421
    const/16 v17, 0x65

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 422
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 428
    .end local v8           #i:Landroid/content/Intent;
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "CATEGORY"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 429
    .restart local v7       #category:Ljava/lang/String;
    if-eqz v7, :cond_16

    const-string v17, ""

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_16

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setCategory(Ljava/lang/String;)V

    .line 431
    new-instance v17, Ljava/lang/StringBuilder;

    const v18, 0x7f080014

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/SAM;->translateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "PAGE"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 434
    .restart local v12       #page:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setPage(I)I

    goto/16 :goto_0

    .line 442
    .end local v7           #category:Ljava/lang/String;
    .end local v12           #page:I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "CATEGORY"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 443
    .restart local v7       #category:Ljava/lang/String;
    if-eqz v7, :cond_18

    const-string v17, ""

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_18

    .line 444
    new-instance v17, Ljava/lang/StringBuilder;

    const v18, 0x7f080014

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/SAM;->translateCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 445
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 446
    .restart local v10       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "DUID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v17, "Name"

    move-object v0, v10

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v17, "Open Category"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 451
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_18
    const-string v17, "LIST_POSITION"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->lastPosition:I

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 748
    packed-switch p1, :pswitch_data_0

    .line 752
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 750
    :pswitch_0
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;

    invoke-direct {v0, p0, p0}, Lcom/slideme/sam/manager/controller/activities/notification/SortDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 732
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 733
    iget-boolean v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->hasMenu:Z

    if-nez v1, :cond_1

    .line 734
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "TOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LATEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LOCKER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MY_DOWNLOADS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    :cond_0
    new-array v1, v3, [I

    aput v5, v1, v6

    const/4 v2, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->addToMenu(Landroid/view/Menu;[I)V

    .line 740
    :goto_0
    iput-boolean v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->hasMenu:Z

    .line 743
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    return v4

    .line 738
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    new-array v1, v5, [I

    const/16 v2, 0xa

    aput v2, v1, v6

    aput v5, v1, v4

    aput v3, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->addToMenu(Landroid/view/Menu;[I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 668
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->detachNotifier(Lcom/slideme/sam/manager/model/event/Event$Notifier;)V

    .line 670
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onDestroy()V

    .line 671
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "j"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, v:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/Adapter;

    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 767
    .local v0, application:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    const v4, 0x7f0a0014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 768
    .local v3, update:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->getCategory()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 769
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->getCategory()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->category:Ljava/lang/String;

    .line 771
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 772
    .local v2, intent:Landroid/content/Intent;
    const-class v4, Lcom/slideme/sam/manager/controller/activities/bundle/BundleDisplayActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 773
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 774
    .local v1, b:Landroid/os/Bundle;
    const-string v4, "APPLICATION"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 775
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 777
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 778
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LOCKER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 779
    const-string v4, "locker"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 780
    :cond_1
    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 781
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 921
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 922
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->finish()V

    .line 923
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loadingImageStop()V

    .line 924
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->cancel()V

    .line 926
    const/4 v0, 0x1

    .line 928
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 675
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onLowMemory()V

    .line 676
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 643
    :cond_0
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onPause()V

    .line 644
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 535
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 536
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 538
    :cond_0
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 541
    :cond_1
    const-string v1, "LIST_POSITION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->lastPosition:I

    .line 543
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->appsView:Landroid/widget/AbsListView;

    iget v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->lastPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onResume()V

    .line 656
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v0

    .line 654
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onResume()V

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    .line 654
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onResume()V

    .line 655
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 623
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 624
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->sam:Lcom/slideme/sam/manager/SAM;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/SAM;->preserve(Ljava/lang/Object;)V

    .line 627
    const-string v0, "RETAIN_LOADER"

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    const-string v0, "LIST_POSITION"

    iget v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->currentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    iget v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->currentPosition:I

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->lastPosition:I

    .line 632
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 761
    iput p2, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->currentPosition:I

    .line 762
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "absListView"
    .parameter "i"

    .prologue
    .line 758
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 609
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->packs:Ljava/util/List;

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 611
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->info:Ljava/util/List;

    .line 614
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->adapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    .line 615
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v1

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "RETAIN_LOADER"

    sget v4, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->REQUEST_CODE:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->attachNotifier(Lcom/slideme/sam/manager/model/event/Event$Notifier;I)V

    .line 617
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 618
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 662
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 663
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 664
    return-void
.end method

.method protected setPrice(DLandroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 4
    .parameter "price"
    .parameter "priceView"
    .parameter "dollar"

    .prologue
    const/16 v3, 0x8

    const-wide/16 v1, 0x0

    .line 687
    cmpl-double v0, p1, v1

    if-lez v0, :cond_0

    .line 689
    invoke-virtual {p0, p1, p2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->formatPrices(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    :goto_0
    return-void

    .line 692
    :cond_0
    cmpg-double v0, p1, v1

    if-gez v0, :cond_1

    .line 693
    const v0, 0x7f0800be

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 694
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 696
    :cond_1
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setRating5(DLandroid/view/View;)V
    .locals 6
    .parameter "rating"
    .parameter "view"

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 717
    const-wide/high16 v2, 0x4034

    div-double/2addr p1, v2

    .line 719
    const v2, 0x7f0a0038

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sub-double v0, p1, v4

    .end local p1
    .local v0, rating:D
    invoke-virtual {p0, v2, p1, p2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 720
    const v2, 0x7f0a0039

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sub-double p1, v0, v4

    .end local v0           #rating:D
    .restart local p1
    invoke-virtual {p0, v2, v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 721
    const v2, 0x7f0a003a

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sub-double v0, p1, v4

    .end local p1
    .restart local v0       #rating:D
    invoke-virtual {p0, v2, p1, p2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 722
    const v2, 0x7f0a003b

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sub-double p1, v0, v4

    .end local v0           #rating:D
    .restart local p1
    invoke-virtual {p0, v2, v0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 723
    const v2, 0x7f0a003c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 724
    return-void
.end method
