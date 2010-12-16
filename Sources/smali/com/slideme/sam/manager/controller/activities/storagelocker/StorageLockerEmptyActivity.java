.class public Lcom/slideme/sam/manager/controller/activities/storagelocker/StorageLockerEmptyActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "StorageLockerEmptyActivity.java"


# instance fields
.field private hasMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/storagelocker/StorageLockerEmptyActivity;->hasMenu:Z

    .line 12
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/storagelocker/StorageLockerEmptyActivity;->setContentView(I)V

    .line 19
    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/storagelocker/StorageLockerEmptyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/storagelocker/StorageLockerEmptyActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 32
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/storagelocker/StorageLockerEmptyActivity;->hasMenu:Z

    if-nez v0, :cond_0

    .line 34
    new-array v0, v3, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/slideme/sam/manager/controller/activities/storagelocker/StorageLockerEmptyActivity;->addToMenu(Landroid/view/Menu;[I)V

    .line 35
    iput-boolean v2, p0, Lcom/slideme/sam/manager/controller/activities/storagelocker/StorageLockerEmptyActivity;->hasMenu:Z

    .line 38
    :cond_0
    return v2
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 44
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/storagelocker/StorageLockerEmptyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 50
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 51
    return-void
.end method
