.class public final Lcom/slideme/sam/manager/SAM;
.super Landroid/app/Application;
.source "SAM.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Lcom/slideme/sam/manager/model/utils/Preserver;


# static fields
.field public static final DEFAULT_APPS_PER_PAGE:I = 0x1e

.field public static final DEFAULT_BUG_REPORTING:Z = true

.field public static DEFAULT_COUNTRY:Ljava/lang/String; = null

.field public static DEFAULT_DUMP_LEVEL:Ljava/lang/String; = null

.field public static final DEFAULT_FREE_APPS:Z = false

.field public static final DEFAULT_NETWORK_TIMEOUT:I = 0xa

.field public static DEFAULT_X_SCREENSHOTS:Ljava/lang/String;

.field private static deviceId:Ljava/lang/String;

.field private static instance:Lcom/slideme/sam/manager/SAM;

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static settings:Lcom/slideme/sam/manager/model/domain/ApplicationSettings;


# instance fields
.field private activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public appInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/slideme/sam/manager/model/installer/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private deviceInfoUrl:Ljava/lang/String;

.field private launchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

.field private packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/slideme/sam/manager/model/android/services/SAMService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const-string v0, "3"

    sput-object v0, Lcom/slideme/sam/manager/SAM;->DEFAULT_X_SCREENSHOTS:Ljava/lang/String;

    .line 70
    sput-object v1, Lcom/slideme/sam/manager/SAM;->instance:Lcom/slideme/sam/manager/SAM;

    .line 93
    sput-object v1, Lcom/slideme/sam/manager/SAM;->settings:Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    .line 537
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/slideme/sam/manager/SAM;->map:Ljava/util/HashMap;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 612
    iput-object v0, p0, Lcom/slideme/sam/manager/SAM;->activities:Ljava/util/List;

    .line 613
    iput-object v0, p0, Lcom/slideme/sam/manager/SAM;->packages:Ljava/util/List;

    .line 614
    iput-object v0, p0, Lcom/slideme/sam/manager/SAM;->launchers:Ljava/util/List;

    .line 59
    return-void
.end method

.method public static getInstance()Lcom/slideme/sam/manager/SAM;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/slideme/sam/manager/SAM;->instance:Lcom/slideme/sam/manager/SAM;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    sget-object v0, Lcom/slideme/sam/manager/SAM;->instance:Lcom/slideme/sam/manager/SAM;

    return-object v0
.end method

.method public static getSdCardPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/SlideME/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/slideme/sam/manager/SAM;->settings:Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Initialize first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    sget-object v0, Lcom/slideme/sam/manager/SAM;->settings:Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    return-object v0
.end method

