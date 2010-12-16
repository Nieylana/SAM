.class public Lcom/slideme/sam/manager/model/compatibility/Compatibility;
.super Landroid/app/Activity;
.source "Compatibility.java"


# static fields
.field private static activity:Landroid/app/Activity;

.field private static deviceSdk:Ljava/lang/String;

.field private static device_display:Ljava/lang/String;

.field private static device_locale:Ljava/lang/String;

.field private static maxSdkVersion:Ljava/lang/String;

.field private static required_displays:Ljava/lang/String;

.field private static required_locales:Ljava/lang/String;

.field private static sdkVersion:Ljava/lang/String;

.field private static targetSdkVersion:Ljava/lang/String;


# instance fields
.field private app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;


# direct methods
.method public constructor <init>(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Landroid/app/Activity;)V
    .locals 0
    .parameter "application"
    .parameter "callingActivity"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 31
    sput-object p2, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    .line 33
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceLocale()V

    .line 34
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceSdk()V

    .line 36
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->supportsLocales()V

    .line 37
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->sdkVersion()V

    .line 38
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->targetSdkVersion()V

    .line 39
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->maxSdkVersion()V

    .line 40
    return-void
.end method

.method public static check_max_os()Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v13, "2.01"

    const-string v12, "2.0.1"

    .line 266
    sget-object v7, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->maxSdkVersion:Ljava/lang/String;

    sget-object v8, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    const v9, 0x7f0800a2

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v11

    .line 278
    :goto_0
    return v7

    .line 271
    :cond_0
    sget-object v7, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceSdk:Ljava/lang/String;

    const-string v8, "2.0.1"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "2.01"

    move-object v5, v13

    .line 272
    .local v5, tmpDeviceSdk:Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->maxSdkVersion:Ljava/lang/String;

    const-string v8, "2.0.1"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "2.01"

    move-object v6, v13

    .line 274
    .local v6, tmpMaxSdkVersion:Ljava/lang/String;
    :goto_2
    :try_start_0
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 275
    .local v0, deviceOs:D
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 276
    .local v3, maxOs:D
    cmpl-double v7, v3, v0

    if-ltz v7, :cond_3

    move v7, v11

    goto :goto_0

    .line 271
    .end local v0           #deviceOs:D
    .end local v3           #maxOs:D
    .end local v5           #tmpDeviceSdk:Ljava/lang/String;
    .end local v6           #tmpMaxSdkVersion:Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceSdk:Ljava/lang/String;

    move-object v5, v7

    goto :goto_1

    .line 272
    .restart local v5       #tmpDeviceSdk:Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->maxSdkVersion:Ljava/lang/String;

    move-object v6, v7

    goto :goto_2

    .restart local v0       #deviceOs:D
    .restart local v3       #maxOs:D
    .restart local v6       #tmpMaxSdkVersion:Ljava/lang/String;
    :cond_3
    move v7, v10

    .line 276
    goto :goto_0

    .line 277
    .end local v0           #deviceOs:D
    .end local v3           #maxOs:D
    :catch_0
    move-exception v7

    move-object v2, v7

    .local v2, e:Ljava/lang/Exception;
    move v7, v10

    .line 278
    goto :goto_0
.end method

.method public static check_min_os()Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v13, "2.01"

    const-string v12, "2.0.1"

    .line 219
    sget-object v7, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->sdkVersion:Ljava/lang/String;

    sget-object v8, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    const v9, 0x7f0800a2

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v11

    .line 231
    :goto_0
    return v7

    .line 224
    :cond_0
    sget-object v7, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceSdk:Ljava/lang/String;

    const-string v8, "2.0.1"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "2.01"

    move-object v5, v13

    .line 225
    .local v5, tmpDeviceSdk:Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->sdkVersion:Ljava/lang/String;

    const-string v8, "2.0.1"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "2.01"

    move-object v6, v13

    .line 227
    .local v6, tmpSdkVersion:Ljava/lang/String;
    :goto_2
    :try_start_0
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 228
    .local v0, deviceOs:D
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 229
    .local v3, minOs:D
    cmpg-double v7, v3, v0

    if-gtz v7, :cond_3

    move v7, v11

    goto :goto_0

    .line 224
    .end local v0           #deviceOs:D
    .end local v3           #minOs:D
    .end local v5           #tmpDeviceSdk:Ljava/lang/String;
    .end local v6           #tmpSdkVersion:Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceSdk:Ljava/lang/String;

    move-object v5, v7

    goto :goto_1

    .line 225
    .restart local v5       #tmpDeviceSdk:Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->sdkVersion:Ljava/lang/String;

    move-object v6, v7

    goto :goto_2

    .restart local v0       #deviceOs:D
    .restart local v3       #minOs:D
    .restart local v6       #tmpSdkVersion:Ljava/lang/String;
    :cond_3
    move v7, v10

    .line 229
    goto :goto_0

    .line 230
    .end local v0           #deviceOs:D
    .end local v3           #minOs:D
    :catch_0
    move-exception v7

    move-object v2, v7

    .local v2, e:Ljava/lang/Exception;
    move v7, v10

    .line 231
    goto :goto_0
