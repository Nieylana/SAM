.class public Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "NoResultsActivity.java"


# instance fields
.field private hasMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->hasMenu:Z

    .line 11
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    const v8, 0x7f080094

    const-string v7, " - "

    .line 17
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    .line 20
    .local v3, o:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, action:Ljava/lang/String;
    const-string v5, "UPDATE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 22
    const v5, 0x7f03001c

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->setContentView(I)V

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f080046

    invoke-virtual {p0, v6}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v5, "MY_DOWNLOADS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 25
    const v5, 0x7f03001d

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->setContentView(I)V

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f08004a

    invoke-virtual {p0, v6}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080035

    invoke-virtual {p0, v6}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 28
    :cond_1
    if-nez v3, :cond_2

    .line 30
    :goto_1
    sget-object v5, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->searchStack:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_3

    .line 32
    sget-object v5, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->searchStack:Ljava/util/LinkedList;

    invoke-virtual {v5, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v0           #a:Landroid/app/Activity;
    :cond_2
    const v5, 0x7f03001b

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->setContentView(I)V

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f080044

    invoke-virtual {p0, v6}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    const v5, 0x7f0a0091

    invoke-virtual {p0, v5}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 37
    .local v4, results:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "display"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 38
    .local v2, b:Z
    if-eqz v2, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f080092

    invoke-virtual {p0, v6}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "query"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 31
    .end local v2           #b:Z
    .end local v4           #results:Landroid/widget/TextView;
    .restart local v0       #a:Landroid/app/Activity;
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 38
    .end local v0           #a:Landroid/app/Activity;
    .restart local v2       #b:Z
    .restart local v4       #results:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {p0, v8}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 52
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 53
    iget-boolean v0, p0, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->hasMenu:Z

    if-nez v0, :cond_0

    .line 55
    new-array v0, v3, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v3, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->addToMenu(Landroid/view/Menu;[I)V

    .line 56
    iput-boolean v2, p0, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->hasMenu:Z

    .line 59
    :cond_0
    return v2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    const-string v0, "hehe"

    return-object v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 65
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/generic/NoResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 71
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 72
    return-void
.end method
