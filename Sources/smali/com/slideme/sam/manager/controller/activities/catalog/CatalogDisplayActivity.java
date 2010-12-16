.class public Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "CatalogDisplayActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/slideme/sam/manager/model/event/Event$Notifier;


# static fields
.field private static final NO_INTERNET_CONNECTION:I = 0x2

.field public static final REQUEST_CODE:I


# instance fields
.field private catalogListView:Landroid/widget/AbsListView;

.field private final categoryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/slideme/sam/manager/view/adapters/SamListAdapter",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final categoryViewFactory:Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;

.field private currentPosition:I

.field private featuredGalleryView:Landroid/widget/Gallery;

.field private final galleryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/slideme/sam/manager/view/adapters/SamListAdapter",
            "<",
            "Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;",
            ">;"
        }
    .end annotation
.end field

.field private final galleryViewFactory:Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;

.field private final handler:Landroid/os/Handler;

.field private hasMenu:Z

.field private lastPosition:I

.field private loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->REQUEST_CODE:I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->hasMenu:Z

    .line 55
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$1;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->galleryViewFactory:Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;

    .line 74
    new-instance v0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->galleryViewFactory:Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;-><init>(Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->galleryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    .line 76
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$2;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$2;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->categoryViewFactory:Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;

    .line 87
    new-instance v0, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->categoryViewFactory:Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;-><init>(Lcom/slideme/sam/manager/view/adapters/AdapterViewFactory;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->categoryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    .line 205
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$3;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Lcom/slideme/sam/manager/SAM;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    return-object v0
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Lcom/slideme/sam/manager/view/adapters/SamListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->galleryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)Lcom/slideme/sam/manager/view/adapters/SamListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->categoryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    return-object v0
.end method

.method private setupGalleryAndListViews()V
    .locals 2

    .prologue
    .line 321
    const v0, 0x7f0a0057

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->featuredGalleryView:Landroid/widget/Gallery;

    .line 322
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->featuredGalleryView:Landroid/widget/Gallery;

    .line 323
    new-instance v1, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$6;

    invoke-direct {v1, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$6;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)V

    .line 322
    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 337
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->featuredGalleryView:Landroid/widget/Gallery;

    new-instance v1, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$7;

    invoke-direct {v1, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$7;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->featuredGalleryView:Landroid/widget/Gallery;

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 350
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->catalogListView:Landroid/widget/AbsListView;

    .line 351
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->catalogListView:Landroid/widget/AbsListView;

    new-instance v1, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$8;

    invoke-direct {v1, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$8;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 364
    return-void
.end method


# virtual methods
.method public getContext()I
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public notifyEvent(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "code"
    .parameter "data"

    .prologue
    .line 190
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 191
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 192
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    packed-switch p2, :pswitch_data_0

    .line 202
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 95
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getGeneralSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->getFreeApps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setFree(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->refresh()V

    .line 99
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->setContentView(I)V

    .line 140
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->showDialog(I)V

    .line 170
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->update()V

    .line 147
    invoke-static {p0}, Lcom/slideme/sam/manager/view/Notifier;->updateNotifications(Landroid/content/Context;)V

    .line 149
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    const-string v1, "RETAIN_LOADER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/SAM;->release(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    if-nez v0, :cond_2

    .line 151
    :cond_1
    new-instance v0, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    sget v1, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->REQUEST_CODE:I

    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    .line 152
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getGeneralSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->getFreeApps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->setFree(Z)V

    .line 153
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->loadCategories()V

    .line 154
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->loadFeatured()V

    .line 155
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->refresh()V

    .line 159
    :goto_1
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->setupGalleryAndListViews()V

    .line 161
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->galleryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->setContainer(Ljava/util/List;)V

    .line 164
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->categoryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->getCategories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->setContainer(Ljava/util/List;)V

    .line 166
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->featuredGalleryView:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->galleryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 167
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->catalogListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->categoryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 168
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->catalogListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    .line 157
    :cond_2
    const-string v0, "LIST_POSITION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->lastPosition:I

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 133
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 105
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, internetBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 107
    .local v0, iAlert:Landroid/app/AlertDialog;
    const v2, 0x7f0800d1

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    const v2, 0x7f0800c8

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v3, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$4;

    invoke-direct {v3, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$4;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)V

    .line 108
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
    const v2, 0x7f0800c9

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v3, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$5;

    invoke-direct {v3, p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity$5;-><init>(Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;)V

    .line 123
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v2, v0

    .line 131
    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 46
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->hasMenu:Z

    if-nez v0, :cond_0

    .line 47
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, p1, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->addToMenu(Landroid/view/Menu;[I)V

    .line 48
    iput-boolean v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->hasMenu:Z

    .line 51
    :cond_0
    return v1

    .line 47
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->detachNotifier(Lcom/slideme/sam/manager/model/event/Event$Notifier;)V

    .line 310
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onDestroy()V

    .line 311
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 265
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 267
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->moveTaskToBack(Z)Z

    move v0, v1

    .line 270
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
    .line 315
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onLowMemory()V

    .line 316
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onPause()V

    .line 261
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/SAM;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->showDialog(I)V

    .line 277
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onResume()V

    .line 295
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->isInState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onResume()V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->galleryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    .line 284
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->categoryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    .line 286
    const v1, 0x7f0a004e

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 287
    .local v0, lv:Landroid/widget/ListView;
    iget v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->lastPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onResume()V

    goto :goto_0

    .line 288
    .end local v0           #lv:Landroid/widget/ListView;
    :catch_0
    move-exception v1

    .line 291
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onResume()V

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v1

    .line 291
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onResume()V

    .line 292
    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->sam:Lcom/slideme/sam/manager/SAM;

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v0, v1}, Lcom/slideme/sam/manager/SAM;->preserve(Ljava/lang/Object;)V

    .line 251
    const-string v0, "RETAIN_LOADER"

    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v0, "LIST_POSITION"

    iget v1, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->currentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 371
    iput p2, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->currentPosition:I

    .line 372
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "absListView"
    .parameter "i"

    .prologue
    .line 368
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 242
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "RETAIN_LOADER"

    sget v3, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->REQUEST_CODE:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->attachNotifier(Lcom/slideme/sam/manager/model/event/Event$Notifier;I)V

    .line 244
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 245
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 302
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 303
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 304
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->clear()V

    .line 176
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->galleryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    .line 177
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->categoryAdapter:Lcom/slideme/sam/manager/view/adapters/SamListAdapter;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/view/adapters/SamListAdapter;->notifyDataSetChanged()V

    .line 178
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->loader:Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/appstore/catalog/Catalog;->load()V

    .line 182
    return-void
.end method