.method private matchCountryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "simCountry"

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 594
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, iso:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 603
    const v4, 0x7f08008d

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 597
    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 598
    const v4, 0x7f090002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, country:[Ljava/lang/String;
    aget-object v4, v0, v1

    goto :goto_1

    .line 596
    .end local v0           #country:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private refreshActivities()V
    .locals 3

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 673
    .local v0, pii:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v0, :cond_0

    .line 674
    iput-object v0, p0, Lcom/slideme/sam/manager/SAM;->activities:Ljava/util/List;

    .line 675
    :cond_0
    return-void
.end method

.method private refreshLaunchers()V
    .locals 3

    .prologue
    .line 684
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 685
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/slideme/sam/manager/SAM;->launchers:Ljava/util/List;

    .line 687
    return-void
.end method

.method private refreshPackages()V
    .locals 3

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 679
    .local v0, paa:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v0, :cond_0

    .line 680
    iput-object v0, p0, Lcom/slideme/sam/manager/SAM;->packages:Ljava/util/List;

    .line 681
    :cond_0
    return-void
.end method

.method private restoreFromSP(Lcom/slideme/sam/manager/model/domain/ApplicationSettings;Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "settings"
    .parameter "defaultSharedPreferences"

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getDebugSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;

    move-result-object v0

    .line 167
    .local v0, debug:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;->setBugReporting(Z)V

    .line 170
    invoke-virtual {p1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getNetworkingSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;

    move-result-object v2

    const v3, 0x7f080002

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;->setNetworkTimeout(I)V

    .line 172
    invoke-virtual {p1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getGeneralSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    move-result-object v1

    .line 173
    .local v1, general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;
    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/slideme/sam/manager/SAM;->DEFAULT_COUNTRY:Ljava/lang/String;

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->setCountry(Ljava/lang/String;)V

    .line 174
    const v2, 0x7f080006

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/slideme/sam/manager/SAM;->DEFAULT_X_SCREENSHOTS:Ljava/lang/String;

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->setXScreenshots(I)V

    .line 175
    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->setAppsPerPage(I)V

    .line 176
    const v2, 0x7f080005

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->setFreeApps(Z)V

    .line 179
    return-void
.end method

.method private testVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "version"
    .parameter "versionName"

    .prologue
    .line 732
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkAndroidVersions()Z
    .locals 2

    .prologue
    .line 392
    :try_start_0
    const-string v1, "sam.android_versions"

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/SAM;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 393
    .local v0, versions:Ljava/io/FileInputStream;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    const/4 v1, 0x0

    .line 400
    .end local v0           #versions:Ljava/io/FileInputStream;
    :goto_0
    return v1

    .line 398
    :catch_0
    move-exception v1

    .line 400
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkConfig()Z
    .locals 2

    .prologue
    .line 412
    :try_start_0
    const-string v1, "sam.config"

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/SAM;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 413
    .local v0, versions:Ljava/io/FileInputStream;
    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    const/4 v1, 0x0

    .line 420
    .end local v0           #versions:Ljava/io/FileInputStream;
    :goto_0
    return v1

    .line 418
    :catch_0
    move-exception v1

    .line 420
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public createIni()V
    .locals 5

    .prologue
    .line 426
    :try_start_0
    const-string v3, "sam.start"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/slideme/sam/manager/SAM;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 427
    .local v1, start:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 428
    .local v2, startWriter:Ljava/io/OutputStreamWriter;
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 429
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v1           #start:Ljava/io/FileOutputStream;
    .end local v2           #startWriter:Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 432
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteIni()V
    .locals 2

    .prologue
    .line 438
    :try_start_0
    const-string v1, "sam.start"

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/SAM;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 441
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public detectInstalledApplication(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;ZZ)Z
    .locals 10
    .parameter "app"
    .parameter "testVersion"
    .parameter "refresh"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 625
    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->activities:Ljava/util/List;

    if-eqz v2, :cond_0

    if-eqz p3, :cond_1

    .line 626
    :cond_0
    invoke-direct {p0}, Lcom/slideme/sam/manager/SAM;->refreshActivities()V

    .line 630
    :cond_1
    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->packages:Ljava/util/List;

    if-eqz v2, :cond_2

    if-eqz p3, :cond_3

    .line 631
    :cond_2
    invoke-direct {p0}, Lcom/slideme/sam/manager/SAM;->refreshPackages()V

    .line 634
    :cond_3
    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->launchers:Ljava/util/List;

    if-eqz v2, :cond_4

    if-eqz p3, :cond_5

    .line 635
    :cond_4
    invoke-direct {p0}, Lcom/slideme/sam/manager/SAM;->refreshLaunchers()V

    .line 638
    :cond_5
    iget-object v2, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->activities:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 643
    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->activities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 657
    :cond_7
    iget-object v2, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->packages:Ljava/util/List;

    if-eqz v2, :cond_f

    .line 659
    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->packages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    move v2, v8

    .line 668
    :goto_0
    return v2

    .line 643
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 644
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_6

    .line 645
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_6

    .line 646
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v3

    move v5, v8

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v0, v3, v5

    .line 647
    .local v0, ainfo:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_b

    .line 646
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 649
    :cond_b
    iget-object v6, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz p2, :cond_c

    iget-object v6, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/slideme/sam/manager/SAM;->testVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_c
    move v2, v9

    .line 650
    goto :goto_0

    .line 659
    .end local v0           #ainfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 660
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p2, :cond_e

    iget-object v3, p1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/slideme/sam/manager/SAM;->testVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_e
    move v2, v9

    .line 661
    goto :goto_0

    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_f
    move v2, v8

    .line 668
    goto :goto_0
.end method

.method public getActivityInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .parameter "className"
    .parameter "packageName"

    .prologue
    const-string v3, ""

    .line 691
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/slideme/sam/manager/SAM;->launchers:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/slideme/sam/manager/SAM;->launchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 704
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 693
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 694
    .local v0, r:Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 696
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 697
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v5, ":"

    const-string v7, ""

    .line 189
    sget-object v4, Lcom/slideme/sam/manager/SAM;->deviceId:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 190
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/SAM;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 191
    .local v1, mng:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 192
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/slideme/sam/manager/SAM;->deviceId:Ljava/lang/String;

    .line 205
    .end local v1           #mng:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    sget-object v4, Lcom/slideme/sam/manager/SAM;->deviceId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 206
    sget-object v4, Lcom/slideme/sam/manager/SAM;->deviceId:Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/slideme/sam/manager/SAM;->deviceId:Ljava/lang/String;

    .line 207
    :cond_1
    sget-object v4, Lcom/slideme/sam/manager/SAM;->deviceId:Ljava/lang/String;

    :goto_1
    return-object v4

    .line 194
    .restart local v1       #mng:Landroid/telephony/TelephonyManager;
    :cond_2
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/SAM;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 195
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 197
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, mac:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 198
    const/4 v4, 0x0

    goto :goto_1

    .line 199
    :cond_3
    const-string v4, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 200
    sput-object v0, Lcom/slideme/sam/manager/SAM;->deviceId:Ljava/lang/String;

    goto :goto_0

    .line 202
    :cond_4
    const-string v4, ":"

    const-string v4, ""

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/slideme/sam/manager/SAM;->deviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceInfoUrlFragment()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v2, "UTF-8"

    .line 211
    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->deviceInfoUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 213
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 215
    .local v0, mng:Landroid/telephony/TelephonyManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "device_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&partener="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->PARTNER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :try_start_0
    const-string v2, "&network_op="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    const-string v3, "&network_op_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    const-string v3, "&network_iso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 223
    const-string v3, "&software_version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 224
    const-string v3, "&phone_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 225
    const-string v3, "&network_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    const-string v3, "&sim_iso="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 227
    const-string v3, "&sim_op="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    const-string v3, "&sim_serial="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    const-string v3, "&subscriber_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 230
    const-string v3, "&roaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    const-string v2, "&sam_version=4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/SAM;->deviceInfoUrl:Ljava/lang/String;

    .line 237
    .end local v0           #mng:Landroid/telephony/TelephonyManager;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->deviceInfoUrl:Ljava/lang/String;

    return-object v2

    .line 231
    .restart local v0       #mng:Landroid/telephony/TelephonyManager;
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getFeaturedFromServer()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 736
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    .line 737
    .local v1, featured:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 739
    .local v2, input:Ljava/io/InputStream;
    :try_start_0
    sget-object v6, Lcom/slideme/sam/manager/model/SamConstants;->MODU_FEATURED_URL:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 740
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 742
    .local v4, reader:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v5, strBuilder:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 746
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 747
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    if-eqz v2, :cond_0

    .line 756
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 761
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #strBuilder:Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-object v1

    .line 745
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #strBuilder:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 749
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v5           #strBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 750
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 754
    if-eqz v2, :cond_0

    .line 756
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 757
    :catch_1
    move-exception v6

    goto :goto_1

    .line 753
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 754
    if-eqz v2, :cond_2

    .line 756
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 760
    :cond_2
    :goto_2
    throw v6

    .line 757
    :catch_2
    move-exception v7

    goto :goto_2

    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    .restart local v5       #strBuilder:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method public getLocale()Ljava/lang/String;
    .locals 5

    .prologue
    .line 576
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/SAM;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 577
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, simCountry:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 580
    invoke-direct {p0, v2}, Lcom/slideme/sam/manager/SAM;->matchCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 588
    :goto_0
    return-object v4

    .line 582
    :cond_0
    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getGeneralSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    move-result-object v0

    .line 583
    .local v0, general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;
    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, setCountry:Ljava/lang/String;
    if-eqz v1, :cond_1

    const v4, 0x7f0800e4

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/slideme/sam/manager/SAM;->matchCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 588
    goto :goto_0
.end method

.method public getService()Lcom/slideme/sam/manager/model/android/services/SAMService;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/slideme/sam/manager/SAM;->service:Lcom/slideme/sam/manager/model/android/services/SAMService;

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getInstance()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/SAM;->service:Lcom/slideme/sam/manager/model/android/services/SAMService;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/slideme/sam/manager/SAM;->service:Lcom/slideme/sam/manager/model/android/services/SAMService;

    return-object v0
.end method

.method public isFirstStart()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 519
    const/4 v0, 0x0

    .line 522
    .local v0, firstStart:Ljava/io/FileInputStream;
    :try_start_0
    const-string v2, "sam.start"

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 525
    if-nez v0, :cond_4

    move v1, v4

    .local v1, ret:Z
    :goto_0
    if-nez v1, :cond_0

    .line 527
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 533
    :cond_0
    :goto_1
    return v1

    .line 523
    .end local v1           #ret:Z
    :catch_0
    move-exception v2

    .line 525
    if-nez v0, :cond_1

    move v1, v4

    .restart local v1       #ret:Z
    :goto_2
    if-nez v1, :cond_0

    .line 527
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 528
    :catch_1
    move-exception v2

    goto :goto_1

    .end local v1           #ret:Z
    :cond_1
    move v1, v3

    .line 525
    goto :goto_2

    .line 524
    :catchall_0
    move-exception v2

    .line 525
    if-nez v0, :cond_3

    move v1, v4

    .restart local v1       #ret:Z
    :goto_3
    if-nez v1, :cond_2

    .line 527
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 532
    :cond_2
    :goto_4
    throw v2

    .end local v1           #ret:Z
    :cond_3
    move v1, v3

    .line 525
    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_0

    .line 528
    .restart local v1       #ret:Z
    :catch_2
    move-exception v3

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public isOnline()Z
    .locals 3

    .prologue
    .line 724
    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 725
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 727
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v2

    .line 726
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 727
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 708
    iget-object v1, p0, Lcom/slideme/sam/manager/SAM;->packages:Ljava/util/List;

    if-nez v1, :cond_0

    .line 709
    invoke-direct {p0}, Lcom/slideme/sam/manager/SAM;->refreshPackages()V

    .line 712
    :cond_0
    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/slideme/sam/manager/SAM;->packages:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 713
    iget-object v1, p0, Lcom/slideme/sam/manager/SAM;->packages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 719
    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 713
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 714
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPreserved(I)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 555
    sget-object v0, Lcom/slideme/sam/manager/SAM;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public mkDirs()V
    .locals 11

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->checkConfig()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 449
    :try_start_0
    const-string v9, "sam.config"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/slideme/sam/manager/SAM;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 450
    .local v7, start:Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 451
    .local v8, startWriter:Ljava/io/OutputStreamWriter;
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V

    .line 452
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v7           #start:Ljava/io/FileOutputStream;
    .end local v8           #startWriter:Ljava/io/OutputStreamWriter;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->checkAndroidVersions()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 462
    :try_start_1
    const-string v9, "sam.android_versions"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/slideme/sam/manager/SAM;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 463
    .restart local v7       #start:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 464
    .local v1, endWriter:Ljava/io/OutputStreamWriter;
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 465
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 472
    .end local v1           #endWriter:Ljava/io/OutputStreamWriter;
    .end local v7           #start:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "images/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v4, images:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 475
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 478
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "images/icons"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v3, icons:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 481
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 484
    :cond_3
    new-instance v5, Ljava/io/File;

    const-string v9, ".nomedia"

    invoke-direct {v5, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 485
    .local v5, nomedia:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 488
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 494
    :cond_4
    :goto_2
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "downloads/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    .line 497
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 500
    :cond_5
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "profile/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 501
    .local v6, profile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_6

    .line 503
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 510
    :cond_6
    return-void

    .line 454
    .end local v2           #file:Ljava/io/File;
    .end local v3           #icons:Ljava/io/File;
    .end local v4           #images:Ljava/io/File;
    .end local v5           #nomedia:Ljava/io/File;
    .end local v6           #profile:Ljava/io/File;
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 455
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 467
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v9

    move-object v0, v9

    .line 468
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 489
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #icons:Ljava/io/File;
    .restart local v4       #images:Ljava/io/File;
    .restart local v5       #nomedia:Ljava/io/File;
    :catch_2
    move-exception v9

    goto :goto_2
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->mkDirs()V

    .line 103
    sput-object p0, Lcom/slideme/sam/manager/SAM;->instance:Lcom/slideme/sam/manager/SAM;

    .line 104
    new-instance v2, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

    invoke-direct {v2}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;-><init>()V

    iput-object v2, p0, Lcom/slideme/sam/manager/SAM;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

    .line 105
    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

    invoke-virtual {v2}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    iget-object v2, p0, Lcom/slideme/sam/manager/SAM;->service:Lcom/slideme/sam/manager/model/android/services/SAMService;

    if-nez v2, :cond_1

    .line 107
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getInstance()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/SAM;->service:Lcom/slideme/sam/manager/model/android/services/SAMService;

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/slideme/sam/manager/model/android/services/SAMService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    :cond_0
    invoke-static {}, Lcom/slideme/sam/manager/model/android/services/SAMService;->getInstance()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v2

    iput-object v2, p0, Lcom/slideme/sam/manager/SAM;->service:Lcom/slideme/sam/manager/model/android/services/SAMService;

    .line 112
    :cond_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 113
    invoke-static {}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getInstance()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/SAM;->settings:Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    .line 115
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getLocale()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/SAM;->DEFAULT_COUNTRY:Ljava/lang/String;

    .line 116
    const v2, 0x7f0800e4

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/SAM;->DEFAULT_DUMP_LEVEL:Ljava/lang/String;

    .line 117
    const v2, 0x7f0800ee

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/SAM;->DEFAULT_X_SCREENSHOTS:Ljava/lang/String;

    .line 118
    sget-object v2, Lcom/slideme/sam/manager/SAM;->settings:Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/slideme/sam/manager/SAM;->restoreFromSP(Lcom/slideme/sam/manager/model/domain/ApplicationSettings;Landroid/content/SharedPreferences;)V

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/slideme/sam/manager/SAM;->appInfo:Ljava/util/List;

    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    const v2, 0x7f020012

    sput v2, Lcom/slideme/sam/manager/model/ThemeConstants;->portraitBackground:I

    .line 132
    const v2, 0x7f020013

    sput v2, Lcom/slideme/sam/manager/model/ThemeConstants;->landscapeBackground:I

    .line 134
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->APPLICATION_VERSION:Ljava/lang/String;

    .line 136
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->FEED_SERVER_URL:Ljava/lang/String;

    .line 137
    const v2, 0x7f08000e

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    .line 138
    const v2, 0x7f08000d

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/services/rest?method=user.login&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->APPLICATION_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->LOGIN_URL:Ljava/lang/String;

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/services/rest?method=mobileapp.install"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->INSTALL_URL:Ljava/lang/String;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/services/rest?method=mobileapp.download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->DOWNLOAD_NOTIFICATION_URL:Ljava/lang/String;

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/services/rest?method=mobileapp.buy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->PURCHASE_URL:Ljava/lang/String;

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/services/rest?method=mobileapp.purchases"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->PURCHASE_CHECK_URL:Ljava/lang/String;

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/services/rest?method=system.connect&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->APPLICATION_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->SYSTEM_CONNECT:Ljava/lang/String;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTPS_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/services/rest?method=user.logout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->USER_LOGOUT:Ljava/lang/String;

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "downloads/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 154
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->PARTNER:Ljava/lang/String;

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/files/broadcast4sam-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->PARTNER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->APPLICATION_VERSION:Ljava/lang/String;

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->NOTIFICATION_URL:Ljava/lang/String;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/sam-version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->UPDATE_CHECK_URL:Ljava/lang/String;

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/files/previews/icons"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->ICONS_URL:Ljava/lang/String;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/files/previews/screenshots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->PREVIEW_URL:Ljava/lang/String;

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/files/android_versions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->ANDROID_VERSION_URL:Ljava/lang/String;

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/slideme/sam/manager/model/SamConstants;->SLIDEME_HTTP_URL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/files/modu/featured_apps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/slideme/sam/manager/model/SamConstants;->MODU_FEATURED_URL:Ljava/lang/String;

    .line 161
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 162
    return-void

    .line 127
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 128
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Corrupt Install"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/slideme/sam/manager/SAM;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/view/adapters/BundleIdsSdCardAdapter;->close()V

    .line 609
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 610
    return-void
.end method

.method public preserve(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 545
    sget-object v0, Lcom/slideme/sam/manager/SAM;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    return-void
.end method

.method public refreshInstalledApps()V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/slideme/sam/manager/SAM;->refreshActivities()V

    .line 618
    invoke-direct {p0}, Lcom/slideme/sam/manager/SAM;->refreshPackages()V

    .line 619
    invoke-direct {p0}, Lcom/slideme/sam/manager/SAM;->refreshLaunchers()V

    .line 620
    return-void
.end method

.method public release(I)Ljava/lang/Object;
    .locals 2
    .parameter "hashCode"

    .prologue
    .line 571
    sget-object v0, Lcom/slideme/sam/manager/SAM;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public retain(I)Ljava/lang/Object;
    .locals 2
    .parameter "hashCode"

    .prologue
    .line 563
    sget-object v0, Lcom/slideme/sam/manager/SAM;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public translateCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 337
    if-nez p1, :cond_0

    .line 338
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 341
    :cond_0
    const-string v0, "Communications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_1
    move-object v0, p1

    .line 380
    goto :goto_0

    .line 343
    :cond_2
    const-string v0, "Collaboration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 345
    :cond_3
    const-string v0, "Developer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 347
    :cond_4
    const-string v0, "Education"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 348
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 349
    :cond_5
    const-string v0, "Enterprise"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 350
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 351
    :cond_6
    const-string v0, "Entertainment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 352
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 353
    :cond_7
    const-string v0, "Fun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 354
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 355
    :cond_8
    const-string v0, "Health"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 356
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 357
    :cond_9
    const-string v0, "Home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 358
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 359
    :cond_a
    const-string v0, "Lifestyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 360
    const v0, 0x7f080084

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 361
    :cond_b
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 362
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 363
    :cond_c
    const-string v0, "Music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 364
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 365
    :cond_d
    const-string v0, "Other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 366
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 367
    :cond_e
    const-string v0, "Productivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 368
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 369
    :cond_f
    const-string v0, "Social"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 370
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 371
    :cond_10
    const-string v0, "Travel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 372
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 373
    :cond_11
    const-string v0, "Utilities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 374
    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 375
    :cond_12
    const-string v0, "E-books"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/SAM;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 12
    .parameter "t"
    .parameter "e"

    .prologue
    const/4 v11, 0x0

    .line 241
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 246
    .local v1, context:Landroid/content/Context;
    const-string v7, "alarm"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 247
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.REBOOT"

    const/4 v8, 0x0

    const-class v9, Lcom/slideme/sam/manager/controller/activities/debug/LogException;

    invoke-direct {v5, v7, v8, v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v5, r:Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "crash_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dump"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 253
    .local v2, crashLog:Ljava/lang/String;
    const/4 v3, 0x0

    .line 255
    .local v3, out:Ljava/io/OutputStream;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v7}, Lcom/slideme/sam/manager/SAM;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 256
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 257
    .local v4, pw:Ljava/io/PrintWriter;
    invoke-virtual {p2, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 259
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 260
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 285
    const-string v7, "CRASH_FILE"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v7, "deviceId"

    invoke-virtual {p0}, Lcom/slideme/sam/manager/SAM;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 293
    if-eqz v3, :cond_0

    .line 295
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 299
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11

    .line 306
    :cond_0
    :goto_0
    const/4 v7, 0x0

    const/high16 v8, 0x1000

    :try_start_4
    invoke-static {v1, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 307
    .local v6, restart:Landroid/app/PendingIntent;
    const/4 v7, 0x2

    const-wide/16 v8, 0xbb8

    invoke-virtual {v0, v7, v8, v9, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    .end local v4           #pw:Ljava/io/PrintWriter;
    :goto_1
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 318
    return-void

    .line 290
    .end local v6           #restart:Landroid/app/PendingIntent;
    :catch_0
    move-exception v7

    .line 293
    if-eqz v3, :cond_1

    .line 295
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 299
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 306
    :cond_1
    :goto_2
    const/4 v7, 0x0

    const/high16 v8, 0x1000

    :try_start_7
    invoke-static {v1, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 307
    .restart local v6       #restart:Landroid/app/PendingIntent;
    const/4 v7, 0x2

    const-wide/16 v8, 0xbb8

    invoke-virtual {v0, v7, v8, v9, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 314
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #crashLog:Ljava/lang/String;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v5           #r:Landroid/content/Intent;
    .end local v6           #restart:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v7

    .line 315
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 316
    throw v7

    .line 296
    .restart local v0       #alarmManager:Landroid/app/AlarmManager;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #crashLog:Ljava/lang/String;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v5       #r:Landroid/content/Intent;
    :catch_1
    move-exception v7

    .line 299
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 300
    :catch_2
    move-exception v7

    goto :goto_2

    .line 297
    :catchall_1
    move-exception v7

    .line 299
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    .line 303
    :goto_3
    :try_start_a
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 291
    :catch_3
    move-exception v7

    .line 293
    if-eqz v3, :cond_2

    .line 295
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 299
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    .line 306
    :cond_2
    :goto_4
    const/4 v7, 0x0

    const/high16 v8, 0x1000

    :try_start_d
    invoke-static {v1, v7, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 307
    .restart local v6       #restart:Landroid/app/PendingIntent;
    const/4 v7, 0x2

    const-wide/16 v8, 0xbb8

    invoke-virtual {v0, v7, v8, v9, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    .line 296
    .end local v6           #restart:Landroid/app/PendingIntent;
    :catch_4
    move-exception v7

    .line 299
    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_4

    .line 300
    :catch_5
    move-exception v7

    goto :goto_4

    .line 297
    :catchall_2
    move-exception v7

    .line 299
    :try_start_f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 303
    :goto_5
    :try_start_10
    throw v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 292
    :catchall_3
    move-exception v7

    .line 293
    if-eqz v3, :cond_3

    .line 295
    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 299
    :try_start_12
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    .line 306
    :cond_3
    :goto_6
    const/4 v8, 0x0

    const/high16 v9, 0x1000

    :try_start_13
    invoke-static {v1, v8, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 307
    .restart local v6       #restart:Landroid/app/PendingIntent;
    const/4 v8, 0x2

    const-wide/16 v9, 0xbb8

    invoke-virtual {v0, v8, v9, v10, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 308
    throw v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 296
    .end local v6           #restart:Landroid/app/PendingIntent;
    :catch_6
    move-exception v8

    .line 299
    :try_start_14
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_6

    .line 300
    :catch_7
    move-exception v8

    goto :goto_6

    .line 297
    :catchall_4
    move-exception v7

    .line 299
    :try_start_15
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 303
    :goto_7
    :try_start_16
    throw v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 296
    .restart local v4       #pw:Ljava/io/PrintWriter;
    :catch_8
    move-exception v7

    .line 299
    :try_start_17
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    goto/16 :goto_0

    .line 300
    :catch_9
    move-exception v7

    goto/16 :goto_0

    .line 297
    :catchall_5
    move-exception v7

    .line 299
    :try_start_18
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 303
    :goto_8
    :try_start_19
    throw v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 300
    .end local v4           #pw:Ljava/io/PrintWriter;
    :catch_a
    move-exception v8

    goto :goto_3

    :catch_b
    move-exception v7

    goto :goto_2

    :catch_c
    move-exception v8

    goto :goto_5

    :catch_d
    move-exception v7

    goto :goto_4

    :catch_e
    move-exception v8

    goto :goto_7

    :catch_f
    move-exception v8

    goto :goto_6

    .restart local v4       #pw:Ljava/io/PrintWriter;
    :catch_10
    move-exception v8

    goto :goto_8

    :catch_11
    move-exception v7

    goto/16 :goto_0
.end method