.end method

.method public static check_target_os()Z
    .locals 16

    .prologue
    const/4 v13, 0x1

    const-string v15, "2.01"

    const-string v14, "2.0.1"

    .line 237
    sget-object v10, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->targetSdkVersion:Ljava/lang/String;

    sget-object v11, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    const v12, 0x7f0800a2

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v13

    .line 261
    :goto_0
    return v10

    .line 240
    :cond_0
    const-wide/16 v5, 0x0

    .line 241
    .local v5, minOs:D
    const-wide/16 v3, 0x0

    .line 242
    .local v3, maxOs:D
    const-wide/16 v0, 0x0

    .line 244
    .local v0, deviceOs:D
    sget-object v10, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->sdkVersion:Ljava/lang/String;

    const-string v11, "2.0.1"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "2.01"

    move-object v9, v15

    .line 245
    .local v9, tmpMinSdkVersion:Ljava/lang/String;
    :goto_1
    sget-object v10, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->maxSdkVersion:Ljava/lang/String;

    const-string v11, "2.0.1"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "2.01"

    move-object v8, v15

    .line 246
    .local v8, tmpMaxSdkVersion:Ljava/lang/String;
    :goto_2
    sget-object v10, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceSdk:Ljava/lang/String;

    const-string v11, "2.0.1"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "2.01"

    move-object v7, v15

    .line 249
    .local v7, tmpDeviceSdk:Ljava/lang/String;
    :goto_3
    :try_start_0
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 255
    :goto_4
    :try_start_1
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v3

    .line 259
    :goto_5
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 261
    cmpl-double v10, v0, v5

    if-ltz v10, :cond_5

    cmpg-double v10, v0, v3

    if-gtz v10, :cond_5

    move v10, v13

    goto :goto_0

    .line 244
    .end local v7           #tmpDeviceSdk:Ljava/lang/String;
    .end local v8           #tmpMaxSdkVersion:Ljava/lang/String;
    .end local v9           #tmpMinSdkVersion:Ljava/lang/String;
    :cond_1
    sget-object v10, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->sdkVersion:Ljava/lang/String;

    move-object v9, v10

    goto :goto_1

    .line 245
    .restart local v9       #tmpMinSdkVersion:Ljava/lang/String;
    :cond_2
    sget-object v10, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->maxSdkVersion:Ljava/lang/String;

    move-object v8, v10

    goto :goto_2

    .line 246
    .restart local v8       #tmpMaxSdkVersion:Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceSdk:Ljava/lang/String;

    move-object v7, v10

    goto :goto_3

    .line 250
    .restart local v7       #tmpDeviceSdk:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 251
    .local v2, e:Ljava/lang/Exception;
    const-wide/high16 v5, 0x3ff0

    goto :goto_4

    .line 256
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 257
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v10, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    sget-object v11, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    array-length v11, v11

    sub-int/2addr v11, v13

    aget-object v10, v10, v11

    const-string v11, "2.0.1"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "2.01"

    move-object v10, v15

    :goto_6
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    goto :goto_5

    :cond_4
    sget-object v10, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    sget-object v11, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    array-length v11, v11

    sub-int/2addr v11, v13

    aget-object v10, v10, v11

    goto :goto_6

    .line 261
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private deviceLocale()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->device_locale:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private deviceSdk()V
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->setAndroidVersions()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    .line 82
    :cond_1
    sget-object v0, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 83
    :cond_2
    sget-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    const v1, 0x7f08008d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceSdk:Ljava/lang/String;

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_3
    sget-object v0, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    sput-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceSdk:Ljava/lang/String;

    goto :goto_0
.end method

