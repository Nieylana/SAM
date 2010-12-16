.class public Lcom/slideme/sam/manager/controller/activities/SplashActivity;
.super Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;
.source "SplashActivity.java"


# static fields
.field private static final EULA_DIALOG:I = 0x1

.field private static final NO_INTERNET_CONNECTION:I = 0x2

.field public static final SDCARD_NOT_FOUND:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/SplashActivity;)Lcom/slideme/sam/manager/SAM;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->sam:Lcom/slideme/sam/manager/SAM;

    return-object v0
.end method


# virtual methods
.method public launch(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->sam:Lcom/slideme/sam/manager/SAM;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/SAM;->mkDirs()V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->sam:Lcom/slideme/sam/manager/SAM;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/SAM;->createIni()V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->sam:Lcom/slideme/sam/manager/SAM;

    invoke-virtual {v1}, Lcom/slideme/sam/manager/SAM;->isOnline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->showDialog(I)V

    .line 176
    :goto_0
    return-void

    .line 169
    :cond_1
    if-eqz p1, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->sendApproval()V

    .line 171
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/slideme/sam/manager/controller/activities/catalog/CatalogDisplayActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->setContentView(I)V

    .line 40
    const-string v0, "android.intent.action.REBOOT"

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    :cond_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->showDialog(I)V

    .line 53
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->sam:Lcom/slideme/sam/manager/SAM;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/SAM;->isFirstStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->showDialog(I)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->launch(Z)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0800c9

    const v10, 0x7f0800c8

    .line 63
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v9, v12

    .line 157
    :goto_0
    return-object v9

    .line 65
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, agreeBuilder:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f08001e

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 70
    .local v4, factory:Landroid/view/LayoutInflater;
    const v9, 0x7f030002

    invoke-virtual {v4, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 71
    .local v8, textEntryView:Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 73
    const v9, 0x7f0a0005

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 74
    .local v7, text:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v1, agreement:Ljava/lang/StringBuilder;
    const v9, 0x7f08001f

    invoke-virtual {p0, v9}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const v9, 0x7f080021

    invoke-virtual {p0, v9}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 79
    const v10, 0x7f080020

    invoke-virtual {p0, v10}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v9, 0x7f080056

    invoke-virtual {p0, v9}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 83
    new-instance v10, Lcom/slideme/sam/manager/controller/activities/SplashActivity$1;

    invoke-direct {v10, p0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity$1;-><init>(Lcom/slideme/sam/manager/controller/activities/SplashActivity;)V

    .line 82
    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    const v9, 0x7f080057

    invoke-virtual {p0, v9}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/slideme/sam/manager/controller/activities/SplashActivity$2;

    invoke-direct {v10, p0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity$2;-><init>(Lcom/slideme/sam/manager/controller/activities/SplashActivity;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto :goto_0

    .line 101
    .end local v0           #agreeBuilder:Landroid/app/AlertDialog$Builder;
    .end local v1           #agreement:Ljava/lang/StringBuilder;
    .end local v4           #factory:Landroid/view/LayoutInflater;
    .end local v7           #text:Landroid/widget/TextView;
    .end local v8           #textEntryView:Landroid/view/View;
    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 103
    .local v2, alert:Landroid/app/AlertDialog;
    const v9, 0x7f0800c2

    invoke-virtual {p0, v9}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0, v10}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 105
    new-instance v10, Lcom/slideme/sam/manager/controller/activities/SplashActivity$3;

    invoke-direct {v10, p0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity$3;-><init>(Lcom/slideme/sam/manager/controller/activities/SplashActivity;)V

    .line 104
    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    invoke-virtual {p0, v11}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 120
    new-instance v10, Lcom/slideme/sam/manager/controller/activities/SplashActivity$4;

    invoke-direct {v10, p0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity$4;-><init>(Lcom/slideme/sam/manager/controller/activities/SplashActivity;)V

    .line 119
    invoke-virtual {v2, v9, v10}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v9, v2

    .line 127
    goto/16 :goto_0

    .line 129
    .end local v2           #alert:Landroid/app/AlertDialog;
    .end local v3           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v6, internetBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 131
    .local v5, iAlert:Landroid/app/AlertDialog;
    const v9, 0x7f0800d1

    invoke-virtual {p0, v9}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0, v10}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 133
    new-instance v10, Lcom/slideme/sam/manager/controller/activities/SplashActivity$5;

    invoke-direct {v10, p0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity$5;-><init>(Lcom/slideme/sam/manager/controller/activities/SplashActivity;)V

    .line 132
    invoke-virtual {v5, v9, v10}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 147
    invoke-virtual {p0, v11}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 148
    new-instance v10, Lcom/slideme/sam/manager/controller/activities/SplashActivity$6;

    invoke-direct {v10, p0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity$6;-><init>(Lcom/slideme/sam/manager/controller/activities/SplashActivity;)V

    .line 147
    invoke-virtual {v5, v9, v10}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v9, v5

    .line 155
    goto/16 :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStart()V

    .line 239
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Lcom/slideme/sam/manager/controller/activities/generic/BaseActivity;->onStop()V

    .line 245
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 246
    return-void
.end method

.method public sendApproval()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$7;

    invoke-direct {v0, p0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity$7;-><init>(Lcom/slideme/sam/manager/controller/activities/SplashActivity;)V

    .line 233
    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity$7;->start()V

    .line 234
    return-void
.end method
