.class public Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static final LATEST_APPS:I = 0x8

.field public static final MENU_CATEGORIES:I = 0x0

.field public static final MENU_HELP:I = 0x3

.field public static final MENU_LOCAL:I = 0xd

.field public static final MENU_MANAGE_APPS:I = 0x1

.field public static final MENU_REFRESH:I = 0xe

.field public static final MENU_SETTINGS:I = 0xc

.field public static final MENU_SORT:I = 0xa

.field public static final MENU_UPDATES:I = 0x6

.field public static final SDCARD:I = 0x9

.field public static final SEARCH:I = 0x4

.field public static final STORAGE_LOCKER:I = 0x7

.field public static final TOP:I = 0x5

.field public static searchStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected dateFormatter:Ljava/text/SimpleDateFormat;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected sam:Lcom/slideme/sam/manager/SAM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->searchStack:Ljava/util/LinkedList;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public addToMenu(Landroid/view/Menu;[I)V
    .locals 8
    .parameter "menu"
    .parameter "items"

    .prologue
    const v7, 0x7f020036

    const v6, 0x7f020032

    const/4 v5, 0x0

    .line 128
    array-length v1, p2

    move v2, v5

    :goto_0
    if-lt v2, v1, :cond_0

    .line 174
    return-void

    .line 128
    :cond_0
    aget v0, p2, v2

    .line 129
    .local v0, item:I
    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :pswitch_1
    const v3, 0x7f08003c

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 134
    :pswitch_2
    const/4 v3, 0x1

    const v4, 0x7f08003d

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 137
    :pswitch_3
    const/16 v3, 0xe

    const v4, 0x7f08004b

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020038

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 140
    :pswitch_4
    const/4 v3, 0x3

    const v4, 0x7f08003f

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020033

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 143
    :pswitch_5
    const/4 v3, 0x4

    const v4, 0x7f080044

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020039

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 146
    :pswitch_6
    const/4 v3, 0x5

    const v4, 0x7f080045

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02003c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 149
    :pswitch_7
    const/4 v3, 0x6

    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02003d

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 152
    :pswitch_8
    const/4 v3, 0x7

    const v4, 0x7f080047

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02002e

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 155
    :pswitch_9
    const/16 v3, 0x8

    const v4, 0x7f08003a

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020034

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 158
    :pswitch_a
    const/16 v3, 0x9

    const v4, 0x7f080040

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020020

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 161
    :pswitch_b
    const/16 v3, 0xa

    const v4, 0x7f080042

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02003b

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 167
    :pswitch_c
    const/16 v3, 0xc

    const v4, 0x7f08003b

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 170
    :pswitch_d
    const/16 v3, 0xd

    const v4, 0x7f080049

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saved"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/SAM;

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->sam:Lcom/slideme/sam/manager/SAM;

    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 94
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->inflater:Landroid/view/LayoutInflater;

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const-string v5, "android.intent.action.MAIN"

    const-class v3, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    .line 178
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v1, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 246
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 181
    :pswitch_1
    const-class v2, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 184
    goto :goto_0

    .line 186
    :pswitch_2
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 189
    goto :goto_0

    .line 191
    :pswitch_3
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-class v2, Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 194
    goto :goto_0

    .line 196
    :pswitch_4
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onSearchRequested()Z

    move v2, v4

    .line 197
    goto :goto_0

    .line 199
    :pswitch_5
    const-string v2, "TOP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-class v2, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 202
    goto :goto_0

    .line 204
    :pswitch_6
    const-string v2, "UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-class v2, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 207
    goto :goto_0

    .line 209
    :pswitch_7
    const-string v2, "LOCKER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-class v2, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 212
    goto :goto_0

    .line 214
    :pswitch_8
    const-string v2, "LATEST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-class v2, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 217
    goto :goto_0

    .line 223
    :pswitch_9
    const-class v2, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 225
    goto :goto_0

    .line 227
    :pswitch_a
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->showDialog(I)V

    move v2, v4

    .line 228
    goto :goto_0

    .line 233
    :pswitch_b
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->refresh()V

    move v2, v4

    .line 234
    goto :goto_0

    .line 236
    :pswitch_c
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, i:Landroid/content/Intent;
    const-class v2, Lcom/slideme/sam/manager/controller/activities/settings/Settings;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 238
    const/16 v2, 0xb

    invoke-virtual {p0, v0, v2}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v4

    .line 239
    goto/16 :goto_0

    .line 241
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_d
    const-string v2, "LOCAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-class v2, Lcom/slideme/sam/manager/controller/activities/catalog/CategoryActivity;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 244
    goto/16 :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method protected refresh()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public setIcon(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 9
    .parameter "bundleId"
    .parameter "icon"

    .prologue
    const-string v8, "images/icons/"

    const-string v7, ".png"

    .line 274
    monitor-enter p2

    .line 275
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 274
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-static {}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->getInstance()Lcom/slideme/sam/manager/model/data/cache/ResourceCache;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "images/icons/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 278
    .local v1, iconBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 280
    new-instance v2, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$1;

    invoke-direct {v2, p0, p2}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$1;-><init>(Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;Landroid/widget/ImageView;)V

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    invoke-static {}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->getInstance()Lcom/slideme/sam/manager/model/data/cache/ResourceCache;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/slideme/sam/manager/model/SamConstants;->ICONS_URL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;->HIGH:Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "images/icons/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/slideme/sam/manager/model/data/cache/ResourceCache;->download(Ljava/lang/String;Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Priority;Ljava/lang/String;)Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;

    move-result-object v0

    .line 291
    .local v0, dl:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 292
    new-instance v2, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity$2;-><init>(Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;Landroid/widget/ImageView;Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;->registerObserver(Lcom/slideme/sam/manager/model/appstore/tasks/AsynchronuousTask$Observer;)V

    .line 329
    .end local v0           #dl:Lcom/slideme/sam/manager/model/android/tasks/download/HTTPFileDownloadTask;
    :goto_0
    return-void

    .line 274
    .end local v1           #iconBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 327
    .restart local v1       #iconBitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected setRating(Landroid/widget/ImageView;D)V
    .locals 4
    .parameter "imageView"
    .parameter "rest"

    .prologue
    const-wide/high16 v2, 0x3ff0

    .line 260
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_0

    .line 261
    const v0, 0x7f020056

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    :cond_0
    const-wide/high16 v0, 0x3fd0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    .line 263
    const v0, 0x7f020055

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    const-wide/high16 v0, 0x3fe0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_3

    .line 265
    const v0, 0x7f020058

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 266
    :cond_3
    const-wide/high16 v0, 0x3fe8

    cmpg-double v0, p2, v0

    if-gez v0, :cond_4

    .line 267
    const v0, 0x7f020057

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 268
    :cond_4
    cmpg-double v0, p2, v2

    if-gez v0, :cond_1

    .line 269
    const v0, 0x7f020059

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
