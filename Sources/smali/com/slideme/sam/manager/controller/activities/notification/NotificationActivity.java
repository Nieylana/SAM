.class public Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "NotificationActivity.java"


# instance fields
.field private hasMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;->hasMenu:Z

    .line 14
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v5, 0x7f03001f

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;->setContentView(I)V

    .line 36
    const v5, 0x7f080038

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;->setTitle(I)V

    .line 39
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, i:Landroid/content/Intent;
    const-string v5, "TITLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, notifTitle:Ljava/lang/String;
    const-string v5, "CONTENT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, notifContent:Ljava/lang/String;
    const v5, 0x7f0a009e

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 44
    .local v4, title:Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v5, 0x7f0a009f

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, content:Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 20
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 21
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;->hasMenu:Z

    if-nez v0, :cond_0

    .line 22
    new-array v0, v3, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;->addToMenu(Landroid/view/Menu;[I)V

    .line 23
    iput-boolean v2, p0, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;->hasMenu:Z

    .line 26
    :cond_0
    return v2
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 53
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/notification/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 59
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 60
    return-void
.end method
