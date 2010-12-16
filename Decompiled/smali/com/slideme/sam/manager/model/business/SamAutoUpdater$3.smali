.class Lcom/slideme/sam/manager/model/business/SamAutoUpdater$3;
.super Ljava/lang/Object;
.source "SamAutoUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/business/SamAutoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$3;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-string v8, "misc"

    const-string v8, "UTF-8"

    .line 252
    invoke-static {}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$7()Z

    move-result v8

    if-nez v8, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v6, urlString:Ljava/lang/StringBuilder;
    sget-object v8, Lcom/slideme/sam/manager/model/SamConstants;->UPDATE_CHECK_URL:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v8, "?device="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v8, "&region="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "misc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v8, "&language="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "misc"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v8, "&partner="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/slideme/sam/manager/model/SamConstants;->PARTNER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/slideme/sam/manager/model/data/net/HTTPUtils;->httpGet(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 265
    .local v2, inputStream:Ljava/io/InputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 267
    .local v7, versionReader:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 268
    .local v0, ch:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v5, strBuilder:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_2

    .line 273
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, newVersion:Ljava/lang/String;
    iget-object v8, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$3;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v8}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$5(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$3;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v9}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$5(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 276
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 277
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$8(Z)V

    .line 278
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 279
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iget-object v10, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 280
    iget-object v8, p0, Lcom/slideme/sam/manager/model/business/SamAutoUpdater$3;->this$0:Lcom/slideme/sam/manager/model/business/SamAutoUpdater;

    invoke-static {v8}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$6(Lcom/slideme/sam/manager/model/business/SamAutoUpdater;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 284
    .end local v0           #ch:I
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #newVersion:Ljava/lang/String;
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #strBuilder:Ljava/lang/StringBuilder;
    .end local v6           #urlString:Ljava/lang/StringBuilder;
    .end local v7           #versionReader:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 285
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    invoke-static {v12}, Lcom/slideme/sam/manager/model/business/SamAutoUpdater;->access$8(Z)V

    goto/16 :goto_0

    .line 270
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #ch:I
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v5       #strBuilder:Ljava/lang/StringBuilder;
    .restart local v6       #urlString:Ljava/lang/StringBuilder;
    .restart local v7       #versionReader:Ljava/io/InputStreamReader;
    :cond_2
    int-to-char v8, v0

    :try_start_1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
