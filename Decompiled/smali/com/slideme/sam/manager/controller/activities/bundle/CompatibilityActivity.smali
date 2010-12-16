.class public Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "CompatibilityActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    return-void
.end method

.method private setImages()V
    .locals 10

    .prologue
    const v9, 0x7f02003f

    const v8, 0x7f020023

    .line 96
    const v7, 0x7f0a0062

    invoke-virtual {p0, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 97
    .local v4, min_os:Landroid/widget/ImageView;
    const v7, 0x7f0a0066

    invoke-virtual {p0, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 98
    .local v6, target_os:Landroid/widget/ImageView;
    const v7, 0x7f0a006a

    invoke-virtual {p0, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 111
    .local v1, max_os:Landroid/widget/ImageView;
    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->check_min_os()Z

    move-result v3

    .local v3, minOs_pass:Z
    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    :goto_0
    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->check_target_os()Z

    move-result v5

    .local v5, targetOs_pass:Z
    if-eqz v5, :cond_1

    .line 117
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :goto_1
    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->check_max_os()Z

    move-result v0

    .local v0, maxOs_pass:Z
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :goto_2
    const v7, 0x7f0a006f

    invoke-virtual {p0, v7}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    .local v2, message:Landroid/widget/TextView;
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    .line 128
    const v7, 0x7f080099

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 129
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :goto_3
    return-void

    .line 114
    .end local v0           #maxOs_pass:Z
    .end local v2           #message:Landroid/widget/TextView;
    .end local v5           #targetOs_pass:Z
    :cond_0
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 119
    .restart local v5       #targetOs_pass:Z
    :cond_1
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 124
    .restart local v0       #maxOs_pass:Z
    :cond_2
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 131
    .restart local v2       #message:Landroid/widget/TextView;
    :cond_3
    const v7, 0x7f08009a

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 132
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method

.method private setTableText()V
    .locals 15

    .prologue
    .line 49
    const v11, 0x7f0a006c

    invoke-virtual {p0, v11}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    .local v1, device_locale:Landroid/widget/TextView;
    const v11, 0x7f0a0064

    invoke-virtual {p0, v11}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 54
    .local v7, sdk2:Landroid/widget/TextView;
    const v11, 0x7f0a006d

    invoke-virtual {p0, v11}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 55
    .local v8, supported_locales:Landroid/widget/TextView;
    const v11, 0x7f0a0061

    invoke-virtual {p0, v11}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 56
    .local v9, supported_sdk:Landroid/widget/TextView;
    const v11, 0x7f0a0065

    invoke-virtual {p0, v11}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 57
    .local v10, target_sdk:Landroid/widget/TextView;
    const v11, 0x7f0a0069

    invoke-virtual {p0, v11}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 60
    .local v3, max_sdk:Landroid/widget/TextView;
    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->getDeviceLocale()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->getDeviceSdk()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v0, 0x1

    .line 67
    .local v0, count:I
    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->getRequiredLocales()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, locales:Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 69
    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, sLocales:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v6, sb:Ljava/lang/StringBuilder;
    array-length v11, v5

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v11, :cond_0

    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x2c

    if-ne v11, v12, :cond_2

    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 83
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .end local v5           #sLocales:[Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :goto_2
    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->getSdkVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->getTargetSdkVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;->getMaxSdkVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void

    .line 71
    .restart local v5       #sLocales:[Ljava/lang/String;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_0
    aget-object v4, v5, v12

    .line 72
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/4 v13, 0x3

    if-ne v0, v13, :cond_1

    .line 74
    const-string v13, "\n"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const/4 v0, 0x1

    .line 71
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 77
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 82
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 85
    .end local v5           #sLocales:[Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const-wide/high16 v9, 0x3ff0

    .line 17
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v5, 0x7f03000e

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "APPLICATION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;

    .line 23
    .local v0, app:Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;
    const v5, 0x7f080098

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    const v5, 0x7f0a000e

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const v5, 0x7f0a0017

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v6, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->uid:Ljava/lang/String;

    const v5, 0x7f0a000d

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->setIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 34
    iget-wide v5, v0, Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;->rating:D

    const-wide/high16 v7, 0x4034

    div-double v1, v5, v7

    .line 36
    .local v1, rating:D
    const v5, 0x7f0a000f

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sub-double v3, v1, v9

    .end local v1           #rating:D
    .local v3, rating:D
    invoke-virtual {p0, v5, v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 37
    const v5, 0x7f0a0010

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sub-double v1, v3, v9

    .end local v3           #rating:D
    .restart local v1       #rating:D
    invoke-virtual {p0, v5, v3, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 38
    const v5, 0x7f0a0011

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sub-double v3, v1, v9

    .end local v1           #rating:D
    .restart local v3       #rating:D
    invoke-virtual {p0, v5, v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 39
    const v5, 0x7f0a0012

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    sub-double v1, v3, v9

    .end local v3           #rating:D
    .restart local v1       #rating:D
    invoke-virtual {p0, v5, v3, v4}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 40
    const v5, 0x7f0a0013

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v1, v2}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->setRating(Landroid/widget/ImageView;D)V

    .line 42
    new-instance v5, Lcom/slideme/sam/manager/model/compatibility/Compatibility;

    invoke-direct {v5, v0, p0}, Lcom/slideme/sam/manager/model/compatibility/Compatibility;-><init>(Lcom/slideme/sam/manager/model/appstore/catalog/domain/Application;Landroid/app/Activity;)V

    .line 43
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->setTableText()V

    .line 44
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->setImages()V

    .line 45
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 139
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/bundle/CompatibilityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 145
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 146
    return-void
.end method
