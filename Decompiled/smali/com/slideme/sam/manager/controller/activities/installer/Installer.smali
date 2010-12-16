.class public Lcom/slideme/sam/manager/controller/activities/installer/Installer;
.super Landroid/app/ListActivity;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;
    }
.end annotation


# static fields
.field private static final MENU_CATEGORIES:I = 0x3

.field private static final MENU_MANAGE_APPS:I = 0x1

.field private static final MENU_REFRESH:I = 0x2

.field private static final MENU_SORT:I

.field public static labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;

.field private infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/slideme/sam/manager/model/installer/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->labels:Ljava/util/List;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->infos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->adapter:Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;

    return-object v0
.end method


# virtual methods
.method public addToMenu(Landroid/view/Menu;[I)V
    .locals 7
    .parameter "menu"
    .parameter "items"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 127
    array-length v1, p2

    move v2, v5

    :goto_0
    if-lt v2, v1, :cond_0

    .line 144
    return-void

    .line 127
    :cond_0
    aget v0, p2, v2

    .line 128
    .local v0, item:I
    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :pswitch_0
    const v3, 0x7f080042

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02003b

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 133
    :pswitch_1
    const/4 v3, 0x1

    const v4, 0x7f080043

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020036

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 136
    :pswitch_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 137
    const v3, 0x7f080041

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020038

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 140
    :pswitch_3
    const/4 v3, 0x3

    const v4, 0x7f08003c

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020032

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v3, 0x7f030019

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->setContentView(I)V

    .line 76
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->setDefaultKeyMode(I)V

    .line 78
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/slideme/sam/manager/SAM;

    iget-object v3, v3, Lcom/slideme/sam/manager/SAM;->appInfo:Ljava/util/List;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->infos:Ljava/util/List;

    .line 80
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->infos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    new-instance v3, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;

    invoke-direct {v3, p0, p0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;-><init>(Lcom/slideme/sam/manager/controller/activities/installer/Installer;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->adapter:Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;

    .line 88
    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->adapter:Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 92
    .local v2, lv:Landroid/widget/ListView;
    new-instance v3, Lcom/slideme/sam/manager/controller/activities/installer/Installer$3;

    invoke-direct {v3, p0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer$3;-><init>(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    return-void

    .line 80
    .end local v2           #lv:Landroid/widget/ListView;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/installer/AppInfo;

    .line 81
    .local v0, i:Lcom/slideme/sam/manager/model/installer/AppInfo;
    iget-object v1, v0, Lcom/slideme/sam/manager/model/installer/AppInfo;->label:Ljava/lang/String;

    .line 82
    .local v1, label:Ljava/lang/String;
    sget-object v4, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->labels:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    sget-object v4, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->labels:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    const v1, 0x7f0800ad

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0800a6

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f0800a8

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0800a9

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/slideme/sam/manager/controller/activities/installer/Installer$1;

    invoke-direct {v2, p0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer$1;-><init>(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/slideme/sam/manager/controller/activities/installer/Installer$2;

    invoke-direct {v2, p0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer$2;-><init>(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 192
    new-array v0, v1, [I

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->addToMenu(Landroid/view/Menu;[I)V

    .line 193
    return v2
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "queryIntent"

    .prologue
    .line 106
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/slideme/sam/manager/SAM;

    iget-object v4, v4, Lcom/slideme/sam/manager/SAM;->appInfo:Ljava/util/List;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->infos:Ljava/util/List;

    .line 109
    const-string v4, "query"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, query:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 115
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, fQuery:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, newList:Ljava/util/List;,"Ljava/util/List<Lcom/slideme/sam/manager/model/installer/AppInfo;>;"
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->infos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 122
    iput-object v2, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->infos:Ljava/util/List;

    .line 123
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->adapter:Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->notifyDataSetChanged()V

    .line 124
    return-void

    .line 117
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/model/installer/AppInfo;

    .line 118
    .local v1, i:Lcom/slideme/sam/manager/model/installer/AppInfo;
    iget-object v5, v1, Lcom/slideme/sam/manager/model/installer/AppInfo;->label:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 187
    :goto_0
    return v1

    .line 170
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->showDialog(I)V

    move v1, v3

    .line 171
    goto :goto_0

    .line 173
    :pswitch_1
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ManageApplications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 176
    goto :goto_0

    .line 178
    :pswitch_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/SAM;

    iget-object v1, v1, Lcom/slideme/sam/manager/SAM;->appInfo:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->infos:Ljava/util/List;

    .line 179
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->adapter:Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->notifyDataSetChanged()V

    move v1, v3

    .line 180
    goto :goto_0

    .line 182
    :pswitch_3
    const-class v1, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->startActivity(Landroid/content/Intent;)V

    move v1, v3

    .line 184
    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 155
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->infos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/SAM;

    iget-object v0, v0, Lcom/slideme/sam/manager/SAM;->appInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 156
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->addToMenu(Landroid/view/Menu;[I)V

    .line 161
    :goto_0
    return v2

    .line 158
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 280
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 286
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 287
    return-void
.end method
