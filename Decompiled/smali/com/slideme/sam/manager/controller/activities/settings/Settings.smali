.class public Lcom/slideme/sam/manager/controller/activities/settings/Settings;
.super Landroid/app/TabActivity;
.source "Settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v4, 0x7f030029

    invoke-virtual {p0, v4}, Lcom/slideme/sam/manager/controller/activities/settings/Settings;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 19
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/Settings;->getTabHost()Landroid/widget/TabHost;

    move-result-object v3

    .line 23
    .local v3, tabHost:Landroid/widget/TabHost;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/slideme/sam/manager/controller/activities/settings/General;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 26
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "general"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const v5, 0x7f0800e8

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020008

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 29
    .local v2, spec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 38
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/slideme/sam/manager/controller/activities/settings/Networking;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const v5, 0x7f0800e9

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 40
    const v6, 0x7f02000a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 39
    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 41
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 43
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 45
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/slideme/sam/manager/controller/activities/settings/Debug;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 46
    const-string v4, "debug"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    const v5, 0x7f0800ea

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 47
    const v6, 0x7f020007

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 46
    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 48
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 49
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 52
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 54
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    .line 59
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 65
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 66
    return-void
.end method