.method private getAndroidVersionsFromServer()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 289
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/String;

    .line 291
    .local v7, versions:[Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    sget-object v8, Lcom/slideme/sam/manager/model/SamConstants;->ANDROID_VERSION_URL:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 292
    .local v2, downloadURL:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 293
    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 294
    .local v4, input:Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 297
    .local v5, reader:Ljava/io/InputStreamReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v6, strBuilder:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    .local v0, ch:I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_0

    .line 300
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 301
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->writeAndroidVersionsToFile(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 307
    .end local v0           #ch:I
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v2           #downloadURL:Ljava/net/URL;
    .end local v4           #input:Ljava/io/InputStream;
    .end local v5           #reader:Ljava/io/InputStreamReader;
    .end local v6           #strBuilder:Ljava/lang/StringBuilder;
    :goto_1
    return-object v7

    .line 299
    .restart local v0       #ch:I
    .restart local v1       #conn:Ljava/net/URLConnection;
    .restart local v2       #downloadURL:Ljava/net/URL;
    .restart local v4       #input:Ljava/io/InputStream;
    .restart local v5       #reader:Ljava/io/InputStreamReader;
    .restart local v6       #strBuilder:Ljava/lang/StringBuilder;
    :cond_0
    int-to-char v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v0           #ch:I
    .end local v1           #conn:Ljava/net/URLConnection;
    .end local v2           #downloadURL:Ljava/net/URL;
    .end local v4           #input:Ljava/io/InputStream;
    .end local v5           #reader:Ljava/io/InputStreamReader;
    .end local v6           #strBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 305
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDeviceLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->device_locale:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceSdk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->deviceSdk:Ljava/lang/String;

    return-object v0
.end method

.method public static getMaxSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    sget-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->maxSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getRequiredLocales()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->required_locales:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getTargetSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->targetSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method private maxSdkVersion()V
    .locals 4

    .prologue
    .line 138
    iget-object v1, p0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v0, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->maxSdkVersion:Ljava/lang/String;

    .line 139
    .local v0, max_SdkVersion:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    sget-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->maxSdkVersion:Ljava/lang/String;

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    sput-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->maxSdkVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private sdkVersion()V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v0, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->sdkVersion:Ljava/lang/String;

    .line 123
    .local v0, sdk_Version:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    sget-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->sdkVersion:Ljava/lang/String;

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_1
    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    sput-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->sdkVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private setAndroidVersions()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 317
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    .line 319
    .local v5, versions:[Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    const-string v7, "sam.android_versions"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 320
    .local v2, configStream:Ljava/io/FileInputStream;
    if-eqz v2, :cond_1

    .line 321
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 323
    .local v1, configReader:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v4, strBuilder:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    .local v0, ch:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 326
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, s:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 328
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    array-length v7, v5

    if-le v6, v7, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->getAndroidVersionsFromServer()[Ljava/lang/String;

    move-result-object v5

    .line 330
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 336
    .end local v0           #ch:I
    .end local v1           #configReader:Ljava/io/InputStreamReader;
    .end local v2           #configStream:Ljava/io/FileInputStream;
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #strBuilder:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-object v5

    .line 325
    .restart local v0       #ch:I
    .restart local v1       #configReader:Ljava/io/InputStreamReader;
    .restart local v2       #configStream:Ljava/io/FileInputStream;
    .restart local v4       #strBuilder:Ljava/lang/StringBuilder;
    :cond_2
    int-to-char v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v0           #ch:I
    .end local v1           #configReader:Ljava/io/InputStreamReader;
    .end local v2           #configStream:Ljava/io/FileInputStream;
    .end local v4           #strBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private supportsLocales()V
    .locals 8

    .prologue
    const-string v7, "--_--,"

    const-string v6, ""

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v3, v3, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->locales:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, r_locale:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 106
    const-string v3, "--_--,"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const-string v3, "--_--,"

    const-string v3, ""

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    const-string v3, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    const-string v0, "Any"

    .line 115
    :goto_1
    const-string v3, "Any"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    sget-object v3, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    const v4, 0x7f0800a2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->required_locales:Ljava/lang/String;

    .line 119
    :goto_2
    return-void

    .line 101
    .end local v0           #r_locale:Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    .end local v1           #s:Ljava/lang/String;
    .restart local v0       #r_locale:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 113
    :cond_3
    const-string v0, "Any"

    goto :goto_1

    .line 118
    :cond_4
    sput-object v0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->required_locales:Ljava/lang/String;

    goto :goto_2
.end method

.method private targetSdkVersion()V
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    iget-object v0, v1, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->targetSdkVersion:Ljava/lang/String;

    .line 131
    .local v0, target_SdkVersion:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    sget-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->targetSdkVersion:Ljava/lang/String;

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-object v1, Lcom/slideme/sam/manager/model/SamConstants;->SDK:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    sput-object v1, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->targetSdkVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private writeAndroidVersionsToFile(Ljava/lang/String;)V
    .locals 5
    .parameter "versions"

    .prologue
    .line 347
    :try_start_0
    sget-object v2, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->activity:Landroid/app/Activity;

    const-string v3, "sam.android_versions"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 348
    .local v0, configStream:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 349
    .local v1, configWriter:Ljava/io/OutputStreamWriter;
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 351
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0           #configStream:Ljava/io/FileOutputStream;
    .end local v1           #configWriter:Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v2

    goto :goto_0
.end method
