.class public Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "HelpActivity.java"


# instance fields
.field private hasMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;->hasMenu:Z

    .line 9
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f030011

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;->setContentView(I)V

    .line 26
    const v1, 0x7f0a0077

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    .local v0, view:Landroid/widget/TextView;
    const v1, 0x7f0800c7

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 14
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 15
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;->hasMenu:Z

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;->addToMenu(Landroid/view/Menu;[I)V

    .line 17
    iput-boolean v1, p0, Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;->hasMenu:Z

    .line 20
    :cond_0
    return v1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 36
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/generic/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 42
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 43
    return-void
.end method
