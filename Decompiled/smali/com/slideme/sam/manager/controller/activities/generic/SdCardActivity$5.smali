.class Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;
.super Ljava/lang/Thread;
.source "SdCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->readApksFromSDCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;Landroid/app/Activity;Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->val$pm:Landroid/content/pm/PackageManager;

    .line 126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v11, " "

    .line 129
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 130
    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v6}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$3(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 132
    .local v5, sdcard:Ljava/io/File;
    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/slideme/sam/manager/SAM;

    .line 133
    .local v1, app:Lcom/slideme/sam/manager/SAM;
    iget-object v6, v1, Lcom/slideme/sam/manager/SAM;->appInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 134
    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v6, v5}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$4(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    .line 135
    .local v3, files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v6}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$0(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    :goto_1
    return-void

    .line 135
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 138
    .local v2, f:Ljava/io/File;
    :try_start_0
    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 140
    .local v4, info:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 141
    new-instance v0, Lcom/slideme/sam/manager/model/installer/AppInfo;

    invoke-direct {v0}, Lcom/slideme/sam/manager/model/installer/AppInfo;-><init>()V

    .line 142
    .local v0, ai:Lcom/slideme/sam/manager/model/installer/AppInfo;
    iput-object v2, v0, Lcom/slideme/sam/manager/model/installer/AppInfo;->file:Ljava/io/File;

    .line 143
    iput-object v4, v0, Lcom/slideme/sam/manager/model/installer/AppInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 144
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    const v8, 0x7f08008d

    invoke-virtual {v6, v8}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/slideme/sam/manager/model/installer/AppInfo;->label:Ljava/lang/String;

    .line 145
    iget-object v6, v1, Lcom/slideme/sam/manager/SAM;->appInfo:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0           #ai:Lcom/slideme/sam/manager/model/installer/AppInfo;
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 144
    .restart local v0       #ai:Lcom/slideme/sam/manager/model/installer/AppInfo;
    .restart local v4       #info:Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_2

    .line 153
    .end local v0           #ai:Lcom/slideme/sam/manager/model/installer/AppInfo;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->val$activity:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    const v9, 0x7f0800bf

    invoke-virtual {v8, v9}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/slideme/sam/manager/SAM;->appInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    const v9, 0x7f0800c0

    invoke-virtual {v8, v9}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 154
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 155
    iget-object v6, v1, Lcom/slideme/sam/manager/SAM;->appInfo:Ljava/util/List;

    new-instance v7, Lcom/slideme/sam/manager/model/installer/AZComparator;

    invoke-direct {v7}, Lcom/slideme/sam/manager/model/installer/AZComparator;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    iget-object v6, p0, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity$5;->this$0:Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;

    invoke-static {v6}, Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;->access$3(Lcom/slideme/sam/manager/controller/activities/generic/SdCardActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto/16 :goto_1
.end method
