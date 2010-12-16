.class public Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;
.super Landroid/app/Activity;
.source "ProgressActivity.java"

# interfaces
.implements Lcom/slideme/sam/manager/model/event/Event$Notifier;


# static fields
.field public static final RESULT_ERROR:I = 0xa


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$1;-><init>(Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->handler:Landroid/os/Handler;

    .line 15
    return-void
.end method


# virtual methods
.method public getContext()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public notifyEvent(IILjava/lang/Object;)V
    .locals 1
    .parameter "requestCode"
    .parameter "code"
    .parameter "data"

    .prologue
    .line 60
    packed-switch p2, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->setContentView(I)V

    .line 25
    const-string v0, ""

    const v1, 0x7f0800bb

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->dialog:Landroid/app/ProgressDialog;

    .line 26
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 27
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->dialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$2;

    invoke-direct {v1, p0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity$2;-><init>(Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 32
    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 50
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->detachNotifier(Lcom/slideme/sam/manager/model/event/Event$Notifier;)V

    .line 51
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 53
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 108
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->finish()V

    .line 110
    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->moveTaskToBack(Z)Z

    move v0, v1

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 102
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->finish()V

    .line 104
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 94
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->setResult(I)V

    .line 95
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->finish()V

    .line 96
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->getInstance()Lcom/slideme/sam/manager/model/event/Event$Dispatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "RETAIN_LOADER"

    sget v3, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;->REQUEST_CODE:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/slideme/sam/manager/model/event/Event$Dispatcher;->attachNotifier(Lcom/slideme/sam/manager/model/event/Event$Notifier;I)V

    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 45
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/notification/ProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 39
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 40
    return-void
.end method
