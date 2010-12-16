.class public Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;
.super Landroid/app/Activity;
.source "SdCardActivity.java"


# static fields
.field public static final SDCARD_NOT_FOUND:I = 0x2

.field public static final SEARCHING_APKS_DIALOG:I = 0x0

.field public static final SEARCHING_APKS_DIALOG_CANCEL:I = 0x1

.field private static dialog:Landroid/app/ProgressDialog;


# instance fields
.field private activity:Landroid/app/Activity;

.field private searchHandler:Landroid/os/Handler;

.field private stop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->stop:Z

    .line 184
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$1;-><init>(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->searchHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->stop:Z

    return v0
.end method

.method static synthetic access$1(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->stop:Z

    return-void
.end method

.method static synthetic access$3(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->searchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;Ljava/io/File;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->searchForApks(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private searchForApks(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object v1

    .line 171
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v0, v2, v4

    .line 172
    .local v0, f:Ljava/io/File;
    iget-boolean v5, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->stop:Z

    if-eqz v5, :cond_2

    .line 171
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 175
    :cond_2
    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->searchForApks(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 177
    .end local v0           #f:Ljava/io/File;
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->setContentView(I)V

    .line 48
    iput-object p0, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->activity:Landroid/app/Activity;

    .line 50
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->showDialog(I)V

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->readApksFromSDCard()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 68
    :try_start_0
    sget-object v2, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->dialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 70
    :try_start_1
    sget-object v2, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 115
    :pswitch_0
    const/4 v2, 0x0

    .line 120
    :goto_1
    return-object v2

    .line 78
    :pswitch_1
    :try_start_2
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->dialog:Landroid/app/ProgressDialog;

    .line 79
    sget-object v2, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->dialog:Landroid/app/ProgressDialog;

    const v3, 0x7f08008e

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 80
    sget-object v2, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->dialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 81
    sget-object v2, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->dialog:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$2;

    invoke-direct {v3, p0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$2;-><init>(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 86
    sget-object v2, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->dialog:Landroid/app/ProgressDialog;

    goto :goto_1

    .line 88
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 90
    .local v0, alert:Landroid/app/AlertDialog;
    const v2, 0x7f0800c2

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 91
    const v2, 0x7f0800c8

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$3;

    invoke-direct {v3, p0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$3;-><init>(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    const v2, 0x7f0800c9

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$4;

    invoke-direct {v3, p0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$4;-><init>(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v0

    .line 113
    goto :goto_1

    .line 117
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v2

    .line 120
    sget-object v2, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->dialog:Landroid/app/ProgressDialog;

    goto :goto_1

    .line 71
    :catch_1
    move-exception v2

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 207
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 213
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 214
    return-void
.end method

.method public readApksFromSDCard()V
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .line 125
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 126
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;-><init>(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;Landroid/app/Activity;Landroid/content/pm/PackageManager;)V

    .line 160
    invoke-virtual {v2}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->start()V

    .line 162
    return-void
.end method
