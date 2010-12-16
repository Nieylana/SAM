.class public Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "InstallActivity.java"


# static fields
.field private static final INSTALL_FAILURE:I = 0x1

.field private static final INSTALL_SUCCESS:I = 0x0

.field private static final INSTALL_UNKNOWN:I = 0x3


# instance fields
.field notificationHandler:Landroid/os/Handler;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->parameters:Ljava/util/Map;

    .line 36
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity$1;-><init>(Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->notificationHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;)Lcom/slideme/sam/manager/SAM;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->sam:Lcom/slideme/sam/manager/SAM;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "request"
    .parameter "result"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "APPLICATION"

    const-string v5, ".apk"

    .line 87
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "APPLICATION"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 91
    .local v1, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    :try_start_0
    iget-wide v5, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 95
    .local v0, apkInfo:Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->deleteFile(Ljava/lang/String;)Z

    .line 99
    :goto_0
    iget-object v5, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 100
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v5, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0           #apkInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 107
    .local v4, m:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v2, b:Landroid/os/Bundle;
    const-string v5, "APPLICATION"

    invoke-virtual {v2, v11, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 110
    iget-object v5, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->className:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 112
    :cond_1
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->sam:Lcom/slideme/sam/manager/SAM;

    invoke-virtual {v5, v1, v10, v10}, Lcom/slideme/sam/manager/SAM;->detectInstalledApplication(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;ZZ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    iput v9, v4, Landroid/os/Message;->what:I

    .line 121
    :goto_2
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->notificationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    iget-object v5, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    .line 125
    iget-object v5, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->sam:Lcom/slideme/sam/manager/SAM;

    invoke-virtual {v5}, Lcom/slideme/sam/manager/SAM;->getService()Lcom/slideme/sam/manager/model/android/services/SAMService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/slideme/sam/manager/model/android/services/SAMService;->installFinished()V

    .line 126
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->finish()V

    .line 127
    return-void

    .line 97
    .end local v2           #b:Landroid/os/Bundle;
    .end local v4           #m:Landroid/os/Message;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "downloads/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0       #apkInfo:Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 103
    .end local v0           #apkInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 104
    .local v3, ignored:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 115
    .end local v3           #ignored:Ljava/lang/Exception;
    .restart local v2       #b:Landroid/os/Bundle;
    .restart local v4       #m:Landroid/os/Message;
    :cond_3
    iput v10, v4, Landroid/os/Message;->what:I

    goto :goto_2

    .line 118
    :cond_4
    const/4 v5, 0x3

    iput v5, v4, Landroid/os/Message;->what:I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "bundle"

    .prologue
    const/4 v11, 0x1

    const-string v13, "APPLICATION"

    const-string v12, ".apk"

    .line 135
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "APPLICATION"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 138
    .local v1, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    .line 139
    .local v3, data:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 228
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iget-object v8, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 143
    iget-object v7, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->parameters:Ljava/util/Map;

    const-string v8, "appN"

    iget-object v9, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const v7, 0x7f0800b2

    invoke-virtual {p0, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    iget-wide v7, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->price:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".apk"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    move-object v0, v7

    .line 148
    .local v0, apk_file:Ljava/io/File;
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 150
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v4, installIntent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 152
    .local v5, installUri:Landroid/net/Uri;
    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/16 v7, 0x44

    invoke-virtual {p0, v4, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 146
    .end local v0           #apk_file:Ljava/io/File;
    .end local v4           #installIntent:Landroid/content/Intent;
    .end local v5           #installUri:Landroid/net/Uri;
    :cond_1
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSdCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "downloads/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_1

    .line 201
    .restart local v0       #apk_file:Ljava/io/File;
    :cond_2
    const-string v7, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 205
    const v7, 0x7f0800c2

    .line 203
    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 207
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 217
    :goto_2
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 218
    .local v6, m:Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v2, b:Landroid/os/Bundle;
    const-string v7, "APPLICATION"

    invoke-virtual {v2, v13, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 220
    invoke-virtual {v6, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 221
    const/4 v7, 0x3

    iput v7, v6, Landroid/os/Message;->what:I

    .line 222
    iget-object v7, p0, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->notificationHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->finish()V

    goto/16 :goto_0

    .line 212
    .end local v2           #b:Landroid/os/Bundle;
    .end local v6           #m:Landroid/os/Message;
    :cond_3
    const v7, 0x7f080033

    invoke-virtual {p0, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 214
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    const-string v0, "orientation has changed!"

    return-object v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 233
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/InstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 239
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 240
    return-void
.end method
